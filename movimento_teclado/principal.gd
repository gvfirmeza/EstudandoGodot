extends Node2D

@export var num = 3;
var imprimiu = false;

func _ready() -> void:
	print_debug("Começo essa josa");

func _process(delta: float) -> void:
	if num > 5 and not imprimiu:
		print_debug('Num aumento');
		imprimiu = true;
