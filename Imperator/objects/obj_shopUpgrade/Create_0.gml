debounceTime = 0.2; // 200 milliseconds debounce time
lastClickTime = -1; // Initialize to an invalid time



showMessage = true;
messageText = "";
messageTimer = 0;
messageBoxSprite = spr_shopMessage;
clickProcessed = false;
clicked = false;
purchaseBoxHeight = 20; // Height of the purchase box
purchaseBoxWidth = 100; // Width of the purchase box
depth = -19;
delay_timer = 30; // 1 second delay (assuming room_speed is 60)
draw_delayed = false;