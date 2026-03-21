extends Node2D

@onready var startingPlace = "res://Yay_Norse.tscn"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_yay_button_button_up() -> void:
	get_tree().change_scene_to_file(startingPlace)

func _on_yay_button_2_button_up() -> void:
	get_tree().change_scene_to_file(startingPlace)


func _on_yay_button_3_button_up() -> void:
	get_tree().change_scene_to_file(startingPlace)


func _on_alt_yay_pressed() -> void:
	get_tree().change_scene_to_file(startingPlace)


func _on_alt_yay_2_pressed() -> void:
	get_tree().change_scene_to_file(startingPlace)
