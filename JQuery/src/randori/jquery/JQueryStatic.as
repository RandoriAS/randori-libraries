/***
 * Copyright 2013 LTN Consulting, Inc. /dba Digital PrimatesÂ®
 * 
 * Licensed under the Apache License, Version 2.0 (the 'License');
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * 
 * 
 * !!!! THIS IS A GENERATED FILE, DO NOT MAKE ANY CHANGES TO IT MANUALLY !!!!
 * The XML files at this location: https://github.com/jquery/api.jquery.com were
 * used to generate this class
 * @author Randori JQuery generator
*/
package randori.jquery {
	import randori.webkit.xml.XMLHttpRequest;
	import randori.webkit.dom.Element;
	
	
	[JavaScript(export="false", name="JQuery")]
	public final class JQueryStatic {
		
		/**
		 * Deprecated in jQuery 1.3 (see jQuery.support). States if the current page, in the user's browser, is being rendered using the W3C CSS Box Model.
		 * @since 1.0
		 */
		public static var boxModel:Boolean;
		
		/**
		 * Contains flags for the useragent, read from navigator.userAgent. We recommend against using this property; please try to use feature detection instead (see jQuery.support). jQuery.browser may be moved to a plugin in a future release of jQuery.
		 * @since 1.0
		 */
		public static var browser:Object;
		
		/**
		 * The version number of the rendering engine for the user's browser.
		 * @since 1.1.3
		 */
		public static var version:String;
		
		/**
		 * Hook directly into jQuery to override how particular CSS properties are retrieved or set, normalize CSS property naming, or create custom properties.
		 * @since 1.4.3
		 */
		public static var cssHooks:Object;
		
		/**
		 * The rate (in milliseconds) at which animations fire.
		 * @since 1.4.3
		 */
		public static var interval:Number;
		
		/**
		 * Globally disable all animations.
		 * @since 1.3
		 */
		public static var off:Boolean;
		
		/**
		 * A collection of properties that represent the presence of different browser features or bugs. Primarily intended for jQuery's internal use; specific properties may be removed when they are no longer needed internally to improve page startup performance.
		 * @since 1.3
		 */
		public static var support:Object;
		
		/**
		 * Perform an asynchronous HTTP (Ajax) request.
		 * @since 1.5
		 * @param url A string containing the URL to which the request is sent.
		 * @param settings A set of key/value pairs that configure the Ajax request. All settings are optional. A default can be set for any option with $.ajaxSetup(). See jQuery.ajax( settings ) below for a complete list of all settings.
		 */
		[JavaScriptMethod(name="ajax")]
		public static function ajax1(url:String, settings:Object=null):XMLHttpRequest {
			return null;
		}
		
		/**
		 * Perform an asynchronous HTTP (Ajax) request.
		 * @since 1.0
		 * @param settings A set of key/value pairs that configure the Ajax request. All settings are optional. A default can be set for any option with $.ajaxSetup().
		 */
		[JavaScriptMethod(name="ajax")]
		public static function ajax2(settings:SettingsObject=null):XMLHttpRequest {
			return null;
		}
		
		/**
		 * Handle custom Ajax options or modify existing options before each request is sent and before they are processed by $.ajax().
		 * @since 1.5
		 * @param dataTypes An optional string containing one or more space-separated dataTypes
		 * @param callBack A handler to set default values for future Ajax requests. (The method requires to have the following signature: handler(options,originalOptions,jqXHR))
		 */
		public static function ajaxPrefilter(dataTypes:String='', callBack:Function=null):void {
		}
		
		/**
		 * Set default values for future Ajax requests.
		 * @since 1.1
		 * @param options A set of key/value pairs that configure the default Ajax request. All options are optional.
		 */
		public static function ajaxSetup(options:Object):void {
		}
		
		/**
		 * Creates an object that handles the actual transmission of Ajax data.
		 * @since 1.5
		 * @param dataType A string identifying the data type to use
		 * @param callBack A handler to return the new transport object to use with the data type provided in the first argument. (The method requires to have the following signature: handler(options,originalOptions,jqXHR))
		 */
		public static function ajaxTransport(dataType:String, callBack:Function):void {
		}
		
		/**
		 * A multi-purpose callbacks list object that provides a powerful way to manage callback lists.
		 * @since 1.7
		 * @param flags An optional list of space-separated flags that change how the callback list behaves.
		 */
		[JavaScriptMethod(name="Callbacks")]
		public static function callbacks(flags:String):Callbacks {
			return null;
		}
		
		/**
		 * Check to see if a DOM element is a descendant of another DOM element.
		 * @since 1.4
		 * @param container The DOM element that may contain the other element.
		 * @param contained The DOM element that may be contained by (a descendant of) the other element.
		 */
		public static function contains(container:Element, contained:Element):Boolean {
			return false;
		}
		
		/**
		 * Store arbitrary data associated with the specified element. Returns the value that was set.
		 * @since 1.2.3
		 * @param element The DOM element to associate with the data.
		 * @param key A string naming the piece of data to set.
		 * @param value The new data value.
		 */
		[JavaScriptMethod(name="data")]
		public static function data1(element:Element, key:String, value:Object):Object {
			return null;
		}
		
		/**
		 * Returns value at named data store for the element, as set by jQuery.data(element, name, value), or the full data store for the element.
		 * @since 1.2.3
		 * @param element The DOM element to query for the data.
		 * @param key Name of the data stored.
		 */
		[JavaScriptMethod(name="data")]
		public static function data2(element:Element, key:String):Object {
			return null;
		}
		
		/**
		 * Returns value at named data store for the element, as set by jQuery.data(element, name, value), or the full data store for the element.
		 * @since 1.4
		 * @param element The DOM element to query for the data.
		 */
		[JavaScriptMethod(name="data")]
		public static function data3(element:Element):Object {
			return null;
		}
		
		/**
		 * A constructor function that returns a chainable utility object with methods to register multiple callbacks into callback queues, invoke callback queues, and relay the success or failure state of any synchronous or asynchronous function.
		 * @since 1.5
		 * @param beforeStart A function that is called just before the constructor returns.
		 */
		[JavaScriptMethod(name="Deferred")]
		public static function deferred(beforeStart:Function=null):Deferred {
			return null;
		}
		
		/**
		 * Execute the next function on the queue for the matched element.
		 * @since 1.3
		 * @param element A DOM element from which to remove and execute a queued function.
		 * @param queueName A string containing the name of the queue. Defaults to fx, the standard effects queue.
		 */
		public static function dequeue(element:Element, queueName:String=''):void {
		}
		
		/**
		 * A generic iterator function, which can be used to seamlessly iterate over both objects and arrays. Arrays and array-like objects with a length property (such as a function's arguments object) are iterated by numeric index, from 0 to length-1. Other objects are iterated via their named properties.
		 * @since 1.0
		 * @param collection The object or array to iterate over.
		 * @param callBack The function that will be executed on every object. (The method requires to have the following signature: callback(indexInArray,valueOfElement))
		 */
		public static function each(collection:Object, callBack:Function):Object {
			return null;
		}
		
		/**
		 * Takes a string and throws an exception containing it.
		 * @since 1.4.1
		 * @param message The message to send out.
		 */
		public static function error(message:String):void {
		}
		
		/**
		 * Merge the contents of two or more objects together into the first object.
		 * @since 1.0
		 * @param target An object that will receive the new properties if additional objects are passed in or that will extend the jQuery namespace if it is the sole argument.
		 * @param object1 An object containing additional properties to merge in.
		 * @param objectN Additional objects containing properties to merge in.
		 */
		[JavaScriptMethod(name="extend")]
		public static function extend1(target:Object, object1:Object=null, objectN:Object=null):Object {
			return null;
		}
		
		/**
		 * Merge the contents of two or more objects together into the first object.
		 * @since 1.1.4
		 * @param deep If true, the merge becomes recursive (aka. deep copy).
		 * @param target The object to extend. It will receive the new properties.
		 * @param object1 An object containing additional properties to merge in.
		 * @param objectN Additional objects containing properties to merge in.
		 */
		[JavaScriptMethod(name="extend")]
		public static function extend2(deep:Boolean=false, target:Object=null, object1:Object=null, objectN:Object=null):Object {
			return null;
		}
		
		/**
		 * Load data from the server using a HTTP GET request.
		 * @since 1.0
		 * @param url A string containing the URL to which the request is sent.
		 * @param data A plain object or string that is sent to the server with the request.
		 * @param callBack A callback function that is executed if the request succeeds. (The method requires to have the following signature: success(data,textStatus,jqXHR))
		 * @param dataType The type of data expected from the server. Default: Intelligent Guess (xml, json, script, or html).
		 */
		public static function get(url:String, data:*=null, callBack:Function=null, dataType:String=''):XMLHttpRequest {
			return null;
		}
		
		/**
		 * Load JSON-encoded data from the server using a GET HTTP request.
		 * @since 1.0
		 * @param url A string containing the URL to which the request is sent.
		 * @param data A plain object or string that is sent to the server with the request.
		 * @param callBack A callback function that is executed if the request succeeds. (The method requires to have the following signature: success(data,textStatus,jqXHR))
		 */
		public static function getJSON(url:String, data:Object=null, callBack:Function=null):XMLHttpRequest {
			return null;
		}
		
		/**
		 * Load a JavaScript file from the server using a GET HTTP request, then execute it.
		 * @since 1.0
		 * @param url A string containing the URL to which the request is sent.
		 * @param callBack A callback function that is executed if the request succeeds. (The method requires to have the following signature: success(script,textStatus,jqXHR))
		 */
		public static function getScript(url:String, callBack:Function=null):XMLHttpRequest {
			return null;
		}
		
		/**
		 * Execute some JavaScript code globally.
		 * @since 1.0.4
		 * @param code The JavaScript code to execute.
		 */
		public static function globalEval(code:String):void {
		}
		
		/**
		 * Finds the elements of an array which satisfy a filter function. The original array is not affected.
		 * @since 1.0
		 * @param array The array to search through.
		 * @param callBack The function to process each item against.  The first argument to the function is the item, and the second argument is the index.  The function should return a Boolean value.  this will be the global window object. (The method requires to have the following signature: function(elementOfArray,indexInArray))
		 * @param invert If "invert" is false, or not provided, then the function returns an array consisting of all elements for which "callback" returns true.  If "invert" is true, then the function returns an array consisting of all elements for which "callback" returns false.
		 */
		public static function grep(array:Array, callBack:Function, invert:Boolean=false):Array {
			return null;
		}
		
		/**
		 * Determine whether an element has any jQuery data associated with it.
		 * @since 1.5
		 * @param element A DOM element to be checked for data.
		 */
		public static function hasData(element:Element):Boolean {
			return false;
		}
		
		/**
		 * Holds or releases the execution of jQuery's ready event.
		 * @since 1.6
		 * @param hold Indicates whether the ready hold is being requested or released
		 */
		public static function holdReady(hold:Boolean):void {
		}
		
		/**
		 * Search for a specified value within an array and return its index (or -1 if not found).
		 * @since 1.2
		 * @param value The value to search for.
		 * @param array An array through which to search.
		 * @param fromIndex The index of the array at which to begin the search. The default is 0, which will search the whole array.
		 */
		public static function inArray(value:*, array:Array, fromIndex:Number=0):Number {
			return 0;
		}
		
		/**
		 * Determine whether the argument is an array.
		 * @since 1.3
		 * @param obj Object to test whether or not it is an array.
		 */
		public static function isArray(obj:Object):Boolean {
			return false;
		}
		
		/**
		 * Check to see if an object is empty (contains no enumerable properties).
		 * @since 1.4
		 * @param object The object that will be checked to see if it's empty.
		 */
		public static function isEmptyObject(object:Object):Boolean {
			return false;
		}
		
		/**
		 * Determine if the argument passed is a Javascript function object.
		 * @since 1.2
		 * @param obj Object to test whether or not it is a function.
		 */
		public static function isFunction(obj:Object):Boolean {
			return false;
		}
		
		/**
		 * Determines whether its argument is a number.
		 * @since 1.7
		 * @param value The value to be tested.
		 */
		public static function isNumeric(value:Object):Boolean {
			return false;
		}
		
		/**
		 * Check to see if an object is a plain object (created using "{}" or "new Object").
		 * @since 1.4
		 * @param object The object that will be checked to see if it's a plain object.
		 */
		public static function isPlainObject(object:Object):Boolean {
			return false;
		}
		
		/**
		 * Determine whether the argument is a window.
		 * @since 1.4.3
		 * @param obj Object to test whether or not it is a window.
		 */
		public static function isWindow(obj:Object):Boolean {
			return false;
		}
		
		/**
		 * Check to see if a DOM node is within an XML document (or is an XML document).
		 * @since 1.1.4
		 * @param node The DOM node that will be checked to see if it's in an XML document.
		 */
		public static function isXMLDoc(node:Element):Boolean {
			return false;
		}
		
		/**
		 * Convert an array-like object into a true JavaScript array.
		 * @since 1.2
		 * @param obj Any object to turn into a native Array.
		 */
		public static function makeArray(obj:Object):Array {
			return null;
		}
		
		/**
		 * Translate all items in an array or object to new array of items.
		 * @since 1.0
		 * @param array The Array to translate.
		 * @param callBack The function to process each item against.  The first argument to the function is the array item, the second argument is the index in array The function can return any value. Within the function, this refers to the global (window) object. (The method requires to have the following signature: callback(elementOfArray,indexInArray))
		 */
		[JavaScriptMethod(name="map")]
		public static function map1(array:Array, callBack:Function):Array {
			return null;
		}
		
		/**
		 * Translate all items in an array or object to new array of items.
		 * @since 1.6
		 * @param arrayOrObject The Array or Object to translate.
		 * @param callBack The function to process each item against.  The first argument to the function is the value; the second argument is the index or key of the array or object property. The function can return any value to add to the array. A returned array will be flattened into the resulting array. Within the function, this refers to the global (window) object. (The method requires to have the following signature: callback(value,indexOrKey))
		 */
		[JavaScriptMethod(name="map")]
		public static function map2(arrayOrObject:*, callBack:Function):Array {
			return null;
		}
		
		/**
		 * Merge the contents of two arrays together into the first array.
		 * @since 1.0
		 * @param first The first array to merge, the elements of second added.
		 * @param second The second array to merge into the first, unaltered.
		 */
		public static function merge(first:Array, second:Array):Array {
			return null;
		}
		
		/**
		 * Relinquish jQuery's control of the $ variable.
		 * @since 1.0
		 * @param removeAll A Boolean indicating whether to remove all jQuery variables from the global scope (including jQuery itself).
		 */
		public static function noConflict(removeAll:Boolean=false):Object {
			return null;
		}
		
		/**
		 * An empty function.
		 * @since 1.4
		 */
		public static function noop():void {
		}
		
		/**
		 * Return a number representing the current time.
		 * @since 1.4.3
		 */
		public static function now():Number {
			return 0;
		}
		
		/**
		 * Create a serialized representation of an array or object, suitable for use in a URL query string or Ajax request.
		 * @since 1.2
		 * @param obj An array or object to serialize.
		 */
		[JavaScriptMethod(name="param")]
		public static function param1(obj:*):String {
			return '';
		}
		
		/**
		 * Create a serialized representation of an array or object, suitable for use in a URL query string or Ajax request.
		 * @since 1.4
		 * @param obj An array or object to serialize.
		 * @param traditional A Boolean indicating whether to perform a traditional "shallow" serialization.
		 */
		[JavaScriptMethod(name="param")]
		public static function param2(obj:*, traditional:Boolean):String {
			return '';
		}
		
		/**
		 * Parses a string into an array of DOM nodes.
		 * @since 1.8
		 * @param data HTML string to be parsed
		 * @param context DOM element to serve as the context in which the HTML fragment will be created
		 * @param keepScripts A Boolean indicating whether to include scripts passed in the HTML string
		 */
		public static function parseHTML(data:String, context:Element=null, keepScripts:Boolean=false):Array {
			return null;
		}
		
		/**
		 * Takes a well-formed JSON string and returns the resulting JavaScript object.
		 * @since 1.4.1
		 * @param json The JSON string to parse.
		 */
		public static function parseJSON(json:String):Object {
			return null;
		}
		
		/**
		 * Parses a string into an XML document.
		 * @since 1.5
		 * @param data a well-formed XML string to be parsed
		 */
		public static function parseXML(data:String):Element {
			return null;
		}
		
		/**
		 * Load data from the server using a HTTP POST request.
		 * @since 1.0
		 * @param url A string containing the URL to which the request is sent.
		 * @param data A plain object or string that is sent to the server with the request.
		 * @param callBack A callback function that is executed if the request succeeds. (The method requires to have the following signature: success(data,textStatus,jqXHR))
		 * @param dataType The type of data expected from the server. Default: Intelligent Guess (xml, json, script, text, html).
		 */
		public static function post(url:String, data:*=null, callBack:Function=null, dataType:String=''):XMLHttpRequest {
			return null;
		}
		
		/**
		 * Takes a function and returns a new one that will always have a particular context.
		 * @since 1.4
		 * @param callBack The function whose context will be changed.
		 * @param context The object to which the context (this) of the function should be set.
		 */
		[JavaScriptMethod(name="proxy")]
		public static function proxy1(callBack:Function, context:Object):Function {
			return null;
		}
		
		/**
		 * Takes a function and returns a new one that will always have a particular context.
		 * @since 1.4
		 * @param context The object to which the context of the function should be set.
		 * @param name The name of the function whose context will be changed (should be a property of the context object).
		 */
		[JavaScriptMethod(name="proxy")]
		public static function proxy2(context:Object, name:String):Function {
			return null;
		}
		
		/**
		 * Takes a function and returns a new one that will always have a particular context.
		 * @since 1.6
		 * @param callBack The function whose context will be changed.
		 * @param context The object to which the context (this) of the function should be set.
		 * @param additionalArguments Any number of arguments to be passed to the function referenced in the function argument.
		 */
		[JavaScriptMethod(name="proxy")]
		public static function proxy3(callBack:Function, context:Object, additionalArguments:*=null):Function {
			return null;
		}
		
		/**
		 * Takes a function and returns a new one that will always have a particular context.
		 * @since 1.6
		 * @param context The object to which the context of the function should be set.
		 * @param name The name of the function whose context will be changed (should be a property of the context object).
		 * @param additionalArguments Any number of arguments to be passed to the function named in the name argument.
		 */
		[JavaScriptMethod(name="proxy")]
		public static function proxy4(context:Object, name:String, additionalArguments:*=null):Function {
			return null;
		}
		
		/**
		 * Show the queue of functions to be executed on the matched element.
		 * @since 1.3
		 * @param element A DOM element to inspect for an attached queue.
		 * @param queueName A string containing the name of the queue. Defaults to fx, the standard effects queue.
		 */
		[JavaScriptMethod(name="queue")]
		public static function queue1(element:Element, queueName:String=''):Array {
			return null;
		}
		
		/**
		 * Manipulate the queue of functions to be executed on the matched element.
		 * @since 1.3
		 * @param element A DOM element where the array of queued functions is attached.
		 * @param queueName A string containing the name of the queue. Defaults to fx, the standard effects queue.
		 * @param newQueue An array of functions to replace the current queue contents.
		 */
		[JavaScriptMethod(name="queue")]
		public static function queue2(element:Element, queueName:String, newQueue:Array):JQuery {
			return null;
		}
		
		/**
		 * Manipulate the queue of functions to be executed on the matched element.
		 * @since 1.3
		 * @param element A DOM element on which to add a queued function.
		 * @param queueName A string containing the name of the queue. Defaults to fx, the standard effects queue.
		 * @param callBack The new function to add to the queue. (The method requires to have the following signature: callback())
		 */
		[JavaScriptMethod(name="queue")]
		public static function queue3(element:Element, queueName:String, callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Remove a previously-stored piece of data.
		 * @since 1.2.3
		 * @param element A DOM element from which to remove data.
		 * @param name A string naming the piece of data to remove.
		 */
		public static function removeData(element:Element, name:String=''):JQuery {
			return null;
		}
		
		/**
		 * Creates a new copy of jQuery whose properties and methods can be modified without affecting the original jQuery object.
		 * @since 1.5
		 */
		public static function sub():JQuery {
			return null;
		}
		
		/**
		 * Remove the whitespace from the beginning and end of a string.
		 * @since 1.0
		 * @param str The string to trim.
		 */
		public static function trim(str:String):String {
			return '';
		}
		
		/**
		 * Determine the internal JavaScript [[Class]] of an object.
		 * @since 1.4.3
		 * @param obj Object to get the internal JavaScript [[Class]] of.
		 */
		public static function type(obj:Object):String {
			return '';
		}
		
		/**
		 * Sorts an array of DOM elements, in place, with the duplicates removed. Note that this only works on arrays of DOM elements, not strings or numbers.
		 * @since 1.1.3
		 * @param array The Array of DOM elements.
		 */
		public static function unique(array:Array):Array {
			return null;
		}
		
		/**
		 * Provides a way to execute callback functions based on one or more objects, usually Deferred objects that represent asynchronous events.
		 * @since 1.5
		 * @param deferreds One or more Deferred objects, or plain JavaScript objects.
		 */
		public static function when(deferreds:Deferred):Promise {
			return null;
		}
		
		public static function ajax(...params):* {
			return null;
		}
		
		public static function data(...params):* {
			return null;
		}
		
		public static function extend(...params):* {
			return null;
		}
		
		public static function map(...params):* {
			return null;
		}
		
		public static function param(...params):* {
			return null;
		}
		
		public static function proxy(...params):* {
			return null;
		}
		
		public static function queue(...params):* {
			return null;
		}
		
		[JavaScriptMethod(name="")]
		public static function J(...params):JQuery {
			return null;
		}
	}
}
