extends TextureButton

@onready var counter_display = $"../Label2"
@onready var currentScene = get_tree().current_scene.scene_file_path
var count = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:	
	counter_display.text = str(count)
	
	if currentScene != "res://Yay_Klingon.tscn":
		if count > 10:
			count = 10

func _on_pressed() -> void:
	$"../Alex_Sound".play()
	count += 1

func _on_next_button_pressed() -> void:
	if currentScene == "res://Yay_Norse.tscn" and counter_display.text == "10":
		get_tree().change_scene_to_file("res://Yay_Old English.tscn")
	if currentScene == "res://Yay_Old English.tscn" and counter_display.text == "10":
		get_tree().change_scene_to_file("res://Yay_Middle English.tscn")
	if currentScene == "res://Yay_Middle English.tscn" and counter_display.text == "10":
		get_tree().change_scene_to_file("res://Yay_English.tscn")
	if currentScene == "res://Yay_English.tscn" and counter_display.text == "10":
		get_tree().change_scene_to_file("res://Yay_Klingon.tscn")
