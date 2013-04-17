package core {
	[JavaScript(export="false", name="JSON")]
	public class JSON {
		/** 
		 * Convert a value to JSON
		 * 
		 * value:Object - The value to convert to a JSON string.
		 **/
		public static function stringify( value:Object ):String {
			return null;
		}
		
		/** Convert a value to JSON including only the specified properties in the replacer array
		 * 
		 * value:Object - The value to convert to a JSON string.
		 * 
		 * replacer:Array - Specifies the set of properties included in objects in the final string.
		 * 
		 * space:* - The space argument may be used to control spacing in the final string. If it is a number, 
		 * successive levels in the stringification will each be indented by this many space characters (up to 10). 
		 * If it is a string, successive levels will indented by this string (or the first ten characters of it).
		 **/ 
		public static function stringifyReplacerArray( value:Object, replacer:Array, space:*=null ):String {
			return null;
		}

		/** Convert a value to JSON including only the specified properties in the replacer array
		 *
		 * value:Object - The value to convert to a JSON string.
		 *  
		 * replacer:Function - transforms values and properties encountered while stringifying. It takes two parameters, 
		 * the key and the value being stringified. Initially it gets called with an empty key representing the object being stringified, 
		 * and it then gets called for each property on the object or array being stringified. It should return the value that should 
		 * be added to the JSON string, as follows:
		 * 
		 * If you return a Number, the string corresponding to that number is used as the value for the property when added to the JSON string.
		 * If you return a String, that string is used as the property's value when adding it to the JSON string.
		 * If you return a Boolean, "true" or "false" is used as the property's value, as appropriate, when adding it to the JSON string.
		 * If you return any other object, the object is recursively stringified into the JSON string, calling the replacer function on each property, 
		 * unless the object is a function, in which case nothing is added to the JSON string.
		 * If you return undefined, the property is not included in the output JSON string.
		 * 
		 * function censor(key, value) {
		 * 	if (typeof(value) == "string") {
		 * 		return undefined;
		 * 	}
		 * 	return value;
		 * }
		 * 
		 * __Note: You cannot use the replacer function to remove values from an array. If you return undefined or a function then null is used instead.
		 * 
		 * space:* - The space argument may be used to control spacing in the final string. If it is a number, 
		 * successive levels in the stringification will each be indented by this many space characters (up to 10). 
		 * If it is a string, successive levels will indented by this string (or the first ten characters of it).
		 **/ 
		public static function stringifyReplacerFunction( value:Object, replacer:Function, space:*=null ):String {
			return null;
		}

		/** JSON.parse parses a string as JSON and returns the parsed value.
		 * 
		 * text:String - Data in JSON format
		 * 
		 **/
		public static function parse( text:String ):Object {
			return null;
		}

		/** JSON.parse parses a string as JSON and returns the parsed value.
		 * 
		 * text:String - Data in JSON format
		 * 
		 * revivier:Function - the value computed by parsing is transformed before being returned. Specifically, the 
		 * computed value, and all its properties (beginning with the most nested properties and proceeding to the original 
		 * value itself), are individually run through the reviver, which is called with the object containing the property 
		 * being processed as this and with the property name as a string and the property value as arguments. If the 
		 * reviver function returns undefined (or returns no value, e.g. if execution falls off the end of the function), 
		 * the property is deleted from the object. Otherwise the property is redefined to be the return value.
		 * 
		 * The reviver is ultimately called with the empty string and the topmost value to permit transformation of the 
		 * topmost value.  Be certain to handle this case properly, usually by returning the provided value, or JSON.parse 
		 * will return undefined.
		 * 
		 * var transformed = JSON.parse('{"p": 5}', function(k, v) { if (k === "") return v; return v * 2; });
		 * // transformed is { p: 10 }
		 * 
		 **/
		public static function parseReviver( text:String, reviver:Function ):Object {
			return null;
		}

		public function JSON() {
		}
	}
}