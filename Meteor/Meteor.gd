extends Area2D

var speed = 4

func _physics_process(_delta):
	position.y += speed
	if position.y >= 1920:
		queue_free()

func _on_Meteor_body_entered(body):
	body.die()
