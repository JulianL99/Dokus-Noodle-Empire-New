// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getSpriteForRecipeStatus(_status){
	switch (_status) {
		case RECIPE_STATUS.incomplete:
			return s_ui_cooking_progress_box_blank;
		case RECIPE_STATUS.correct:
			return s_ui_cooking_progress_box_check;
		case RECIPE_STATUS.incorrect:
			return s_ui_cooking_progress_box_red_x;
	}
	return noone;
}