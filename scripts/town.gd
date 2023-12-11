extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Dialogic.start("res://Dialog/town timeline.dtl")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	change_scene()


func _on_demo_transition_point_body_entered(body):
	if body.has_method("player"):
		Global.transition_scene = true


func _on_demo_transition_point_body_exited(body):
	if body.has_method("player"):
		Global.transition_scene= false 

func change_scene():
	if Global.transition_scene == true:
		if Global.bcurrent_scene == "town":
			get_tree().change_scene_to_file("res://scene/demo.tscn")
			Global.finish_changescenes()
