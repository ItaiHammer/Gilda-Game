var right = keyboard_check(ord("D"));
var left = keyboard_check(ord("A"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));

var xInput = right - left;
var yInput = down - up;

move_and_collide(xInput * characterSpeed, yInput * characterSpeed, objWall);

show_debug_message("x: " + string(x) + ", y: " + string(y));