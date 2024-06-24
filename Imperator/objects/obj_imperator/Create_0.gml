debounceTime = 0.2;
lastClickTime = -1;
longDialogue = true;


depth = -49;
alarm[1] = 40;

function SetRandomInterval() {
    // Set the alarm to a random time between 10 and 25 seconds
    alarm[0] = irandom_range(10 * room_speed, 25 * room_speed);
}

SetRandomInterval();