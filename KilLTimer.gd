extends Node

class_name KillTimer

var time := 0.0
var kill_time := 0.0
var kill_node : Node

func _process(delta:float)->void:
	time += delta
	if time >= kill_time:
		kill_node.queue_free()
	
func _init(node:Node, time:float)->void:
	kill_time = time
	kill_node = node
	node.add_child(self)
