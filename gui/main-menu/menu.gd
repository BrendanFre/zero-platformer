extends VBoxContainer
export(NodePath) var menu
onready var node = get_node(menu)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Options_pressed():
	var optionsMenu = preload("res://gui/main-menu/OptionsMenu.tscn")
	var optionsInstance = optionsMenu.instance()
	node.add_child(optionsInstance)
	optionsInstance.margin_top = 20
	node.margin_top = 20
	node.remove_child(self)
