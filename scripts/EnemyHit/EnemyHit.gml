// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHit(_damage) {

enemyHealth -= _damage;
fling(point_direction(other.x,other.y-(sprite_height/2)+30,x,y),10); 

hurtStunTimer = enemyHurtStun;
if (state != ENEMYSTATE.HURT) switchState(ENEMYSTATE.HURT);

showHealthBarTimer = 5;
}