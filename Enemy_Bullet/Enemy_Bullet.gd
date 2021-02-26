extends Area2D

var speed = 1
var velocity = Vector2.ZERO


func _ready():
	pass

func _physics_process(_delta):
	position += velocity
	velocity.y += speed





func _on_Enemy_Bullet_body_entered(body):
	body.die()
	queue_free()
