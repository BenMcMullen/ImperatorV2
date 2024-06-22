
// Define the phrase categories for each rank
function InitImperatorPhrases() {
    global.phrasesLieutenant = {
        welcome: [],
        performance: [],
        growth: [],
        question: [],
		missionBriefs: [],
    };

    global.phrasesLieutenant.welcome[0] = "Hey, you're back.";
    global.phrasesLieutenant.welcome[1] = "Oh, it's you again.";
    global.phrasesLieutenant.welcome[2] = "Didn't think you'd make it.";
    global.phrasesLieutenant.welcome[3] = "Back already?";
    global.phrasesLieutenant.welcome[4] = "What do you want?";
    global.phrasesLieutenant.welcome[5] = "Well, look who's back.";
    global.phrasesLieutenant.welcome[6] = "You're late, again.";
    global.phrasesLieutenant.welcome[7] = "Surprised you made it.";
    global.phrasesLieutenant.welcome[8] = "Didn't expect to see you.";
    global.phrasesLieutenant.welcome[9] = "You actually survived.";

    global.phrasesLieutenant.performance[0] = "You survived, somehow.";
    global.phrasesLieutenant.performance[1] = "Don't waste so much time next mission.";
    global.phrasesLieutenant.performance[2] = "You're still alive, I see.";
    global.phrasesLieutenant.performance[3] = "Barely made it back, huh?";
    global.phrasesLieutenant.performance[4] = "You need more practice.";
    global.phrasesLieutenant.performance[5] = "That was rough to watch.";
    global.phrasesLieutenant.performance[6] = "Could have been better... much better.";
    global.phrasesLieutenant.performance[7] = "You call that flying?";
    global.phrasesLieutenant.performance[8] = "Somehow, i think that wasn't your worst.";
    global.phrasesLieutenant.performance[9] = "You did... okay.";

    global.phrasesLieutenant.growth[0] = "You're not the worst we've got. But you're close.";
    global.phrasesLieutenant.growth[1] = "Still got a long way to go.";
    global.phrasesLieutenant.growth[2] = "You'll get there. Maybe.";
    global.phrasesLieutenant.growth[3] = "Keep trying, if you think it will help.";
    global.phrasesLieutenant.growth[4] = "You're improving... slowly.";
    global.phrasesLieutenant.growth[5] = "Don't get cocky now.";
    global.phrasesLieutenant.growth[6] = "Mediocrity suits you.";
    global.phrasesLieutenant.growth[7] = "You're still a rookie.";
    global.phrasesLieutenant.growth[8] = "Barely a pilot.";
    global.phrasesLieutenant.growth[9] = "Just stay alive.";

    global.phrasesLieutenant.question[0] = "Did you forget how to fly?";
    global.phrasesLieutenant.question[1] = "You realize your alive because of luck, right?";
    global.phrasesLieutenant.question[2] = "Why do you keep coming back?";
    global.phrasesLieutenant.question[3] = "Can't you do any better?";
    global.phrasesLieutenant.question[4] = "Lost out there?";
    global.phrasesLieutenant.question[5] = "Need a babysitter?";
    global.phrasesLieutenant.question[6] = "Got a death wish?";
    global.phrasesLieutenant.question[7] = "Think you can improve?";
    global.phrasesLieutenant.question[8] = "Why so slow?";
    global.phrasesLieutenant.question[9] = "Not scared, are you?";
	
	global.phrasesLieutenant.missionBriefs[0] = "Go pick a mission, if you think you can handle it.";
    global.phrasesLieutenant.missionBriefs[1] = "Choose your next mission, try not to mess up.";
    global.phrasesLieutenant.missionBriefs[2] = "Mission briefs are ready, don't waste time.";
    global.phrasesLieutenant.missionBriefs[3] = "Select your mission, hope you do better.";
    global.phrasesLieutenant.missionBriefs[4] = "Next mission is waiting, don't disappoint.";
    global.phrasesLieutenant.missionBriefs[5] = "Briefs are ready, pick your mission.";
    global.phrasesLieutenant.missionBriefs[6] = "Grab a mission brief, try not to fail.";
    global.phrasesLieutenant.missionBriefs[7] = "Choose a mission, luck won't always save you.";
    global.phrasesLieutenant.missionBriefs[8] = "Mission briefs are waiting, go on.";
    global.phrasesLieutenant.missionBriefs[9] = "Next mission's ready, let's see if you make it.";


    global.phrasesCaptain = {
        welcome: [],
        performance: [],
        growth: [],
        question: [],
		missionBriefs: [],
    };

    global.phrasesCaptain.welcome[0] = "Welcome back, Captain.";
    global.phrasesCaptain.welcome[1] = "Good to see you again.";
    global.phrasesCaptain.welcome[2] = "Back in one piece, I see.";
    global.phrasesCaptain.welcome[3] = "You made it back.";
    global.phrasesCaptain.welcome[4] = "Greetings, Captain.";
    global.phrasesCaptain.welcome[5] = "Glad you're here.";
    global.phrasesCaptain.welcome[6] = "You return once more.";
    global.phrasesCaptain.welcome[7] = "Safe and sound, Captain.";
    global.phrasesCaptain.welcome[8] = "Reporting back, I see.";
    global.phrasesCaptain.welcome[9] = "Hello, Captain.";

    global.phrasesCaptain.performance[0] = "Good job out there.";
    global.phrasesCaptain.performance[1] = "You did well.";
    global.phrasesCaptain.performance[2] = "Nice flying.";
    global.phrasesCaptain.performance[3] = "Impressive work.";
    global.phrasesCaptain.performance[4] = "You handled it well.";
    global.phrasesCaptain.performance[5] = "Smooth operation.";
    global.phrasesCaptain.performance[6] = "Efficient as always.";
    global.phrasesCaptain.performance[7] = "You excelled today.";
    global.phrasesCaptain.performance[8] = "Mission accomplished.";
    global.phrasesCaptain.performance[9] = "Well done.";

    global.phrasesCaptain.growth[0] = "Your skills are growing.";
    global.phrasesCaptain.growth[1] = "You're becoming a top pilot.";
    global.phrasesCaptain.growth[2] = "You show great potential.";
    global.phrasesCaptain.growth[3] = "The fleet depends on you.";
    global.phrasesCaptain.growth[4] = "You're making us proud.";
    global.phrasesCaptain.growth[5] = "You lead by example.";
    global.phrasesCaptain.growth[6] = "Your progress is noted.";
    global.phrasesCaptain.growth[7] = "You're vital to our success.";
    global.phrasesCaptain.growth[8] = "You're a true asset.";
    global.phrasesCaptain.growth[9] = "Keep up the good work.";

    global.phrasesCaptain.question[0] = "Ready for another?";
    global.phrasesCaptain.question[1] = "Think you can top that?";
    global.phrasesCaptain.question[2] = "Can you keep it up?";
    global.phrasesCaptain.question[3] = "How do you feel?";
    global.phrasesCaptain.question[4] = "What do you need?";
    global.phrasesCaptain.question[5] = "Ready for more action?";
    global.phrasesCaptain.question[6] = "How's the ship holding?";
    global.phrasesCaptain.question[7] = "Up for a challenge?";
    global.phrasesCaptain.question[8] = "Can you lead the next?";
    global.phrasesCaptain.question[9] = "How was the mission?";
	
	global.phrasesCaptain.missionBriefs[0] = "Captain, the mission briefs are ready for your review.";
    global.phrasesCaptain.missionBriefs[1] = "Your next mission awaits, Captain.";
    global.phrasesCaptain.missionBriefs[2] = "Captain, please select your next mission.";
    global.phrasesCaptain.missionBriefs[3] = "The mission briefs are prepared, Captain.";
    global.phrasesCaptain.missionBriefs[4] = "Captain, choose your mission wisely.";
    global.phrasesCaptain.missionBriefs[5] = "Proceed to the mission briefs, Captain.";
    global.phrasesCaptain.missionBriefs[6] = "Captain, your expertise is needed for the next mission.";
    global.phrasesCaptain.missionBriefs[7] = "The next mission awaits your command, Captain.";
    global.phrasesCaptain.missionBriefs[8] = "Captain, your mission options are ready.";
    global.phrasesCaptain.missionBriefs[9] = "Review and select your mission, Captain.";


    global.phrasesMajor = {
        welcome: [],
        performance: [],
        growth: [],
        question: [],
		missionBriefs: [],
    };

    global.phrasesMajor.welcome[0] = "Welcome back, Major.";
    global.phrasesMajor.welcome[1] = "Good to see you, Major.";
    global.phrasesMajor.welcome[2] = "You've returned, Major.";
    global.phrasesMajor.welcome[3] = "Major, you're back.";
    global.phrasesMajor.welcome[4] = "Greetings, Major.";
    global.phrasesMajor.welcome[5] = "Well done, Major.";
    global.phrasesMajor.welcome[6] = "Welcome, Major.";
    global.phrasesMajor.welcome[7] = "Back safe, Major.";
    global.phrasesMajor.welcome[8] = "Reporting in, Major?";
    global.phrasesMajor.welcome[9] = "Hello, Major.";

    global.phrasesMajor.performance[0] = "Excellent work, Major.";
    global.phrasesMajor.performance[1] = "Well executed, Major.";
    global.phrasesMajor.performance[2] = "You did great, Major.";
    global.phrasesMajor.performance[3] = "Outstanding performance.";
    global.phrasesMajor.performance[4] = "Flawless operation.";
    global.phrasesMajor.performance[5] = "Top-notch flying.";
    global.phrasesMajor.performance[6] = "You're a natural.";
    global.phrasesMajor.performance[7] = "Exceptional skill.";
    global.phrasesMajor.performance[8] = "Mission complete, Major.";
    global.phrasesMajor.performance[9] = "You nailed it.";

    global.phrasesMajor.growth[0] = "You're a seasoned pilot.";
    global.phrasesMajor.growth[1] = "Your expertise is showing.";
    global.phrasesMajor.growth[2] = "You're a key player.";
    global.phrasesMajor.growth[3] = "Major, you're invaluable.";
    global.phrasesMajor.growth[4] = "Leading by example.";
    global.phrasesMajor.growth[5] = "An asset to the fleet.";
    global.phrasesMajor.growth[6] = "You're indispensable.";
    global.phrasesMajor.growth[7] = "A model pilot.";
    global.phrasesMajor.growth[8] = "The fleet relies on you.";
    global.phrasesMajor.growth[9] = "You set the standard.";

    global.phrasesMajor.question[0] = "Ready for the next mission?";
    global.phrasesMajor.question[1] = "What's next, Major?";
    global.phrasesMajor.question[2] = "What's your plan, Major?";
    global.phrasesMajor.question[3] = "Can you handle more?";
    global.phrasesMajor.question[4] = "What are your orders?";
    global.phrasesMajor.question[5] = "What's your next move?";
    global.phrasesMajor.question[6] = "Ready for deployment?";
    global.phrasesMajor.question[7] = "Next mission details?";
    global.phrasesMajor.question[8] = "What's your status?";
    global.phrasesMajor.question[9] = "What's the objective?";
	
	   global.phrasesMajor.missionBriefs[0] = "Major, the mission briefs are at your disposal.";
    global.phrasesMajor.missionBriefs[1] = "Your next mission is ready for selection, Major.";
    global.phrasesMajor.missionBriefs[2] = "Major, please review the mission briefs.";
    global.phrasesMajor.missionBriefs[3] = "The mission briefs are ready, Major.";
    global.phrasesMajor.missionBriefs[4] = "Major, your insight is required for the next mission.";
    global.phrasesMajor.missionBriefs[5] = "Proceed to the mission briefs, Major.";
    global.phrasesMajor.missionBriefs[6] = "Major, your next mission awaits your decision.";
    global.phrasesMajor.missionBriefs[7] = "Select your mission, Major.";
    global.phrasesMajor.missionBriefs[8] = "Major, your mission options are prepared.";
    global.phrasesMajor.missionBriefs[9] = "Review and choose your mission, Major.";


    global.phrasesColonel = {
        welcome: [],
        performance: [],
        growth: [],
        question: [],
		missionBriefs: [],
    };

    global.phrasesColonel.welcome[0] = "Welcome back, Colonel.";
    global.phrasesColonel.welcome[1] = "Good to see you, Colonel.";
    global.phrasesColonel.welcome[2] = "You've returned, Colonel.";
    global.phrasesColonel.welcome[3] = "Colonel, you're back.";
    global.phrasesColonel.welcome[4] = "Greetings, Colonel.";
    global.phrasesColonel.welcome[5] = "Well done, Colonel.";
    global.phrasesColonel.welcome[6] = "Welcome, Colonel.";
    global.phrasesColonel.welcome[7] = "Back safe, Colonel.";
    global.phrasesColonel.welcome[8] = "Reporting in, Colonel?";
    global.phrasesColonel.welcome[9] = "Hello, Colonel.";

    global.phrasesColonel.performance[0] = "Excellent work, Colonel.";
    global.phrasesColonel.performance[1] = "Well executed, Colonel.";
    global.phrasesColonel.performance[2] = "You did great, Colonel.";
    global.phrasesColonel.performance[3] = "Outstanding performance.";
    global.phrasesColonel.performance[4] = "Flawless operation.";
    global.phrasesColonel.performance[5] = "Top-notch flying.";
    global.phrasesColonel.performance[6] = "You're a natural.";
    global.phrasesColonel.performance[7] = "Exceptional skill.";
    global.phrasesColonel.performance[8] = "Mission complete, Colonel.";
    global.phrasesColonel.performance[9] = "You nailed it.";

    global.phrasesColonel.growth[0] = "You're a seasoned pilot.";
    global.phrasesColonel.growth[1] = "Your expertise is showing.";
    global.phrasesColonel.growth[2] = "You're a key player.";
    global.phrasesColonel.growth[3] = "Colonel, you're invaluable.";
    global.phrasesColonel.growth[4] = "Leading by example.";
    global.phrasesColonel.growth[5] = "An asset to the fleet.";
    global.phrasesColonel.growth[6] = "You're indispensable.";
    global.phrasesColonel.growth[7] = "A model pilot.";
    global.phrasesColonel.growth[8] = "The fleet relies on you.";
    global.phrasesColonel.growth[9] = "You set the standard.";

    global.phrasesColonel.question[0] = "Ready for the next mission?";
    global.phrasesColonel.question[1] = "What's next, Colonel?";
    global.phrasesColonel.question[2] = "What's your plan, Colonel?";
    global.phrasesColonel.question[3] = "Can you handle more?";
    global.phrasesColonel.question[4] = "What are your orders?";
    global.phrasesColonel.question[5] = "What's your next move?";
    global.phrasesColonel.question[6] = "Ready for deployment?";
    global.phrasesColonel.question[7] = "Next mission details?";
    global.phrasesColonel.question[8] = "What's your status?";
    global.phrasesColonel.question[9] = "What's the objective?";

    global.phrasesColonel.missionBriefs[0] = "Colonel, the mission briefs are ready for your review.";
    global.phrasesColonel.missionBriefs[1] = "Your next mission is prepared, Colonel.";
    global.phrasesColonel.missionBriefs[2] = "Colonel, please select your next mission.";
    global.phrasesColonel.missionBriefs[3] = "The mission briefs await your decision, Colonel.";
    global.phrasesColonel.missionBriefs[4] = "Colonel, your expertise is required for the next mission.";
    global.phrasesColonel.missionBriefs[5] = "Proceed to the mission briefs, Colonel.";
    global.phrasesColonel.missionBriefs[6] = "Colonel, your next mission is ready for selection.";
    global.phrasesColonel.missionBriefs[7] = "Select your mission, Colonel.";
    global.phrasesColonel.missionBriefs[8] = "Colonel, your mission options are ready.";
    global.phrasesColonel.missionBriefs[9] = "Review and choose your mission, Colonel.";

    global.phrasesGeneral = {
        welcome: [],
        performance: [],
        growth: [],
        question: [],
		missionBriefs: [],
    };

    global.phrasesGeneral.welcome[0] = "Welcome back, General.";
    global.phrasesGeneral.welcome[1] = "Good to see you, General.";
    global.phrasesGeneral.welcome[2] = "You've returned, General.";
    global.phrasesGeneral.welcome[3] = "General, you're back.";
    global.phrasesGeneral.welcome[4] = "Greetings, General.";
    global.phrasesGeneral.welcome[5] = "Well done, General.";
    global.phrasesGeneral.welcome[6] = "Welcome, General.";
    global.phrasesGeneral.welcome[7] = "Back safe, General.";
    global.phrasesGeneral.welcome[8] = "Reporting in, General?";
    global.phrasesGeneral.welcome[9] = "Hello, General.";

    global.phrasesGeneral.performance[0] = "Excellent work, General.";
    global.phrasesGeneral.performance[1] = "Well executed, General.";
    global.phrasesGeneral.performance[2] = "You did great, General.";
    global.phrasesGeneral.performance[3] = "Outstanding performance.";
    global.phrasesGeneral.performance[4] = "Flawless operation.";
    global.phrasesGeneral.performance[5] = "Top-notch flying.";
    global.phrasesGeneral.performance[6] = "You're a natural.";
    global.phrasesGeneral.performance[7] = "Exceptional skill.";
    global.phrasesGeneral.performance[8] = "Mission complete, General.";
    global.phrasesGeneral.performance[9] = "You nailed it.";

    global.phrasesGeneral.growth[0] = "You're a seasoned pilot.";
    global.phrasesGeneral.growth[1] = "Your expertise is showing.";
    global.phrasesGeneral.growth[2] = "You're a key player.";
    global.phrasesGeneral.growth[3] = "General, you're invaluable.";
    global.phrasesGeneral.growth[4] = "Leading by example.";
    global.phrasesGeneral.growth[5] = "An asset to the fleet.";
    global.phrasesGeneral.growth[6] = "You're indispensable.";
    global.phrasesGeneral.growth[7] = "A model pilot.";
    global.phrasesGeneral.growth[8] = "The fleet relies on you.";
    global.phrasesGeneral.growth[9] = "You set the standard.";

    global.phrasesGeneral.question[0] = "Ready for the next mission?";
    global.phrasesGeneral.question[1] = "What's next, General?";
    global.phrasesGeneral.question[2] = "What's your plan, General?";
    global.phrasesGeneral.question[3] = "Can you handle more?";
    global.phrasesGeneral.question[4] = "What are your orders?";
    global.phrasesGeneral.question[5] = "What's your next move?";
    global.phrasesGeneral.question[6] = "Ready for deployment?";
    global.phrasesGeneral.question[7] = "Next mission details?";
    global.phrasesGeneral.question[8] = "What's your status?";
    global.phrasesGeneral.question[9] = "What's the objective?";
	
	    global.phrasesGeneral.missionBriefs[0] = "General, the mission briefs are at your disposal.";
    global.phrasesGeneral.missionBriefs[1] = "Your next mission awaits, General.";
    global.phrasesGeneral.missionBriefs[2] = "General, please review the mission briefs.";
    global.phrasesGeneral.missionBriefs[3] = "The mission briefs are ready for your selection, General.";
    global.phrasesGeneral.missionBriefs[4] = "General, your leadership is required for the next mission.";
    global.phrasesGeneral.missionBriefs[5] = "Proceed to the mission briefs, General.";
    global.phrasesGeneral.missionBriefs[6] = "General, your next mission is ready.";
    global.phrasesGeneral.missionBriefs[7] = "Select your mission, General.";
    global.phrasesGeneral.missionBriefs[8] = "General, your mission options are prepared.";
    global.phrasesGeneral.missionBriefs[9] = "Review and choose your mission, General.";


    global.phrasesVenator = {
        welcome: [],
        performance: [],
        growth: [],
        question: [],
		missionBriefs: [],
    };

    global.phrasesVenator.welcome[0] = "Welcome back, Venator.";
    global.phrasesVenator.welcome[1] = "Good to see you, Venator.";
    global.phrasesVenator.welcome[2] = "You've returned, Venator.";
    global.phrasesVenator.welcome[3] = "Venator, you're back.";
    global.phrasesVenator.welcome[4] = "Greetings, Venator.";
    global.phrasesVenator.welcome[5] = "Well done, Venator.";
    global.phrasesVenator.welcome[6] = "Welcome, Venator.";
    global.phrasesVenator.welcome[7] = "Back safe, Venator.";
    global.phrasesVenator.welcome[8] = "Reporting in, Venator?";
    global.phrasesVenator.welcome[9] = "Hello, Venator.";

    global.phrasesVenator.performance[0] = "Excellent work, Venator.";
    global.phrasesVenator.performance[1] = "Well executed, Venator.";
    global.phrasesVenator.performance[2] = "You are almost too good to be in the field!";
    global.phrasesVenator.performance[3] = "Outstanding performance.";
    global.phrasesVenator.performance[4] = "Flawless operation.";
    global.phrasesVenator.performance[5] = "Top-notch flying.";
    global.phrasesVenator.performance[6] = "You're a natural.";
    global.phrasesVenator.performance[7] = "Exceptional skill.";
    global.phrasesVenator.performance[8] = "Mission complete, Venator.";
    global.phrasesVenator.performance[9] = "You nailed it.";

    global.phrasesVenator.growth[0] = "You're a seasoned pilot.";
    global.phrasesVenator.growth[1] = "Your expertise is showing.";
    global.phrasesVenator.growth[2] = "You're a key player.";
    global.phrasesVenator.growth[3] = "Venator, you're invaluable.";
    global.phrasesVenator.growth[4] = "Leading by example, as always.";
    global.phrasesVenator.growth[5] = "An asset to the fleet.";
    global.phrasesVenator.growth[6] = "You're indispensable.";
    global.phrasesVenator.growth[7] = "A model pilot.";
    global.phrasesVenator.growth[8] = "The fleet relies on you.";
    global.phrasesVenator.growth[9] = "You set the standard.";

    global.phrasesVenator.question[0] = "Ready for the next mission?";
    global.phrasesVenator.question[1] = "What's next, Venator?";
    global.phrasesVenator.question[2] = "What's your plan, Venator?";
    global.phrasesVenator.question[3] = "Can you handle more?";
    global.phrasesVenator.question[4] = "What are your orders?";
    global.phrasesVenator.question[5] = "What's your next move?";
    global.phrasesVenator.question[6] = "Ready for deployment?";
    global.phrasesVenator.question[7] = "Next mission details?";
    global.phrasesVenator.question[8] = "What's your status?";
    global.phrasesVenator.question[9] = "What's the objective?";

	global.phrasesVenator.missionBriefs[0] = "Venator, the mission briefs are at your command.";
    global.phrasesVenator.missionBriefs[1] = "Your next mission awaits your selection, Venator.";
    global.phrasesVenator.missionBriefs[2] = "Venator, please review and choose your mission.";
    global.phrasesVenator.missionBriefs[3] = "The mission briefs are ready for you, Venator.";
    global.phrasesVenator.missionBriefs[4] = "Venator, your expertise is required for the next mission.";
    global.phrasesVenator.missionBriefs[5] = "Proceed to the mission briefs, Venator.";
    global.phrasesVenator.missionBriefs[6] = "Venator, your next mission awaits.";
    global.phrasesVenator.missionBriefs[7] = "Select your mission, Venator.";
    global.phrasesVenator.missionBriefs[8] = "Venator, your mission options are prepared.";
    global.phrasesVenator.missionBriefs[9] = "Review and choose your mission, Venator.";
}
   

