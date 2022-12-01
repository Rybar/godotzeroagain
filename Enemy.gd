extends KinematicBody2D

var motion = Vector2()

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var Player = get_parent().get_node("Player")
	position += (Player.position - position)/50
	look_at(Player.position)
	
	move_and_collide(motion)


func _on_Area2D_body_entered(body):
	if "Bullet" in body.name:
		queue_free()
		body.kill()
