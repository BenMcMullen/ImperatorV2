// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetCommendations(){
	var commendationTarget = global.playerInformation.rank.commendationTarget;
	var playerCommendations = global.playerInformation.commendations;
	var remainingCommendations = commendationTarget - playerCommendations;

	return remainingCommendations;
}