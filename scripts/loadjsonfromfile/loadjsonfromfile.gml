/// @descriptionLoads JSON data from a save file
/// @arg filename
// Credit: Shaun Spalding - https://www.youtube.com/watch?v=QmxQb1BFQRE

function loadJSONFromFile(_filename) {
	try {
		var _file = file_text_open_read(working_directory + _filename);
		var _string = "";
		
		while (!file_text_eof(_file)) {
			_string += file_text_read_string(_file);
			file_text_readln(_file);
		}

		var _json = json_parse(_string);
		file_text_close(_file);
		return _json;
	}
	catch (err) {
		return noone;
	}
}