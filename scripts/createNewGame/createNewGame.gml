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
	//var grid[rows][columns];
	for(i = 0; i < rows; i++) {
		for(j = 0; j < columns; j++) {
			grid[i][j] = 0;
		}
	}
	
	//setting start and end
	randomNumberStart = irandom_range(0, rows-1);
	randomNumberEnd = irandom_range(0, rows-1);
	grid[randomNumberStart][0] = 1;
	grid[randomNumberEnd][columns - 1] = 2;
	
	pathLength = irandom_range(rows + columns, rows*columns);
	startPoint = new Point(randomNumberStart, 0);
	endPoint = new Point(randomNumberEnd, columns - 1);
	pathArray = getPath(pathLength, startPoint, endPoint, rows, columns);
	for(k = 0; k < array_length(pathArray); k++) {
		pathXCoord = pathArray[k].x;
		pathYCoord = pathArray[k].y;
		grid[pathXCoord][pathYCoord] = 3;
		show_debug_message("(" + pathXCoord + ", " + pathYCoord + ")");
	}
	
	for(i = 0; i < rows; i++) {
		for(j = 0; j < columns; j++) {
			var curGridX = xOffset + i*  blockWidth;
			var curGridY = yOffset + j * blockHeight;
			if(grid[i][j] == 0) {
				instance_create_depth(curGridX, curGridY, 0, object);	
			} else if(grid[i][j] == 1) {
				instance_create_depth(curGridX, curGridY, 0, objStart);	
			} else if(grid[i][j] == 2) {
				instance_create_depth(curGridX, curGridY, 0, objEnd);	
			} else if(grid[i][j] == 3) {
				instance_create_depth(curGridX, curGridY, 0, objGrass);
			}
		}
	}
}