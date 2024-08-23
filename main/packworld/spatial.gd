extends Node3D

var block = preload("res://block.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	for n in range(8):
		print(n)
		inst(Vector3(n,1,0))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func inst(pos):
	var instance = block.instantiate()
	instance.position = pos
	add_child(instance)
