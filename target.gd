extends Node2D

class_name Target



@export var alive: bool
var delay: float = 10.0
var shot: bool = false
var time = 0
var alive_time = 3


func _ready():
	spawn_target()

func remove_target():
	alive = false
	visible = false
	shot = false
	time = 0
	queue_free()

func spawn_target():
	alive = true
	visible = true
	shot = false

func _process(delta: float) -> void:
	if shot:
		remove_target()
	time += delta
	if time > alive_time and alive == true:
		remove_target()


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("click"):
		shot = true
