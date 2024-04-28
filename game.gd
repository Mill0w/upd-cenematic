extends Node2D

# Declaring the transition animation node.
@onready var transition = $Transition

# Preload the level scene.
var level1 = preload("res://levels/level_1.tscn")

func _on_play_pressed():
	# Play the transition animation.
	
	transition.play("fade_out")
	# After the animation finishes, `_on_transition_animation_finished` will be called.
	
# Function called when the transition animation finished.
func _on_transition_animation_finished(_anim_name):
	
	# Change the scene to the preloaded level.
	get_tree().change_scene_to_packed(level1)

func _on_exit_pressed():
	get_tree().quit() 
	# will exit the game once it pressed.
	
func _on_skip_pressed():
		transition.stop() # Stops the transition and goes to second scene
		get_tree().change_scene_to_file("res://levels/level_1.tscn")
	
func _on_fast_foward_pressed():
	transition.set_speed_scale(5.0) # Once it clicked the scene will Fast Forward
	
func _on_pause_cinematic_pressed():
	transition.pause() # Will pause the cinematic once clicked
	
func _ready():
	set_process_input(true)
	
func _input(event):
	# Skips the frame once it clicked
		if event is InputEventScreenTouch and event.pressed:
			print("Frame Skipped!")

func _on_auto_pressed():
	pass # Replace with function body.
	
func _on_manual_pressed():
	pass # Replace with function body.
