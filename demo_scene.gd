extends Spatial


# Declare member variables here. Examples:
var gloworb = preload("res://gloworbs/gloworb.tscn")
var gauge = load("res://3d-gauge-circ/3d-gauge-circ.tscn")
var gloworb1
var gloworb2
var gloworb3
var gauge1
var gauge2
var gauge3
# Called when the node enters the scene tree for the first time.
func _ready():
	var pos1 = $pos1
	var pos2 = $pos2
	var pos3 = $pos3

	gauge1 = gauge.instance()
	gauge2 = gauge.instance()
	gauge3 = gauge.instance()

	gloworb1 = gloworb.instance()
	gloworb2 = gloworb.instance()
	gloworb3 = gloworb.instance()

	pos1.add_child(gauge1)
	pos2.add_child(gauge2)
	pos3.add_child(gauge3)

	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	gauge1.update_gauge(25)
	gauge2.update_gauge(50)
	gauge3.update_gauge(75)
	gloworb1.colorstring ="#ff0000"
	gloworb2.colorstring ="#00ff00"
	gloworb3.colorstring ="#0000ff"
	pass
