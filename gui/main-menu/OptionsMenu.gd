extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_CheckButton_toggled(button_pressed):
	if button_pressed == true:
		userSettings.subtitles = true


func _on_Button_pressed():
	var rootOfScene = get_tree().root.get_child(0)
	var menu = rootOfScene.get_child(4).get_child(0).get_child(0)
	var optionsMenu = $"."
	var mainMenu = load('res://gui/main-menu/menu.tscn')
	var instance = mainMenu.instance()
	menu.remove_child(optionsMenu)
	menu.add_child(instance)
