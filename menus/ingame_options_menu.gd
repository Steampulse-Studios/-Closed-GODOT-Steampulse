extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_back_to_game_pressed():
	get_tree().change_scene_to_file("res://maps/level one map.tscn")


func _on_button_pressed():
	get_tree().change_scene_to_file("res://menus/main_menu.tscn")


func _on_sfx_button_pressed():
	$sfx.play()


func _on_ambience_button_pressed():
	$ambience.play()
