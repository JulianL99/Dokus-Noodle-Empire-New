// Init macros

function macros(){
	#macro MOUSE_DEPTH -6000
	#macro UI_DEPTH -1000
	#macro INSTANCES_LAYER "Instances"
	#macro GP_MAIN_BUTTON gp_face1
}

function FinishedIngredient(_itemId, _quality, _spriteRotation, _placementIndex) constructor {
	itemId = _itemId;
	quality = _quality;
	spriteRotation = _spriteRotation;
	placementIndex = _placementIndex;
}