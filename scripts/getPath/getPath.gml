// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getPath(pathLength, startPoint, endPoint){
	pathQueue = ds_queue_create();
	path[0] = new Point(startPoint.x, startPoint.y);
	ds_queue_enqueue(pathQueue, path);
	while(!(ds_queue_empty(pathQueue))) {
		currPath = ds_queue_dequeue(pathQueue);
		currPoint = currPath[array_length(currPath) - 1];
		if(array_length(currPath) == pathLength and currPoint.x == endPoint.x and currPoint.y == endPoint.y) {
			ds_queue_destroy(pathQueue);
			return currPath;
		} else if(array_length(currPath) < pathLength) {
			upPoint = new Point(currPoint.x, currPoint.y - 1);
			downPoint = new Point(currPoint.x, currPoint.y + 1);
			leftPoint = new Point(currPoint.x - 1, currPoint.y);
			rightPoint = new Point(currPoint.x + 1, currPoint.y);
		}
	}
}