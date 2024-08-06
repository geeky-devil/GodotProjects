extends Sprite2D

var vSpeed=randf_range(1,3)
var time=randf_range(1,3)
var tween
var pos=Vector2.ZERO
var reds=[Color(255,1,0),Color(125,1,0),Color(50,0,0),Color(100,1,0)]
var cyan=Color(0,255,10)
var green=Color(0,255,0)
var yellow=Color(255,255,0)
var colors=[cyan,green,yellow]
func _ready():
	global_position.x+=randf_range(-50,50)
	tween=create_tween()
	tween.set_parallel(true)
	tween.connect("finished",Callable(self,"reset"))
	tween.stop()
	tween.tween_property(self,"modulate:a",0,time)
	tween.play()
func _process(_delta):
	global_position.y-=vSpeed
	#global_position.x+=randf_range(-2,2) wavy effect
func reset():
	tween.stop()
	global_position.y=pos.y
	#self.modulate=Color(255+randi_range(-255,0),125+randi_range(-125,125),0)
	#self.modulate=reds[randi_range(0,2)]
	self.modulate=Color(255,255,255)
	self.modulate.a=1
	vSpeed=randf_range(1,3)
	time=randf_range(1,3)
	tween.play()

