text = "Hello World!"
time = 120

startMessagesY = room_height * .7

x = room_width / 2
x += GetGameX()
//y = startMessagesY - ds_list_size(oController.messageList)*30
//y += instance_number(oFloatingText)*30
y = startMessagesY

var size = ds_list_size(oController.messageList)
var firstMessage = ds_list_find_value(oController.messageList, size-1)
if(!is_undefined(firstMessage)){
	with(firstMessage){
		if(firstMessage.y < startMessagesY+34){
			other.y = firstMessage.y - 34
		} else {
			//other.y = startMessagesY - ds_list_size(oController.messageList)*30
			y = startMessagesY
		}
	}
}

with(oController){
	ds_list_add(messageList, other)
}