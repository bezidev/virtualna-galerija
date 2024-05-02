extends ReferenceRect

var rng = RandomNumberGenerator.new()
var dots = []
const colors = [Color.aqua, Color.black, Color.blue, Color.blueviolet, Color.chartreuse, Color.chocolate, Color.darkcyan, Color.coral, Color.darkgray]

func newDot():
	var pos1 = rng.randf_range(0, 500)
	var pos2 = rng.randf_range(0, 500)
	var size = rng.randf_range(0, 40)
	var color = rng.randi_range(0, colors.size()-1)
	dots.append([Vector2(pos1, pos2), size, colors[color]])
	update()

func _draw():
	for i in dots:
		draw_circle(i[0], i[1], i[2])

func _process(delta):
	if Input.is_action_just_pressed("ui_enter"):
		newDot()

