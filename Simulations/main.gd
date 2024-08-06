extends Node2D

@onready var sprite=$ColorRect/Sprite2D
@onready var particle=preload("res://particle1.tscn")
func _ready():
	for i in range(100):
		addParticle()
		await get_tree().create_timer(0.01).timeout
	set_process(false)
func _process(_delta):
	#addParticle()
	await get_tree().create_timer(0.3).timeout
func addParticle():
	var new_Particle=particle.instantiate()
	new_Particle.position=sprite.position+Vector2(100,100)
	new_Particle.pos=new_Particle.position
	$ColorRect.add_child(new_Particle)
	
