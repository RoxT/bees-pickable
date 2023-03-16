extends Area2D

onready var sprite := $Sprite
onready var scout := $Scout

var target
const SPEED = 300
const X := 1024.0
const Y := 600.0

var home := Vector2(519, 0)


func _ready() -> void:
	connect("area_entered", self, "_on_Area2D_entered")
	scout.connect("area_entered", self, "_on_Scout_Area2D_entered")

func _process(delta: float) -> void:
	if target:
		position = position.move_toward(target, delta * SPEED)
		if position.distance_to(target) < 1:
			target = null
			
	else:
		target = Vector2(
			clamp(position.x + rand_range(-300.0, 300.0), 0, X),
			clamp(position.y + rand_range(-300.0, 300.0), 0, Y)
		)

func _on_Area2D_entered(area:Area2D):
	if sprite.frame == 0 and area.is_in_group("flower") and area._is_ready():
		sprite.frame = 1
		area._play_recover()
		target = home
		
func _on_Scout_Area2D_entered(area:Area2D):
	if sprite.frame == 0 and area.is_in_group("flower"):
		target = area.position


func _on_Lifespan_timeout() -> void:
	queue_free()
