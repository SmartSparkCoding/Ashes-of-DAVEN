extends Node2D

# static so the score survives the scene change to the end screen
static var score = 0

func _ready() -> void:
	score = 0
	$Player/ScoreLabel.text = "Other Havens Eaten: " + str(score)

func add_point():
	score += 1
	$Player/ScoreLabel.text = "Other Havens Eaten: " + str(score)
