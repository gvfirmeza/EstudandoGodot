extends CharacterBody2D

@export var SPEED = 300.0

func get_input():
	var direcao = Input.get_vector("ui_left","ui_right","ui_up","ui_down");
	velocity= direcao * SPEED; 

func _physics_process(delta: float) -> void:
	get_input();
	move_and_slide();
