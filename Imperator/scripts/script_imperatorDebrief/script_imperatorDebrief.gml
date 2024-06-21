
function InitImperatorDebriefs() {
    global.debriefDialogue = {
        difficulty: [],
        rank: [],
        missionTree: [],
		level: [],
        dialogue: []
    };

}
function DisplayDebrief(rank) {
    var sentence = "";
    
    // Always include "welcome" and "performance"
    sentence += GetPhrase(GetPhrasesByRank(rank), "welcome") + " ";
    sentence += GetPhrase(GetPhrasesByRank(rank), "performance") + " ";
    
    // Randomly choose between "growth" and "question"
    var randomNumber = irandom_range(0, 1); // Random number 0 or 1
    
    if (randomNumber == 0) {
        sentence += GetPhrase(GetPhrasesByRank(rank), "growth");
    } else {
        sentence += GetPhrase(GetPhrasesByRank(rank), "question");
    }
    
    return string_trim(sentence);
}



function GetDebriefByRank(rank) {
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




function WrapImperatorDebrief(str, max_width) {
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
