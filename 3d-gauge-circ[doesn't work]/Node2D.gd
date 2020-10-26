extends Node2D

var value =0;
var minValue =0 ;
var maxValue =100;

func _draw():
	# min : 293 max : 67
	#testing, to be removed
	
	# param set for the draw_circle_arc_poly
	var center = Vector2(100, 100)
	var radius = 100
	var angle_from = 293
	var angle_to = 0-map(value,minValue,maxValue,-293,-67)
	print(angle_to)
	var color = Color(1.0, 0.0, 0.0)
	draw_circle_arc_poly(center, radius, angle_from, angle_to, color)

func draw_circle_arc_poly(center, radius, angle_from, angle_to, color):
		var nb_points = 32
		var points_arc = PoolVector2Array()
		points_arc.push_back(center)
		var colors = PoolColorArray([color])
	
		for i in range(nb_points + 1):
			var angle_point = deg2rad(angle_from + i * (angle_to - angle_from) / nb_points - 90)
			points_arc.push_back(center + Vector2(cos(angle_point), sin(angle_point)) * radius)
		draw_polygon(points_arc, colors)

func _process(delta):
	update()
#set a new value to display
func setValue(inputVal):
	value = inputVal;
#initialize a gauge min and max value
func setMinMaxValue(minInputVal,maxInputVal,inputVal):
	if minInputVal == maxInputVal || maxInputVal < minInputVal :
		pass
	minValue = minInputVal;
	maxValue = maxInputVal;
	value = inputVal;
#helper function to map input value to an angle

func map(x,in_min, in_max,out_min, out_max):
	var returnval = 0
	returnval = out_min + (((x-in_min)*(out_max-out_min))/(in_max-in_min))
	return returnval

