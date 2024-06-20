// Example array storing parts of phrases
// HERE IS WHAT I WANT TO DO. INTAKE A FEW THINGS- 
//LEVEL TREE, LEVEL, DIFFICULTY, DEATHS DURING THE LAST MISSION,A RANDOM ELEMENT,
// Example usage:
/* var exampleIndices = [0, 4, 9]; // "Hello friend How are you?"
DisplaySentence(exampleIndices); */
// Define the phrase categories for each rank
function InitImperatorPhrases() {
global.phrasesLieutenant = {
    welcome: [
        "Hey, you're back.",
        "Oh, it's you again.",
        "Didn't think you'd make it.",
        "Back already?",
        "What do you want?",
        "Well, look who's back.",
        "You're late, again.",
        "Surprised you made it.",
        "Didn't expect to see you.",
        "You actually survived."
    ],
    performance: [
        "You survived, somehow.",
        "Don't screw up next time.",
        "You're still alive, I see.",
        "Barely made it back, huh?",
        "You need more practice.",
        "That was rough to watch.",
        "Could have been better.",
        "You call that flying?",
        "Not your worst, I guess.",
        "You did... okay."
    ],
    growth: [
        "You're not the worst we've got.",
        "Still got a long way to go.",
        "You'll get there, maybe.",
        "Keep trying, I guess.",
        "You're improving, slowly.",
        "Don't get cocky now.",
        "Mediocrity suits you.",
        "You're still a rookie.",
        "Barely a pilot.",
        "Just stay alive."
    ],
    question: [
        "Did you forget how to fly?",
        "Feeling lucky?",
        "Why do you keep coming back?",
        "Can you do better?",
        "Lost out there?",
        "Need a map?",
        "Got a death wish?",
        "Think you can improve?",
        "Why so slow?",
        "Not scared, are you?"
    ]
};

global.phrasesCaptain = {
    welcome: [
        "Welcome back, Captain.",
        "Good to see you again.",
        "Back in one piece, I see.",
        "You made it back.",
        "Greetings, Captain.",
        "Glad you're here.",
        "You return once more.",
        "Safe and sound, Captain.",
        "Reporting back, I see.",
        "Hello, Captain."
    ],
    performance: [
        "Good job out there.",
        "You did well.",
        "Nice flying.",
        "Impressive work.",
        "You handled it well.",
        "Smooth operation.",
        "Efficient as always.",
        "You excelled today.",
        "Mission accomplished.",
        "Well done."
    ],
    growth: [
        "Your skills are growing.",
        "You're becoming a top pilot.",
        "You show great potential.",
        "The fleet depends on you.",
        "You're making us proud.",
        "You lead by example.",
        "Your progress is noted.",
        "You're vital to our success.",
        "You're a true asset.",
        "Keep up the good work."
    ],
    question: [
        "Ready for another?",
        "Think you can top that?",
        "Can you keep it up?",
        "How do you feel?",
        "What do you need?",
        "Ready for more action?",
        "How's the ship holding?",
        "Up for a challenge?",
        "Can you lead the next?",
        "How was the mission?"
    ]
};

global.phrasesMajor = {
    welcome: [
        "Welcome back, Major.",
        "Good to see you, Major.",
        "You've returned, Major.",
        "Major, you're back.",
        "Greetings, Major.",
        "Well done, Major.",
        "Welcome, Major.",
        "Back safe, Major.",
        "Reporting in, Major?",
        "Hello, Major."
    ],
    performance: [
        "Excellent work, Major.",
        "Well executed, Major.",
        "You did great, Major.",
        "Outstanding performance.",
        "Flawless operation.",
        "Top-notch flying.",
        "You're a natural.",
        "Exceptional skill.",
        "Mission complete, Major.",
        "You nailed it."
    ],
    growth: [
        "You're a seasoned pilot.",
        "Your expertise is showing.",
        "You're a key player.",
        "Major, you're invaluable.",
        "Leading by example.",
        "An asset to the fleet.",
        "You're indispensable.",
        "Major, you're elite.",
        "You've come a long way.",
        "Proud to have you."
    ],
    question: [
        "Ready for the next challenge?",
        "Can you maintain this level?",
        "What's your assessment?",
        "Feel confident, Major?",
        "What are your thoughts?",
        "Prepared for more?",
        "How can we support you?",
        "Ready to excel further?",
        "What's your plan, Major?",
        "How do you keep improving?"
    ]
};

global.phrasesColonel = {
    welcome: [
        "Welcome back, Colonel.",
        "Good to see you, Colonel.",
        "You've returned, Colonel.",
        "Colonel, you're back.",
        "Greetings, Colonel.",
        "Well done, Colonel.",
        "Welcome, Colonel.",
        "Back safe, Colonel.",
        "Reporting in, Colonel?",
        "Hello, Colonel."
    ],
    performance: [
        "Excellent work, Colonel.",
        "Well executed, Colonel.",
        "You did great, Colonel.",
        "Outstanding performance.",
        "Flawless operation.",
        "Top-notch flying.",
        "You're a natural.",
        "Exceptional skill.",
        "Mission complete, Colonel.",
        "You nailed it."
    ],
    growth: [
        "You're a seasoned pilot.",
        "Your expertise is showing.",
        "You're a key player.",
        "Colonel, you're invaluable.",
        "Leading by example.",
        "An asset to the fleet.",
        "You're indispensable.",
        "Colonel, you're elite.",
        "You've come a long way.",
        "Proud to have you."
    ],
    question: [
        "Ready for the next challenge?",
        "Can you maintain this level?",
        "What's your assessment?",
        "Feel confident, Colonel?",
        "What are your thoughts?",
        "Prepared for more?",
        "How can we support you?",
        "Ready to excel further?",
        "What's your plan, Colonel?",
        "How do you keep improving?"
    ]
};

global.phrasesGeneral = {
    welcome: [
        "Welcome back, General.",
        "Good to see you, General.",
        "You've returned, General.",
        "General, you're back.",
        "Greetings, General.",
        "Well done, General.",
        "Welcome, General.",
        "Back safe, General.",
        "Reporting in, General?",
        "Hello, General."
    ],
    performance: [
        "Superb performance, General.",
        "You exceeded expectations.",
        "Impeccable work, General.",
        "Flawless execution.",
        "Remarkable flying.",
        "A master at work.",
        "You're extraordinary.",
        "Mission perfection.",
        "Unparalleled skill.",
        "Outstanding result."
    ],
    growth: [
        "You're at the pinnacle.",
        "A paragon of excellence.",
        "Your leadership shines.",
        "The fleet's finest.",
        "General, you're unmatched.",
        "Your legacy grows.",
        "Exemplary service.",
        "You're a living legend.",
        "A beacon of prowess.",
        "General, you're peerless."
    ],
    question: [
        "What's next, General?",
        "How do you achieve this?",
        "What's your secret, General?",
        "Your thoughts on this mission?",
        "How do you stay so sharp?",
        "What motivates you, General?",
        "Can we follow your lead?",
        "How do you inspire excellence?",
        "What's your next move?",
        "How do you plan to top this?"
    ]
};

global.phrasesVenator = {
    welcome: [
        "Welcome back, Venator.",
        "Good to see you, Venator.",
        "You've returned, Venator.",
        "Venator, you're back.",
        "Greetings, Venator.",
        "Well done, Venator.",
        "Welcome, Venator.",
        "Back safe, Venator.",
        "Reporting in, Venator?",
        "Hello, Venator."
    ],
    performance: [
        "Legendary work, Venator.",
        "You surpassed all expectations.",
        "Peerless performance, Venator.",
        "Absolute mastery.",
        "Flying perfection.",
        "A class of your own.",
        "You're a living legend.",
        "Mission flawless.",
        "Incomparable skill.",
        "Exceptional outcome."
    ],
    growth: [
        "You're the ultimate pilot.",
        "An icon of excellence.",
        "Your legend continues.",
        "The fleet's hero.",
        "Venator, you're unrivaled.",
        "Your legacy is eternal.",
        "Ultimate mastery.",
        "A symbol of greatness.",
        "Venator, you're a paragon.",
        "The epitome of skill."
    ],
    question: [
        "How do you keep evolving?",
        "What's the secret to your success?",
        "How do you feel about the mission?",
        "What's your next conquest?",
        "How do you achieve perfection?",
        "What's your strategy, Venator?",
        "Can you share your wisdom?",
        "How do you stay ahead?",
        "What's your next challenge?",
        "How do you define excellence?"
    ]
};
}
// Function to get a phrase based on rank and category
// Function to get a phrase based on rank and category
// Function to get a phrase based on rank and index
function GetPhrase(rank, index) {
    var phrasesArray;

    switch(rank) {
        case 1: phrasesArray = global.phrasesLieutenant; break;
        case 2: phrasesArray = global.phrasesCaptain; break;
        case 3: phrasesArray = global.phrasesMajor; break;
        case 4: phrasesArray = global.phrasesColonel; break;
        case 5: phrasesArray = global.phrasesGeneral; break;
        case 6: phrasesArray = global.phrasesVenator; break;
        default: return "";
    }

    // Check if the index is within bounds of the phrasesArray
    if (index >= 0 && index < array_length(phrasesArray)) {
        return phrasesArray[index];
    } else {
        return "";
    }
}



// Function to display the sentence based on provided indices
// Function to display the sentence based on provided rank
function DisplaySentence(rank) {
	
    var welcomeIndex = irandom_range(0, 9);
    var performanceIndex = irandom_range(0, 9);
    var growthIndex = irandom_range(0, 9);
    var questionIndex = irandom_range(0, 9);
    
    var sentence = "";
    sentence += GetPhrase(rank, welcomeIndex) + " ";
    sentence += GetPhrase(rank, performanceIndex) + " ";
    sentence += GetPhrase(rank, growthIndex) + " ";
    sentence += GetPhrase(rank, questionIndex);
    
    show_message(string_trim(sentence));
}




// Example usage:
// DisplaySentence(1, 0, 1, 2, 3); // For a Lieutenant: "Hey, you're back. Don't screw up next time. You'll get there, maybe. Did you forget how to fly?"
