extends Camera2D

var rotation_speed = 0.5  # Speed of rotation, adjust as needed

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotation += rotation_speed * delta  # Rotate the camera each frame
