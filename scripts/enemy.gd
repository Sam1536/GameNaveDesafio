extends Area2D
var pre_explosao = preload("res://scenas/explosao.tscn")
var vel = rand_range(300,800)

func _ready():
	pass 



func _process(delta):
	position.x -= vel * delta
	if position.x < 0:
		queue_free()
	

func _on_enemy_area_entered(area):
	if area.is_in_group("tiro"):
		Explosao()
		Pontos()
		queue_free()
		area.queue_free()

func Explosao():
	var e = pre_explosao.instance()
	e.position = position
	get_parent().add_child(e)
	
func Pontos():
	get_parent().score += 3
	

func _on_enemy_body_entered(body):
	if Area2D.collision_layer == 2:
		queue_free()	
