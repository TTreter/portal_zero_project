extends Area2D

var teleportPosition = Vector2.ZERO
var otherPortal = null

func _ready():
	pass


func _on_body_entered(area):
	print(area.get_name())
	if area.get_name() == "Trigger":
		otherPortal.monitoring = false
		area.get_parent().position = teleportPosition
		yield(get_tree().create_timer(1.0), "timeout")
		otherPortal.monitoring = true

