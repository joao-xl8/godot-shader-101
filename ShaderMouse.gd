extends Sprite

func _ready():
	set_process(true)
	pass


func _process(_delta):
	var mouse = get_viewport().get_mouse_position();
	var screen = get_viewport().get_visible_rect().size;
	mouse.x /= screen.x
	mouse.y /= screen.y
	get_material().set_shader_param("mouse_position", mouse)
	
