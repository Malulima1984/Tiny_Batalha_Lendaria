extends Node2D

@export var game_ui: CanvasLayer
@export var game_over_ui_template: PackedScene

func _ready():
	GameMananger.game_over.connect(trigger_game_over)

func trigger_game_over():
	#Deletar gameUI
	if game_ui:
		game_ui.queue_free()
		game_ui = null
	
	#Criar GameOverUI
	var game_over_ui: GameOverUI = game_over_ui_template.instantiate()
	add_child(game_over_ui)
	
	
