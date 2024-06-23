


	var level = other.brief;
	var shop_x_coordinates = room_width;
	var shop_y_coordinates = room_height;
	
	
    if (!level.completed) {
	
		 var missionConfirmation = instance_create_layer(x/2, y/2, "Briefs", obj_briefConfirmationScreen);
		 missionConfirmation.missionName = level.operationName;
		
             
        messageText = "Are you sure you want to select " + level.operationName; // Success message
		missionConfirmation.operationName = level.operationName;
	
			
			
		var yesButton = instance_create_layer(shop_x_coordinates -925 , shop_y_coordinates - 330, "Briefs", obj_briefYesButton); // Adjust positions as needed

	
		yesButton.messageText = "You have selected " + level.operationName + ", good luck " + GetRankById(global.playerInformation.rank) ;
		yesButton.levelIndex = other.levelIndex;
		
		var noButton = instance_create_layer(shop_x_coordinates -675 , shop_y_coordinates - 330, "Briefs", obj_briefNoButton); // Adjust positions as needed
		
	}
	
	else {
			show_debug_message("alreadycompleted");
		var missionConfirmation = instance_create_layer(x/2, y/2, "Briefs", obj_briefMessage);

        messageText = "You have already completed " + level.operationName + "!";
		missionConfirmation.messageText = messageText;
	}
	