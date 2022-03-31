function enemyKill(argument0) {
	enemyObject = argument0;

	target = instance_create_depth(enemyObject.x, enemyObject.y, enemyObject.depth, obj_deadEnemy);
	target.sprite = enemyObject.sprite_index;




}
