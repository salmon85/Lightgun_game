extends Node2D
func _ready():
	set_process(true)

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("escape"):
		get_tree().quit()
