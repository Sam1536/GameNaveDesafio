extends AnimatedSprite


func _ready():
	play()


func _on_explosao_animation_finished():
	queue_free()
