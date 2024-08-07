extends Control

const TIME_PERIOD = 1

var time = 0
var timer
@onready var popup = get_node("AcceptDialog")


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Time elapsed: ", time)
	#welcome()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta
	if delta > 1 && delta < 5:
		print("delta")
	if time > TIME_PERIOD:
		popup.visible = false
		print("Time elapsed: ", time)
		time = 0

func welcome():
	get_tree().create_timer(1.0)
	popup.visible = true
	get_tree().create_timer(2.0)
	popup.hide()
