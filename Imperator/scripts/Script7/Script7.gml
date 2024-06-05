// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script7(){
	// @description Fade out a specific word in the text
/// @param text The original text string
/// @param word The word to fade out
/// @param fadeSpeed The speed at which the word fades out (default: 0.01)
/// @param blendFactor The blending factor for fading (default: 0)
/// @return The modified text string with the word faded out

/// Fade out function
var fadeOutWord = function(text, word, fadeSpeed, blendFactor) {
    if (argument_count < 3) fadeSpeed = 0.01;
    if (argument_count < 4) blendFactor = 0;
    
    var words = string_word_count(text);
    var newText = "";
    
    for (var i = 0; i < words; i++) {
        var currentWord = string_word_at(text, i);
        if (currentWord == word) {
            var fadedColor = merge_color(c_white, c_white, 0.5 - blendFactor);
            newText += "<c=" + string(fadedColor) + ">" + currentWord + "</c>";
        } else {
            newText += currentWord;
        }
        if (i < words - 1) newText += " ";
    }
    
    return newText;
}

}