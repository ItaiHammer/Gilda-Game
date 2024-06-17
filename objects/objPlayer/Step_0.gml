/// @description Insert description here
// You can write your code in this editor
right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

// 1 for right -1 for left
xInput = right - left;

// 1 for up -1 for down
yInput = down - up;

move_and_collide(xInput * movementSpeed, yInput * movementSpeed, objWall);