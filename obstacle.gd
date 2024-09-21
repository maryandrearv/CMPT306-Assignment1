extends AnimatableBody2D
class_name Obstacle

var shrink_speed = 1.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()  # Ensures we get different random values each time the game is run
	rotation = randf_range(0, 2 * PI)  # Randomizes the initial rotation
	$CollisionPolygon2D.scale = Vector2.ONE * 10.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	$CollisionPolygon2D.scale -= Vector2.ONE * shrink_speed * delta
	
	# Once tiny, delete
	if $CollisionPolygon2D.scale.x < 0.05:
		self.queue_free()
