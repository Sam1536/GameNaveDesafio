extends KinematicBody2D

var pre_leser = preload("res://scenas/laser.tscn")

func _ready():
	pass


func _process(delta):
	var vel = 400
	var dir = Vector2()
	
	
	if Input.is_action_pressed("ui_left") and position.x > 32:
	   dir.x = -1
	
	if Input.is_action_pressed("ui_right") and position.x < 995:
	   dir.x = 1
	
	if Input.is_action_pressed("ui_up") and position.y > 25:
	   dir.y = -1
	 
	if Input.is_action_pressed("ui_down") and position.y < 570:
	   dir.y = 1
	   
	move_and_slide(vel * dir)
	
func _input(event):
	if Input.is_action_just_pressed("ui_accept") and get_tree().get_nodes_in_group("tiro").size() < 4:
		Laser()
		Laser2()
	 
func Laser():
	var l = pre_leser.instance()
	l.position = $pos.global_position
	get_parent().add_child(l)
	l.add_to_group("tiro")
	
func Laser2():	
	var l = pre_leser.instance()
	l.position = $pos2.global_position
	get_parent().add_child(l)
	l.add_to_group("tiro")
