extends CharacterBody3D

# How fast the player moves in meters per second.
@export var speed = 14
# The downward acceleration when in the air, in meters per second squared.
@export var fall_acceleration = 7
@export var jump_height = 4

var target_velocity = Vector3.ZERO

func _ready():
	position.z = 0
	pass
	
func _physics_process(delta):
	print(position)
	var direction = Vector3.ZERO
	var zpos = position.z
	if Input.is_action_pressed("move_right"):
		direction.x += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_just_released("move_back"):
		if zpos <= 1:
			position.z += 1
	if Input.is_action_just_released("move_forward"):
		if zpos >= 1:
			position.z -= 1
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		target_velocity.y = jump_height
	if direction != Vector3.ZERO:
		direction = direction.normalized()

	#if Input.is_action_pressed("click_left"):
		#if 
	# Ground Velocity
	target_velocity.x = direction.x * speed
	target_velocity.z = direction.z * speed

	# Vertical Velocity
	if not is_on_floor(): # If in the air, fall towards the floor. Literally gravity
		target_velocity.y = target_velocity.y - (fall_acceleration * delta)

	# Moving the Character
	velocity = target_velocity
	move_and_slide()
