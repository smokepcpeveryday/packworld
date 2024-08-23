extends MeshInstance3D

@export var mat:StandardMaterial3D
@export var stone:Texture2D
@export var dirt:Texture2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	mat.albedo_texture=stone


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
