// Check input for movement
var W = (keyboard_check(ord("W")))
var A = (keyboard_check(ord("A")))
var S = (keyboard_check(ord("S")))
var D = (keyboard_check(ord("D")))

var xInput = D - A
var yInput = S - W

if (xInput != 0 && W = 1) {
	xInput = 0
}

if (xInput != 0 && S = 1) {
	xInput = 0
}

//change depth for trees
depth = -y

//directional sprite change
if (W = 1) {
	sprite_index = sPlayerUp
}

if (A = 1) {
	sprite_index = sPlayerLeft
}

if (S = 1) {
	sprite_index = sPlayerDown
}

if (D = 1) {
	sprite_index = sPlayerRight
}

if (xInput = 0 && yInput = 0) {
	sprite_index = sPlayerIdle
}

//Room1 <-> Room2
if (room = Room1 && y > roomHeight) {
	room_goto(Room2)
	y = 0
}

if (room = Room2 && y < 0) {
	room_goto(Room1)
	y = roomHeight
}

//Room1 <-> Room3
if (room = Room1 && x > roomWidth) {
	room_goto(Room3)
	x = 0
}

if (room = Room3 && x < 0) {
	room_goto(Room1)
	x = roomWidth
}

//Room3 <-> Room4
if (room = Room3 && y > roomHeight) {
	room_goto(Room4)
	y = 0
}

if (room = Room4 && y < 0) {
	room_goto(Room3)
	y = roomHeight
}

//page pickup function
if (room = Page1) {
	moveSpeed = 0
	if (keyboard_check_pressed(vk_space)) {
		room_goto(Room2)
		moveSpeed = 4
	}
}

//move and collide
move_and_collide(xInput * moveSpeed, yInput * moveSpeed, oWall)
