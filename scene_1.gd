extends Node2D
	
func spawnn_mob():
	var new_mob = preload("res://mob.tscn").instantiate()
	%MobSpawnPoint.progress_ratio = randf()
	new_mob.global_position = %MobSpawnPoint.global_position
	add_child(new_mob)


func _on_timer_timeout():
	spawnn_mob()
