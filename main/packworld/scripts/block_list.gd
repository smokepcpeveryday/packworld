extends Node

var dirt = preload("res://assets/blocks/dirt.tres")
var grass = preload("res://assets/blocks/grass.tres")
var stone = preload("res://assets/blocks/stone.tres")

signal blockidsignal(blockid)

var blockid = [dirt, grass, stone]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func getblockid():
	
	pass
