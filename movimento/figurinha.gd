extends Sprite2D

@export var velocidade = 2;

func mover():
	position.x += velocidade;
	position.y += velocidade;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.x = 500;
	position.y = 300;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	mover()
