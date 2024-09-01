extends Node3D

var block = preload("res://block.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var noise = FastNoiseLite.new()
	noise.seed = randi()
	noise.noise_type = FastNoiseLite.TYPE_PERLIN
	noise.cellular_jitter = 0
	for x in range(100):
		for y in range(100):
			for z in range(3):
				var y_noise = noise.get_noise_2d(x, y)*10000
				var y_spread = round(y_noise)
				var x_noise = noise.get_noise_1d(x)*100
				var x_spread = round(x_noise)
				print(y_noise)
				inst(Vector3(x_spread,y_spread,z))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func inst(pos):
	var instance = block.instantiate()
	instance.position = pos
	add_child(instance)
