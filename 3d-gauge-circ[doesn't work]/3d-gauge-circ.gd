extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var drawing 
var material
# Called when the node enters the scene tree for the first time.
func _ready():
	# Clear the viewport.
	var viewport = $Viewport
	$Viewport.set_clear_mode(Viewport.CLEAR_MODE_ALWAYS)

	material = SpatialMaterial.new()
	
	drawing = $Viewport/Node2D
	# Let two frames pass to make sure the vieport is captured.
	yield(get_tree(), "idle_frame")
	yield(get_tree(), "idle_frame")
	# Retrieve the texture and set it to the viewport quad.
	material.albedo_texture = viewport.get_texture()
	$gauge_infill.material_override = material


#initialize a gauge value drawing
func create_gauge(minValue,maxValue,value):
	drawing.setMinMaxValue(minValue,maxValue,value)
#update a gauge value drawing
func update_gauge(value):
	drawing.setValue(value)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
