extends Sprite2D

@onready var transition = $Transition

func _ready():
	$PlayerAnimation.play("walking_right")
#will play running animation once it loaded.
