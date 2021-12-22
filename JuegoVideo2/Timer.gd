extends Timer


signal counted_down(number)

export var _count := 5

func _ready() -> void:
	connect("timeout", self, "_on_timeout")


func _on_timeout() -> void:

	emit_signal("counted_down", _count)

	_count -= 1

	if _count < 0:
		stop()
