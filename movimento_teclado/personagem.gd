extends CharacterBody2D

@export var velocidade = 400.0
@export var gravidade = 800.0
@export var pulo = -600.0

func _physics_process(delta: float) -> void:
	velocity.y += delta * gravidade;
	
	# Movimento Vertical
	if Input.is_action_pressed("ui_left"):
		velocity.x = -velocidade;
	elif Input.is_action_pressed("ui_right"):
		velocity.x = +velocidade;
	else:
		velocity.x = 0;

	# Pulo
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = pulo;

	move_and_slide();
