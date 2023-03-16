extends Sprite

onready var viewport := get_viewport()
var type:String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



func _process(delta: float) -> void:
	position = viewport.get_mouse_position()
