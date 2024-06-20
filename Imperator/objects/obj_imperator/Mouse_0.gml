 
 
 //HERE IS WHERE I WOULD DO SOME FORM OF MATHAMTICAL GYMASTICS
 //TO CONVERT CERTAIN VALUES TO NUMERICAL VALUES, FOR THE SAKE OF THE DIALOGUE BITS. 
 //ALTHOUGH HONESTLY I THINK IM GONNA CHANGE IT, JUST HAVE CHAT GPT WRITE A BUNCH OF PHRASES...
 var rank = global.playerInformation.rank;
 var dialogue = DisplaySentence(rank);
 
 var imperator = instance_create_layer(x, y, "Imperator", obj_imperatorBubble);
	imperator.dialogue = dialogue
