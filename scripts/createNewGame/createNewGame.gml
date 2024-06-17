/// @desc createNewGame(rows, columns, width, height, x, y, object)
/// @arg rows
///@arg columns
/// @arg width
/// @arg height
/// @arg x
/// @arg y
/// @arg object
var rows = argument0;
var columns = argument1;
var blockWidth = argument2;
var blockHeight = argument3;
var object = argument6; //object that is being created
var xOffset = argument4; //pixels from left of window
var yOffset = argument5; //pixels from top of window




function createNewGame(rows, columns, blockWidth, blockHeight, xOffset, yOffset, object){
	var grid[rows][columns];
	for(i = 0; i < rows; i++) {
		for(j = 0; j < columns; j++) {
			grid[i][j] = 0;
		}
	}
	for(i = 0; i < rows; i++) {
		for(j = 0; j < columns; j++) {
			if(grid[i][j] == 0) {
				var curGridX = xOffset + i*  blockWidth;
				var curGridY = yOffset + j * blockHeight;
				instance_create_depth(curGridX, curGridY, 0, object);	
			}
		}
	}
}