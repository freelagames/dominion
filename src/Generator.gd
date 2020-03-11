extends Position2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var minionComponent = preload("res://objects/Minion.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	print("timer")
	var minion = minionComponent.instance()
	minion.apply_impulse(Vector2(),Vector2(rand_range(-30,30), rand_range(-30,30)))
	get_owner().add_child(minion)
	pass # Replace with function body.
