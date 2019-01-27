extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export var speed = -20

onready var helicopter = load("res://Prefabs/Enemies/EnemyParachutist.tscn")


func _process(delta):
	translate(Vector2(speed*delta,0))
	

func _on_Timer_timeout():
	var parachuteSpawn = helicopter.instance()
	parachuteSpawn.set_position(Vector2(0,0))
	add_child(parachuteSpawn)
