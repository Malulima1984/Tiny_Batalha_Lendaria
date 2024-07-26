extends Node


@export var speed: float = 1

var enemy: Enemy
var sprite: AnimatedSprite2D

func _ready():
	enemy = get_parent()
	sprite = enemy.get_node("AnimatedSprite2D")  


func _physics_process(_delta: float) -> void:
	#Ignorar gameover
	if GameMananger.is_game_over: return
	
	#Calcular 
	var player_position = GameMananger.player_position
	var differece = player_position - enemy.position
	var input_vector = differece.normalized()

	enemy.velocity =input_vector * speed * 100.0
	enemy.move_and_slide()
	
	#Girar Sprite
	if input_vector.x > 0:
		sprite.flip_h = false
		#desmarcar flip_h do sprite2D
	elif input_vector.x < 0:
		sprite.flip_h = true
		#marcar flip_h do Sprite2D
