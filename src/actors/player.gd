extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export (int) var speed = 200

var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_input(true)
	pass # Replace with function body.

func _input(event):
	print(event)
	velocity = Vector2()
	if (event.is_action_pressed('ui_right', true)):
		velocity.x += 1
	if event.is_action_pressed('ui_left', true):
		velocity.x -= 1
	if event.is_action_pressed('ui_down', true):
		velocity.y += 1
	if event.is_action_pressed('ui_up', true):
		velocity.y -= 1
	velocity = velocity.normalized() * speed
	velocity = move_and_slide(velocity)
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
