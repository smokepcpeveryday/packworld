extends Node

var block = preload("res://assets/blocks/block.tscn")

const blocks = {
	"stone": {
		"name": "stone",
		"texture": "res://assets/blocks/stone.tres"
	},
	"dirt": {
		"name": "dirt",
		"texture": "res://assets/blocks/dirt.tres"
	},
	"grass": {
		"name": "grass",
		"texture": "res://assets/blocks/grass.tres"
	}
}
	
func blocktexture(blockid):
	return blocks.get(blockid).texture

func inst(pos, blockid):
#	instantiate block
	var blockinstance = block.instantiate()
	#	send pos to block
	blockinstance.position = pos
	#	send texture to blocktexture
	blockinstance.block_id = blockid
	add_child(blockinstance)
