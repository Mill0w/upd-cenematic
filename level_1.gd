extends Node2D

# Declaring the transition animation node.
@onready var transition = $Transition
var auto_mode = false
var manual_mode = false

# Called when the node enters the scene tree for the first time.
func _ready():
	transition.play("fade_in") # Play the transition animation when the node enters the scene
	auto_mode = true
	manual_mode = true

func _on_auto_pressed():
	if auto_mode:
		get_tree().change_scene_to_file("res://levels/level_1.tscn")# Replace with function body.

func _on_manual_pressed():
	if manual_mode:
		get_tree().change_scene_to_file("res://cutscene.tscn") # Replace with function body.

func _on_skip_pressed():
		transition.stop() # Stops the transition and goes to second scene
		get_tree().change_scene_to_file("res://levels/level_1.tscn")
			
func _on_fast_foward_pressed():
	transition.set_speed_scale(5.0) # Once it clicked the scene will Fast Forward
		
func _on_pause_cinematic_pressed():
	transition.pause() # Will pause the cinematic once clicked
									
func _process(_delta):
	set_process_input(true)
		
func _input(event):
# Skips the frame once it clicked
	if event is InputEventScreenTouch and event.pressed:
		print("Frame Skipped!")
