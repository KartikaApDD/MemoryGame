extends Timer

var label = Label
var time = Timer
# Called when the node enters the scene tree for the first time.
func _ready():
	label = $main/Label
	time = $main/Timer
	
	time.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	update_label_text()
	
func update_label_text():
	label.text = str(ceil(time.time_left))
