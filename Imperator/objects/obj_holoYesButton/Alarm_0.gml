/// @description Insert description here
// You can write your code in this editor
var messageText = other.messageText
	var holoMessage = instance_create_layer(x/2, y/2, "HoloItems", obj_holoMessage);
		holoMessage.messageText = messageText;
		holoMessage.planetIndex = other.planetIndex;
		holoMessage.goBridge = true;
		
		
with (obj_holoobj_overlayScreen) {
    instance_destroy(obj_holoobj_overlayScreen);
}
with (obj_holoNoButton) {
    instance_destroy(obj_holoNoButton);
}
with (obj_overlay) {
    instance_destroy(obj_overlay);
}
instance_destroy();