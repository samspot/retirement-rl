/// Dequeue()

ds_list_delete(c.enemyQueue, 0) // remove this enemy from the queue
if(ds_list_size(c.enemyQueue) == 0){
	target.canMove = true	
} else {
	var enemy = ds_list_find_value(c.enemyQueue, 0)
	with(enemy) canMove = true
}