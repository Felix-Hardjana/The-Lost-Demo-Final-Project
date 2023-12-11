extends Node


var wcurrent_scene = "void"
var current_scene = "world" #world cliff_side
var acurrent_scene = "cliff_side"
var bcurrent_scene = "town"
var transition_scene = false

var player_exit_cliffside_posx = 0
var player_exit_cliffside_posy = 0
var player_start_posx = 0
var player_start_posy = 0

func wfinish_changescenes():
	if transition_scene == true:
		transition_scene = false 
		if wcurrent_scene == "void":
			wcurrent_scene = "world"
		else:
			wcurrent_scene = "void"
			
func finish_changescenes():
	if transition_scene == true:
		transition_scene = false
		#world to cliff_side
		if current_scene == "world":
			current_scene = "cliff_side"
		else:
			current_scene = "world"
		# cliff_side to town	
func afinish_changescenes():
	if transition_scene == true:
		transition_scene = false 
		if acurrent_scene == "cliff_side":
			acurrent_scene = "town"
		else:
			acurrent_scene = "cliff_side"

func bfinish_changescenes():
	if transition_scene == true:
		transition_scene = false
		if bcurrent_scene == "town":
			bcurrent_scene = "demo"
		else:
			bcurrent_scene = "town"
			
