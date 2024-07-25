/// @description Insert description here
// You can write your code in this editor
var messageText = other.messageText
	var briefsMessage = instance_create_layer(x/2, y/2, "Briefs", obj_briefMessage);
		briefsMessage.messageText = messageText;
		briefsMessage.goHanger = true;
		
SelectMission(other.levelIndex)
with (obj_briefobj_overlayScreen) {
    instance_destroy(obj_briefobj_overlayScreen);
}
with (obj_briefNoButton) {
    instance_destroy(obj_briefNoButton);
}
with (obj_overlay) {
    instance_destroy(obj_overlay);
}
instance_destroy();