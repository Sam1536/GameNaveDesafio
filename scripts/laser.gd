extends Area2D

var vel =  400


func _ready():
	pass


func _physics_process(delta):
	position.x += vel * delta 
	
	if position.x > 1025:
		queue_free()
