extends CanvasLayer


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
var draggable:Sprite

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for p in $Panel/VSplitContainer.get_children():
		if p is Pickable:
			p.connect("please_add_child", self , "_on_please_add_child")



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
func _on_please_add_child(node:Node):
	draggable = node
	add_child(node)
