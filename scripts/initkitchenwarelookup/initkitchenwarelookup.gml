// Init Kitchenware Lookup

function initKitchenwareLookup(){
	
	function Kitchenware(_kitchenwareId, _kitchenwareSprite, _kitchenwareOutlineSprite) constructor {
		itemId = _kitchenwareId;
		itemSprite = _kitchenwareSprite;
		itemOutlineSprite = _kitchenwareOutlineSprite;
	}
	
	var lookup = array_create(KITCHENWARE.total);
	
	lookup[KITCHENWARE.pan] = new Kitchenware(KITCHENWARE.pan, s_cooking_pan_large, noone);
	
	lookup[KITCHENWARE.pot] = new Kitchenware(KITCHENWARE.pot, s_cooking_boiling_pot_animation, noone);
	
	return lookup;
}