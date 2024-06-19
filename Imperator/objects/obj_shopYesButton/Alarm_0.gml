/// @description Insert description here
// You can write your code in this editor
var messageText = other.messageText
	var shopMessageInstance = instance_create_layer(x/2, y/2, "Items", obj_shopUpgradeMessage);
		shopMessageInstance.messageText = messageText;
		
PurchaseUpgrade(other.array_index,other.systemType)
with (obj_shopConfirmationScreen) {
    instance_destroy();
}
with (obj_shopNoButton) {
    instance_destroy();
}
with (obj_overlay) {
    instance_destroy();
}
instance_destroy();