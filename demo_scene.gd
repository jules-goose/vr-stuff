extends Spatial


# Declare member variables here. Examples:
var gloworb = preload("res://gloworbs/gloworb.tscn")
var gloworb1
var gloworb2
var gloworb3
# Called when the node enters the scene tree for the first time.
func _ready():
	var pos1 = $pos1
	var pos2 = $pos2
	var pos3 = $pos3

	gloworb1 = gloworb.instance()
	gloworb2 = gloworb.instance()
	gloworb3 = gloworb.instance()

	pos1.add_child(gloworb1)
	pos2.add_child(gloworb2)
	pos3.add_child(gloworb3)

	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	gloworb1.colorstring ="#ff0000"
	gloworb2.colorstring ="#00ff00"
	gloworb3.colorstring ="#0000ff"
	pass
