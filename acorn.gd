extends Area2D

@onready var jump_sound: AudioStreamPlayer2D = $"../AudioStreamPlayer2D"

func _on_body_entered(body):
	if body.name == "Player":
		get_tree().current_scene.add_point()
		jump_sound.play()
		respawn()

func respawn():
	hide()
	set_deferred("monitoring", false)
	
	var wait_time = randf_range(5.0, 20.0)
	await get_tree().create_timer(wait_time).timeout
	
	show()
	monitoring = true
