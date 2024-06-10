/// @description Insert description here
// You can write your code in this editor
// Initialize the shop items
debounceTime = 0.2; // 200 milliseconds debounce time
lastClickTime = -1; // Initialize to an invalid time
showMessage = false;

messageText = "";
messageTimer = 0;
messageBoxSprite = spr_shopMessage;
clickProcessed = false;
clicked = false;
purchaseBoxHeight = 20; // Height of the purchase box
purchaseBoxWidth = 100; // Width of the purchase box
