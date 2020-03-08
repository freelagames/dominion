extends KinematicBody2D


const DOMINATION_TIMER = preload("res://objects/DominationTimer.tscn")
const SPEED = 500


var velocity = Vector2()
var timer = null

func _ready():
	set_process_input(true)

func _physics_process(delta):
	velocity = Vector2()
	if (Input.is_action_pressed('right')):
		velocity.x += SPEED
	elif Input.is_action_pressed('left'):
		velocity.x -= SPEED
	elif Input.is_action_pressed('down'):
		velocity.y += SPEED

	elif Input.is_action_pressed('up'):
		velocity.y -= SPEED
	else:
		velocity.y = 0	

	if timer and is_instance_valid(timer):
		print(str(timer.elapsed_time()))
	velocity = move_and_slide(velocity)

func create_domination_timer(spot):
	timer = DOMINATION_TIMER.instance()
	timer.setup(spot)

func destroy_domination_timer():
	print(str(timer.elapsed_time()))
	timer.queue_free()
