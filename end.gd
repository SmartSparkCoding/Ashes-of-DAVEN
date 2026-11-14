extends Control

const MainScript = preload("res://main.gd")

@onready var score_label: Label = $CenterContainer/VBoxContainer/ScoreLabel
@onready var restart_button: Button = $CenterContainer/VBoxContainer/RestartButton

func _ready() -> void:
	score_label.text = "Final Amount of Evil Daven's Killed: " + str(MainScript.score)
	restart_button.pressed.connect(_on_restart_pressed)

func update_score(score: int) -> void:
	score_label.text = "Final Amount of Evil Daven's Killed: " + str(score)

func _on_restart_pressed() -> void:
	MainScript.score = 0
	get_tree().change_scene_to_file("res://main.tscn")
