extends TabContainer

var open = false

func _on_tab_clicked(tab):
	if current_tab == tab:
		if !open:
			$AnimationPlayer.play("open")
			open = true
		else:
			$AnimationPlayer.play_backwards("open")
			open = false

