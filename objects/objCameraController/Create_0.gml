cam = view_get_camera(0);
camWidth = camera_get_view_width(cam);
camHeight = camera_get_view_height(cam);

follow = objPlayer;
defaultFloatyness = 10;
edgeFloatyness = 30;
edgeSlownessDistance = 200;
floatyness = defaultFloatyness;

xTo = x;
yTo = y;

// animation variables
nextToEdge = false;
changeInFloatyness = 0.5;