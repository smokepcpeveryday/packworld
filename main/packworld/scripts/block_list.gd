extends Node

#var dirt = preload("res://assets/blocks/dirt.tres")
#var grass = preload("res://assets/blocks/grass.tres")
#var stone = preload("res://assets/blocks/stone.tres")

const blocks = {
	0: {
		"name": "stone",
		"texture": "res://assets/blocks/stone.tres"
	},
	1: {
		"name": "dirt",
		"texture": "res://assets/blocks/dirt.tres"
	},
	2: {
		"name": "grass",
		"texture": "res://assets/blocks/grass.tres"
	}
}
	
func getblocktexture(blockid):
	var blocktexture = blocks.get(blockid)
	var texture = blocktexture.texture
	return texture
