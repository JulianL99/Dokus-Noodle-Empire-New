// Init macros

function macros(){
	#macro MOUSE_DEPTH -6000
	#macro UI_DEPTH -2000
	#macro PARTICLE_DEPTH -1500
	#macro PICKED_UP_ITEM_DEPTH -1400
	#macro INSTANCES_LAYER "Instances"
	#macro GP_MAIN_BUTTON gp_face1
}

function FinishedIngredient(_itemId, _quality, _spriteRotation, _placementIndex) constructor {
	itemId = _itemId;
	quality = _quality;
	spriteRotation = _spriteRotation;
	placementIndex = _placementIndex;
}