extends Node2D

var max_meteors = 4
var Meteor = load("res://Enemy/Enemy.tscn")
func _ready():
	randomize()

func _physics_process(_delta):
	if get_child_count() < max_meteors:
		if randf() < .01:
			var meteor = Meteor.instance()
			meteor.position.y = -100
			meteor.position.x = randi() % 1920
			add_child(meteor)
