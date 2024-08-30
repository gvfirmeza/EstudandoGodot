extends Node2D

@export var num = 3;
var imprimiu = false;

const plat = preload("res://Plataforma.tscn");
var uma_plat

func _ready() -> void:
	print_debug("Começo essa josa");
	
	var tamanho = 128
	var contador = 0
	
	while contador < 22:
		uma_plat = plat.instantiate();
		uma_plat.position.y = 600;
		uma_plat.position.x = tamanho * (contador + 1) - 64;
		self.add_child(uma_plat);
		contador += 1;

	var linha2 = [
		0,0,0,1,1,1,
		1,1,1,1,1,1,
		1,1,1,1,1,1,
		1,1,1,1,1,1,
	]

	contador = 0;
	for i in linha2:
		if i == 1:
			uma_plat = plat.instantiate();
			uma_plat.position.y = 300;
			uma_plat.position.x = tamanho * (contador + 1) - 150;
			self.add_child(uma_plat);
		contador += 1;

func _process(delta: float) -> void:
	if num > 5 and not imprimiu:
		print_debug('Num aumento');
		imprimiu = true;
