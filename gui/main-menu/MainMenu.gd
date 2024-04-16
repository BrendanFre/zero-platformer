extends TextureRect


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_AnimationPlayer_animation_finished(anim_name):
	if(anim_name == 'start-game'):
		var newRoot = get_tree().root.get_child(0)
		var numberOfNodes = 4
		while numberOfNodes >= 0:
			if(newRoot.get_child(numberOfNodes).name != 'AnimationPlayer'):
				newRoot.get_child(numberOfNodes).queue_free()
			numberOfNodes = numberOfNodes - 1
		print(str('There are ', numberOfNodes, ' nodes'))
		var firstScene = load("res://cutscenes/IntroCutscene.tscn")
		var firstInstance = firstScene.instance()
		var animate = $AnimationPlayer
		newRoot.add_child(firstInstance)
		animate.play('fade-in')
		
