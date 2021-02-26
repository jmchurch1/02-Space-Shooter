extends KinematicBody2D

var speed = .3
var velocity = Vector2.ZERO
var enemies = []

func _ready():
	pass

func _physics_process(_delta):
	position += velocity
	velocity.x += speed


func _on_Bullet1_body_entered(body):
	body.die()
	queue_free()


func _on_Timer_timeout():
	for e in enemies:
		e.die()
	queue_free()


func _on_Area2D_body_entered(body):
	enemies.append(body)


func _on_Area2D_body_exited(body):
	for e in enemies:
		if body.name == e.name:
			enemies.erase(e)
