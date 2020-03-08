extends Node

const DOMINATE_TIME = 2
var start_time = null

signal dominated

func _init():
	start_time = OS.get_ticks_msec()
	set_process(true)

func setup(spot):
	connect("dominated", spot, "_on_DominationTimer_dominated")

func elapsed_time():
	var time = OS.get_ticks_msec() - start_time
	return time / 1000

func _notification(what):
	if what == NOTIFICATION_PREDELETE: 
		if elapsed_time() > DOMINATE_TIME:
			emit_signal("dominated")
		pass
