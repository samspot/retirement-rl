/// QueueEnemies()

if(instance_exists(pEnemy)){
	var i, enemy
	
	for(i = 0; i < instance_number(pEnemy); i++){
		enemy = instance_find(pEnemy, i)	
		ds_list_add(c.enemyQueue, enemy)
	}
	with(ds_list_find_value(c.enemyQueue, 0)) canMove = true
	
	return true
} else {
	return false
}