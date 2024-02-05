extends CharacterBody2D

@export var speed = 60

var target = position

func _input(event):
	if event.is_action_pressed("MMB"):
		target = get_global_mouse_position()

func _physics_process(_delta):
	velocity = position.direction_to(target) * speed
	#look_at(target)
	if position.distance_to(target) > 5:
		move_and_slide()
