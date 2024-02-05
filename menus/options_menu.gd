extends Control


func _on_back_pressed():
	get_tree().change_scene_to_file("res://menus/main_menu.tscn")


func _on_h_slider_value_changed(_value):
	pass


func _on_sfx_button_pressed():
	$sfx.play()


func _on_ambience_button_pressed():
	$ambience.play()
