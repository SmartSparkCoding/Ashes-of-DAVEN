extends CharacterBody2D

const SPEED = 300.0

@onready var anim = $AnimatedSprite2D

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * SPEED
	anim.play("default")
	move_and_slide()
