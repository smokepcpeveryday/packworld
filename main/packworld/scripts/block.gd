extends StaticBody3D

@export var block_id:int


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var blockmesh = $blockmesh
	blockmesh.block_texture(block_id)
	print(block_id)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
