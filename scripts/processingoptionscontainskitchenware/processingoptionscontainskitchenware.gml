// Specialized util function

function processingOptionsContainsKitchenware(_kitchenwareId, _processingOptionsArray){
	for (var i = 0; i < array_length(_processingOptionsArray); i++) {
		var _option = _processingOptionsArray[i];

		if (_option.kitchenwareId == _kitchenwareId) {
			return _option;
		}
	}
	return noone;
}