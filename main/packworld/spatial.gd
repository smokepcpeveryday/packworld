extends Node3D

var block = preload("res://block.tscn")
var noise = FastNoiseLite.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	for x in range(8):
		for y in range(8):
			var noise_height = noise.get_noise_1d(y)*100
			var y_spread = round(noise_height)
			print(noise_height)
			inst(Vector3(y,y_spread,0))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func inst(pos):
	var instance = block.instantiate()
	instance.position = pos
	add_child(instance)