// Function to get a phrase based on rank and category
// Function to get a phrase based on rank and category
// Function to get a phrase based on rank and index
function GetPhrase(phraseRank, category) {
    var phraseIndex = irandom_range(0, 9);
	
    switch (category) {
        case "welcome":
            return phraseRank.welcome[phraseIndex];
        case "performance":
            return phraseRank.performance[phraseIndex];
        case "growth":
            return phraseRank.growth[phraseIndex];
		case "question":
			return phraseRank.question[phraseIndex]
		case "missionBriefs":
			return phraseRank.missionBriefs[phraseIndex]
        default: 
            return "Unknown rank.";
    }
}

// Function to display a sentence using the GetPhrase function

function DisplayGreeting(rank) {
    var sentence = "";
    
    // Always include "welcome" and "performance"
    sentence += GetPhrase(GetPhrasesByRank(rank), "welcome") + " ";
    sentence += GetPhrase(GetPhrasesByRank(rank), "performance") + " ";
    
    // Randomly choose between "growth" and "question"
    var randomNumber = irandom_range(0, 1); // Random number 0 or 1
    
    if (randomNumber == 0) {
        sentence += GetPhrase(GetPhrasesByRank(rank), "growth") + " ";
    } else {
        sentence += GetPhrase(GetPhrasesByRank(rank), "question") + " ";
    }
    
	sentence += GetPhrase(GetPhrasesByRank(rank), "missionBriefs")
	
    return string_trim(sentence);
}

