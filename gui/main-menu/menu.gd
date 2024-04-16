extends VBoxContainer

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
	var menuContainer = $".."
	var optionsMenu = load("res://gui/main-menu/OptionsMenu.tscn")
	var optionsInstance = optionsMenu.instance()
	menuContainer.add_child(optionsInstance)
	optionsInstance.margin_top = 20
	menuContainer.margin_top = 20
	menuContainer.remove_child(self)
