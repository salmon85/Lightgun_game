extends Node2D

class_name Level_scene

var target = preload("res://target.tscn")

var random = RandomNumberGenerator.new()

func _on_target_spawn_timer_timeout():
	
	var target_instance = target.instantiate()
	add_child(target_instance)
	var randomx = random.randi_range(128, get_viewport().size.x - 128)
	var randomy = random.randi_range(128, get_viewport().size.y - 128)
	target_instance.position = Vector2(randomx,randomy)

