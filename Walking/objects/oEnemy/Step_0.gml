if (room = Room4) {
	if (timer = 0) {
		x += 25
		y += 3
	} else {
		timer--
	}
}

if (x > 1000) {
	instance_destroy(inst_47DE4F0F)
}