/// @description Insert description here
// You can write your code in this editor
if (follow != noone) {
	xTo = follow.x;
	yTo = follow.y;
}

floatyness = 10

x += (xTo - x)/floatyness;
y += (yTo - y)/floatyness;

camera_set_view_pos(view_camera[0], x - camWidth, y - camHeight);