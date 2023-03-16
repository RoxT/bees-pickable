extends Node2D


onready var Bee := preload("res://Bee.tscn")
onready var Flower := preload("res://Flower.tscn")

onready var canvas := $CanvasLayer
onready var home := $Home

var bee_count := 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	home.connect("area_entered", self, "_on_Home_Area2d_entered")
	var bee1 := Bee.instance()
	bee1.position = home.position
	add_child(bee1)
	bee1.home = home.position
	bee1.get_node("Lifespan").stop()

func _on_Home_Area2d_entered(area:Area2D):
	#Creat a new bee
	if area.is_in_group("bee") and area.sprite.frame == 1:
		area.queue_free()
		make_bee()
		make_bee()

func make_bee():
	var bee1 := Bee.instance()
	bee1.position = home.position
	
	call_deferred("add_child", bee1)
	bee1.home = home.position
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
func _input(event):
	if not event is InputEventMouseMotion:
		print(event.as_text())
				 
		# Create new plant
		if event is InputEventMouseButton and not event.is_pressed() and canvas.draggable:
			var area := Flower.instance()
			var shape := CollisionShape2D.new()
			var rect := RectangleShape2D.new()
			var sprite = area.get_node("Sprite")
			sprite.texture = canvas.draggable.texture
			rect.extents = sprite.texture.get_size()/2
			shape.shape = rect
			area.global_position = canvas.draggable.global_position
			area.add_child(shape)
			print(canvas.draggable.get_groups()[0])
			area.add_to_group(canvas.draggable.type)
			print(area.get_groups())
			
			add_child(area)
			canvas.draggable.queue_free()
			canvas.draggable = null
		
				
				
