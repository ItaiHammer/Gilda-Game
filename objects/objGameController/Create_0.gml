/// @description Insert description here
// You can write your code in this editor
gridRows = 30;
gridColumns = 15;
gridCellSize = 128;
gridCellOffset = 0;

global.totalGridWidth = (gridCellSize + gridCellOffset) * gridRows;
global.totalGridHeight = (gridCellSize + gridCellOffset) * gridColumns;

// spawning player
var playerSpawnX = global.totalGridWidth/2;
var playerSpawnY = global.totalGridHeight/2;
instance_create_depth(
	playerSpawnX,
	playerSpawnY,
	0,
	objPlayer);

// generating grid
createNewGame(gridRows, gridColumns, gridCellSize, gridCellSize, gridCellOffset, gridCellOffset, objPath);

// setting up camera controller
instance_create_depth(playerSpawnX, playerSpawnY, 0, objCameraController);

// instanciating music controller
instance_create_depth(0, 0, 0, objMusicController);