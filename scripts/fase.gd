extends Node2D

var pre_enemy = preload("res://scenas/enemy.tscn")
var tempo = 0
onready var pontos = $pontos
export var score = 0




func _ready():
	pass 

func _process(delta):
	pontos.text = "Pontos: " + str(score)
	
	
	tempo = tempo + delta
	if tempo > rand_range(.5,1.5):
		spawn_enemy()
		tempo = 0
	pass

func spawn_enemy():
	var e = pre_enemy.instance()
	e.position = Vector2(1030,rand_range(50,600))
	add_child(e)
	
