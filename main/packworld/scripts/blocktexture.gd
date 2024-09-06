extends MeshInstance3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func block_texture(blockid):
	var blocktexture:StandardMaterial3D = load(BlockList.getblocktexture(blockid))
	set_surface_override_material(0, blocktexture)
