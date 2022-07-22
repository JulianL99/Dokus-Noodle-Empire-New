// Specialized util function

function processingOptionsContainsKitchenware(_kitchenwareId, _processingOptionsArray){
	for (var i = 0; i < array_length(_processingOptionsArray); i++) {
		var _option = _processingOptionsArray[i];
		show_debug_message(_option)

		if (_option.kitchenwareId == _kitchenwareId) {
			return _option;
		}
	}
	return noone;
}