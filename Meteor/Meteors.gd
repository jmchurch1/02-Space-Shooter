extends Node2D

var max_meteors = 7
var Meteor = load("res://Meteor/Meteor.tscn")
func _ready():
	randomize()

func _physics_process(_delta):
	if get_child_count() < max_meteors:
		if randf() < .01:
			var meteor = Meteor.instance()
			meteor.position.y = -150
			meteor.position.x = randi() % 1920
			add_child(meteor)
			
