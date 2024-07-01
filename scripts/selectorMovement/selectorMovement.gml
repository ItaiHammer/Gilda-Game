/// @desc selectorMovement(selector, columns, width, height, x, y, object)
/// @arg selector
var selector = argument0;
var cellSize = argument1;
var offset = argument2;

function selectorMovement(selector, cellSize, offset){
	selector.x=(mouse_x div cellSize) * cellSize + offset;
	selector.y=(mouse_y div cellSize) * cellSize + offset;
}