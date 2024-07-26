extends CanvasLayer

@onready var timer_label = %"TimerLabel"
@onready var meat_label: Label = %"MeatLabel"


func _process(_delta: float):
#Update labels
	timer_label.text = GameMananger.time_elapsed_string
	meat_label.text = str(GameMananger.meat_counter)

