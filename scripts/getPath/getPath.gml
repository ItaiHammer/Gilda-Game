// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getPath(pathLength, startPoint, endPoint, rows, columns){
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
			pointArray[0] = upPoint;
			downPoint = new Point(currPoint.x, currPoint.y + 1);
			pointArray[1] = downPoint;
			leftPoint = new Point(currPoint.x - 1, currPoint.y);
			pointArray[2] = leftPoint;
			rightPoint = new Point(currPoint.x + 1, currPoint.y);
			pointArray[3] = rightPoint;
			for(i = 0; i < array_length(pointArray); i++) {
				if(pointArray[i].x < 0 or pointArray[i].x >	rows or pointArray[i].y < 0 or pointArray[i].y > columns) {
					
				}
			}
		}
	}
}