if (follow != noone) {
	xTo = follow.x;
	yTo = follow.y;
}

var hittingAnEdgeX = 1;
var hittingAnEdgeY = 1;

var camX = camera_get_view_x(cam);
var camY = camera_get_view_y(cam);

// slowing down camera when it's close to edges
if ((camX - edgeSlownessDistance) <= 0 or camX + camWidth + edgeSlownessDistance >= global.totalGridWidth or (camY - edgeSlownessDistance) <= 0 or camY + camHeight + edgeSlownessDistance >= global.totalGridHeight) {
	nextToEdge = true;
} else {
	nextToEdge = false;
}

// stopping camera if it hits edges
if ((camX <= 0 and (xTo - x) < 0) or (camX + camWidth >= global.totalGridWidth and (xTo - x) > 0)) {
	hittingAnEdgeX = 0;
} else {
	hittingAnEdgeX = 1;
}

if ((camY <= 0 and (yTo - y) < 0) or (camY + camHeight >= global.totalGridHeight and (yTo - y) > 0)) {
	hittingAnEdgeY = 0;
} else {
	hittingAnEdgeY = 1;
}

// moving camera
if (nextToEdge and floatyness < edgeFloatyness) {
	floatyness += changeInFloatyness;
} else if (!nextToEdge and floatyness > defaultFloatyness) {
	floatyness -= changeInFloatyness;
}

x += ((xTo - x)/floatyness) * hittingAnEdgeX;
y += ((yTo - y)/floatyness) * hittingAnEdgeY;

camera_set_view_pos(view_camera[0], x - camWidth/2, y - camHeight/2);