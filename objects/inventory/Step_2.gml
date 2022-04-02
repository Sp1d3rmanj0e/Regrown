/// @description reset page if icons are in wrong spot

scr_followPlayer(0,0);

if (oldX != x || oldY != y) {
	
	switchPage(page);
}

oldX = x;
oldY = y;