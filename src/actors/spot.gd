extends Area2D

func _on_Spot_body_entered(body):
	#body.create_domination_timer(self)
	pass


func _on_Spot_body_exited(body):
	#body.destroy_domination_timer()
	pass

func _on_DominationTimer_dominated():
	print("!teste")
	$TextureRect.modulate = Color(0, 0, 1)

