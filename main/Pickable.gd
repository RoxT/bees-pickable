tool
extends TextureButton

class_name Pickable, "res://textures/vegetation_strawberry_03-export.png"

export(String) var type
signal please_add_child(node)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("button_down", self, "_on_TextureButton_button_down")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass

func _get_configuration_warning() -> String:
	if not type: return "Pickable requires a type"
	if not texture_normal: return "Normal texture must be added"
	return ""

func _on_TextureButton_button_down() -> void:
	var dragable := preload("res://Dragable.tscn").instance()
	dragable.texture = texture_normal
	dragable.type = type
	
	emit_signal("please_add_child", dragable)
	
