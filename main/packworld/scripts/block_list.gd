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

#signal blockidsignal(blockid)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func getblocktexture(blockid):
	var blocktexture = blocks.get(blockid)
	var texture = blocktexture.texture
	return texture
