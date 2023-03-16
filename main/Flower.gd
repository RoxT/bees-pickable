extends Area2D


func _ready() -> void:
	pass

func _play_recover():
	$AnimationPlayer.play("Recover")

func _is_ready() -> bool:
	return not $AnimationPlayer.get_current_animation() == "Recover"
