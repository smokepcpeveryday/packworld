extends Node3D
# Called when the node enters the scene tree for the first time.

func _ready():
	genchunks(64)
	pass
	
func _process(delta: float) -> void:
	var playerpos = $Player2.position
	var playerchunk = round(playerpos/16)
	print(playerchunk)
	pass

func genchunks(chunkrange):
	var noise = FastNoiseLite.new()
	noise.seed = randi()
	noise.noise_type = FastNoiseLite.TYPE_PERLIN
	noise.cellular_jitter = 0
	for x in range(chunkrange):
		for y in range(chunkrange):
			for z in range(3):
				var o_noise = noise.get_noise_3d(x, y, z)*100
				if o_noise > 0.09:
					inst(Vector3(x,y,z), dirt)
				
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func inst(pos, blockid):
#	instantiate block
	var block = "res://assets/blocks/block.tscn"
	var instance = block.instantiate()
	instance.position = pos
	add_child(instance)
#	send texture to blocktexture
	#blockidsignal.emit(blockid)
