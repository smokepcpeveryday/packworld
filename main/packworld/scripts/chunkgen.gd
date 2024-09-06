extends Node3D
# Called when the node enters the scene tree for the first time.
signal blocktextureidsignal(blockid)
var block = preload("res://assets/blocks/block.tscn")

func _ready():
	genchunk(64)
	pass
	
func _process(delta: float) -> void:
	#var playerpos = $Player.position
	#var playerchunk = round(playerpos/16)
	#print(playerchunk)
	pass

func genchunk(chunkrange):
	var noise = FastNoiseLite.new()
	noise.seed = randi()
	noise.noise_type = FastNoiseLite.TYPE_PERLIN
	noise.cellular_jitter = 0
#	for every x y and z in the chunkrange
	for x in range(chunkrange):
		for y in range(chunkrange):
			for z in range(3):
				var o_noise = noise.get_noise_3d(x, y, z)*100
				if y >= 6:
					if o_noise > 0.09:
						inst(Vector3(x,y,z), 1)
				if y < 6:
					if o_noise > 0.09:
						inst(Vector3(x,y,z), 0)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func inst(pos, blockid):
#	instantiate block
	var blockinstance = block.instantiate()
	#	send pos to block
	blockinstance.position = pos
	#	send texture to blocktexture
	blockinstance.block_id = blockid
	add_child(blockinstance)
