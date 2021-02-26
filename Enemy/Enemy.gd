extends KinematicBody2D

var speed = 2
var ready_to_move = true

func _ready():
	randomize()

func _physics_process(_delta):
	pass

func die():
	Global.score += 50
	queue_free()


func _on_Shoot_timeout():
	if randf() < 0.2 and position.y > 0:
		var bullet1 = load("res://Enemy_Bullet/Enemy_Bullet.tscn")
		var bullet = bullet1.instance()
		add_child_below_node(get_tree().get_root().get_node("Level1"), bullet)


func _on_Move_timeout():
	var new_position = Vector2(randi() % 1920,randi() % 300)
	$Tween.interpolate_property(self, "position", position, new_position, speed, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween.start()
	position = new_position
