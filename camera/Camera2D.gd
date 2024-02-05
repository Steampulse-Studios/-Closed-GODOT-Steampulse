extends CharacterBody2D

var speed = 1
var animation_player : AnimationPlayer

var direction_mapping := {
	"ui_right": { "velocity": Vector2(1, 0), "animation": "walk_E" },
	"ui_left": { "velocity": Vector2(-1, 0), "animation": "walk_V" },
	"ui_down": { "velocity": Vector2(0, 1), "animation": "walk_S" },
	"ui_up": { "velocity": Vector2(0, -1), "animation": "walk_N" },
}

func _ready():
	animation_player = $Slime/walk

func _process(delta):
	velocity = Vector2() 
	
	for action in direction_mapping.keys():
		if Input.is_action_pressed(action):
			velocity += direction_mapping[action]["velocity"]
			animation_player.play(direction_mapping[action]["animation"])
	
	if abs(velocity.x) > abs(velocity.y):
		velocity.y = 0
	else:
		velocity.x = 0

	velocity = velocity.normalized() * speed

	move_and_slide()