function DisplayOneLiner(rank) {
    var sentence = "";
    
    // Randomly choose between "growth" and "question"
    var randomNumber = irandom_range(0, 2); // Random number between 0 and 2
    
    if (randomNumber == 0) {
        sentence += GetPhrase(GetPhrasesByRank(rank), "growth");
    } else if (randomNumber == 1){
        sentence += GetPhrase(GetPhrasesByRank(rank), "question");
    }
	else {
		sentence += GetPhrase(GetPhrasesByRank(rank), "missionBriefs");
	}
    
    return string_trim(sentence);
}


function GetPhrasesByRank(rank) {
    switch (rank) {
        case 1: // Lieutenant
            return global.phrasesLieutenant;
        case 2: // Captain
            return global.phrasesCaptain;
        case 3: // Major
            return global.phrasesMajor;
        case 4: // Colonel
            return global.phrasesColonel;
        case 5: // General
            return global.phrasesGeneral;
        case 6: // Imperator
            return global.phrasesVenator;
        default:
            return []; // Return an empty array or handle error as needed
    }
}




function WrapImperatorDialogue(str, max_width) {
    var words = string_split(str, " ");   // Split the string into words
    var lines = [];   // Array to hold the resulting lines
    var current_line = "";   // Current line being constructed

    // Iterate through each word in the array
    for (var i = 0; i < array_length(words); i++) {
        var word = words[i];

        // If adding the current word exceeds max_width, start a new line
        if (string_width(current_line + " " + word) > max_width) {
            // Check if the current line is not empty before adding it to the lines array
            if (current_line != "") {
                lines[array_length(lines)] = current_line;
            }
            
            // Start a new line with the current word
            current_line = word;
        } else {
            // Add the word to the current line with a space if it's not the first word
            if (current_line != "") {
                current_line += " ";
            }
            current_line += word;
        }
    }

    // Add the last line to the lines array if it's not empty
    if (current_line != "") {
        lines[array_length(lines)] = current_line;
    }

    // Return the array of lines
    return lines;
}
