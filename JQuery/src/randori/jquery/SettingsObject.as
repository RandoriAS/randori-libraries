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
	
	
	[JavaScript(export="false")]
	public class SettingsObject {
		
		/**
		 * The content type sent in the request header that tells the server what kind of response it will accept in return. If the accepts setting needs modification, it is recommended to do so once in the $.ajaxSetup() method.
		 */
		public var accepts:Object;
		
		/**
		 * By default, all requests are sent asynchronously (i.e. this is set to true by default). If you need synchronous requests, set this option to false. Cross-domain requests and dataType: "jsonp" requests do not support synchronous operation. Note that synchronous requests may temporarily lock the browser, disabling any actions while the request is active. As of jQuery 1.8, the use of  async: false  with jqXHR ($.Deferred) is deprecated; you must use the success/error/complete callback options instead of the corresponding methods of the jqXHR object such as jqXHR.done() or the deprecated jqXHR.success().
		 */
		public var async:Boolean;
		
		/**
		 * A pre-request callback function that can be used to modify the jqXHR (in jQuery 1.4.x, XMLHTTPRequest) object before it is sent. Use this to set custom headers, etc. The jqXHR and settings objects are passed as arguments. This is an Ajax Event. Returning false in the beforeSend function will cancel the request. As of jQuery 1.5, the beforeSend option will be called regardless of the type of request.
		 */
		public var beforeSend:Function;
		
		/**
		 * If set to false, it will force requested pages not to be cached by the browser. Note: Setting cache to false will only work correctly with HEAD and GET requests. It works by appending "_={timestamp}" to the GET parameters. The parameter is not needed for other types of requests, except in IE8 when a POST is made to a URL that has already been requested by a GET.
		 */
		public var cache:Boolean;
		
		/**
		 * A function to be called when the request finishes (after success and error callbacks are executed). The function gets passed two arguments: The jqXHR (in jQuery 1.4.x, XMLHTTPRequest) object and a string categorizing the status of the request ("success", "notmodified", "error", "timeout", "abort", or "parsererror"). As of jQuery 1.5, the complete setting can accept an array of functions. Each function will be called in turn. This is an Ajax Event.
		 */
		public var complete:Function;
		
		/**
		 * An object of string/regular-expression pairs that determine how jQuery will parse the response, given its content type.
		 */
		public var contents:Object;
		
		/**
		 * When sending data to the server, use this content type. Default is "application/x-www-form-urlencoded; charset=UTF-8", which is fine for most cases. If you explicitly pass in a content-type to $.ajax(), then it'll always be sent to the server (even if no data is sent). If no charset is specified, data will be transmitted to the server using the server's default charset; you must decode this appropriately on the server side.
		 */
		public var contentType:String;
		
		/**
		 * This object will be made the context of all Ajax-related callbacks. By default, the context is an object that represents the ajax settings used in the call ($.ajaxSettings merged with the settings passed to $.ajax). For example,  specifying a DOM element as the context will make that the context for the complete callback of a request, like so: $.ajax({
		 *   url: "test.html",
		 *   context: document.body
		 * }).done(function() {
		 *   $(this).addClass("done");
		 * });
		 */
		public var context:Object;
		
		/**
		 * An object containing dataType-to-dataType converters. Each converter's value is a function that returns the transformed value of the response.
		 */
		public var converters:Object;
		
		/**
		 * If you wish to force a crossDomain request (such as JSONP) on the same domain, set the value of crossDomain to true. This allows, for example, server-side redirection to another domain.
		 */
		public var crossDomain:Boolean;
		
		/**
		 * Data to be sent to the server. It is converted to a query string, if not already a string. It's appended to the url for GET-requests. See processData option to prevent this automatic processing. Object must be Key/Value pairs. If value is an Array, jQuery serializes multiple values with same key based on the value of the traditional setting (described below).
		 */
		public var data:*;
		
		/**
		 * A function to be used to handle the raw response data of XMLHttpRequest.This is a pre-filtering function to sanitize the response. You should return the sanitized data. The function accepts two arguments: The raw data returned from the server and the 'dataType' parameter.
		 */
		public var dataFilter:Function;
		
		/**
		 * The type of data that you're expecting back from the server. If none is specified, jQuery will try to infer it based on the MIME type of the response (an XML MIME type will yield XML, in 1.4 JSON will yield a JavaScript object, in 1.4 script will execute the script, and anything else will be returned as a string). The available types (and the result passed as the first argument to your success callback) are:
		 *           "xml": Returns a XML document that can be processed via jQuery."html": Returns HTML as plain text; included script tags are evaluated when inserted in the DOM."script": Evaluates the response as JavaScript and returns it as plain text. Disables caching by appending a query string parameter, "_=[TIMESTAMP]", to the URL unless the cache option is set to true. Note: This will turn POSTs into GETs for remote-domain requests. "json": Evaluates the response as JSON and returns a JavaScript object. In jQuery 1.4 the JSON data is parsed in a strict manner; any malformed JSON is rejected and a parse error is thrown. (See json.org for more information on proper JSON formatting.)"jsonp": Loads in a JSON block using JSONP. Adds an extra "?callback=?" to the end of your URL to specify the callback. Disables caching by appending a query string parameter, "_=[TIMESTAMP]", to the URL unless the cache option is set to true."text": A plain text string.multiple, space-separated values: As of jQuery 1.5, jQuery can convert a dataType from what it received in the Content-Type header to what you require. For example, if you want a text response to be treated as XML, use "text xml" for the dataType. You can also make a JSONP request, have it received as text, and interpreted by jQuery as XML: "jsonp text xml." Similarly, a shorthand string such as "jsonp xml" will first attempt to convert from jsonp to xml, and, failing that, convert from jsonp to text, and then from text to xml.
		 *             
		 */
		public var dataType:String;
		
		/**
		 * A function to be called if the request fails. The function receives three arguments: The jqXHR (in jQuery 1.4.x, XMLHttpRequest) object, a string describing the type of error that occurred and an optional exception object, if one occurred. Possible values for the second argument (besides null) are "timeout", "error", "abort", and "parsererror". When an HTTP error occurs, errorThrown receives the textual portion of the HTTP status, such as "Not Found" or "Internal Server Error."  As of jQuery 1.5, the error setting can accept an array of functions. Each function will be called in turn.  Note:This handler is not called for cross-domain script and JSONP requests. This is an Ajax Event. 
		 */
		public var error:Function;
		
		/**
		 * Whether to trigger global Ajax event handlers for this request. The default is true. Set to false to prevent the global handlers like ajaxStart or ajaxStop from being triggered. This can be used to control various Ajax Events.
		 */
		public var global:Boolean;
		
		/**
		 * An object of additional header key/value pairs to send along with the request. This setting is set before the beforeSend function is called; therefore, any values in the headers setting can be overwritten from within the beforeSend function.
		 */
		public var headers:Object;
		
		/**
		 * Allow the request to be successful only if the response has changed since the last request. This is done by checking the Last-Modified header. Default value is false, ignoring the header. In jQuery 1.4 this technique also checks the 'etag' specified by the server to catch unmodified data.
		 */
		public var ifModified:Boolean;
		
		/**
		 * Allow the current environment to be recognized as "local," (e.g. the filesystem), even if jQuery does not recognize it as such by default. The following protocols are currently recognized as local: file, *-extension, and widget. If the isLocal setting needs modification, it is recommended to do so once in the $.ajaxSetup() method.  
		 */
		public var isLocal:Boolean;
		
		/**
		 * Override the callback function name in a jsonp request.  This value will be used instead of 'callback' in the 'callback=?' part of the query string in the url.  So {jsonp:'onJSONPLoad'} would result in 'onJSONPLoad=?' passed to the server. As of jQuery 1.5, setting the jsonp option to false prevents jQuery from adding the "?callback" string to the URL or attempting to use "=?" for transformation. In this case, you should also explicitly set the jsonpCallback setting. For example, { jsonp: false, jsonpCallback: "callbackName" }
		 */
		public var jsonp:String;
		
		/**
		 * Specify the callback function name for a JSONP request.  This value will be used instead of the random name automatically generated by jQuery. It is preferable to let jQuery generate a unique name as it'll make it easier to manage the requests and provide callbacks and error handling. You may want to specify the callback when you want to enable better browser caching of GET requests. As of jQuery 1.5, you can also use a function for this setting, in which case the value of jsonpCallback is set to the return value of that function. 
		 */
		public var jsonpCallback:*;
		
		/**
		 * A mime type to override the XHR mime type.
		 */
		public var mimeType:String;
		
		/**
		 * A password to be used in response to an HTTP access authentication request.
		 */
		public var password:String;
		
		/**
		 * By default, data passed in to the data option as an object (technically, anything other than a string) will be processed and transformed into a query string, fitting to the default content-type "application/x-www-form-urlencoded". If you want to send a DOMDocument, or other non-processed data, set this option to false.
		 */
		public var processData:Boolean;
		
		/**
		 * Only applies when the "script" transport is used (e.g., cross-domain requests with "jsonp" or "script" dataType and "GET" type). Sets the charset attribute on the script tag used in the request. Used when the character set on the local page is not the same as the one on the remote script.
		 */
		public var scriptCharset:String;
		
		/**
		 * An object of numeric HTTP codes and functions to be called when the response has the corresponding code. For example, the following will alert when the response status is a 404:$.ajax({
		 *   statusCode: {
		 *     404: function() {
		 *       alert("page not found");
		 *     }
		 *   }
		 * });If the request is successful, the status code functions take the same parameters as the success callback; if it results in an error, they take the same parameters as the error callback.
		 */
		public var statusCode:Object;
		
		/**
		 * A function to be called if the request succeeds. The function gets passed three arguments: The data returned from the server, formatted according to the dataType parameter; a string describing the status; and the jqXHR (in jQuery 1.4.x, XMLHttpRequest) object. As of jQuery 1.5, the success setting can accept an array of functions. Each function will be called in turn. This is an Ajax Event.
		 */
		public var success:Function;
		
		/**
		 * Set a timeout (in milliseconds) for the request. This will override any global timeout set with $.ajaxSetup(). The timeout period starts at the point the $.ajax call is made; if several other requests are in progress and the browser has no connections available, it is possible for a request to time out before it can be sent. In jQuery 1.4.x and below, the XMLHttpRequest object will be in an invalid state if the request times out; accessing any object members may throw an exception. In Firefox 3.0+ only, script and JSONP requests cannot be cancelled by a timeout; the script will run even if it arrives after the timeout period.
		 */
		public var timeout:Number;
		
		/**
		 * Set this to true if you wish to use the traditional style of param serialization.
		 */
		public var traditional:Boolean;
		
		/**
		 * The type of request to make ("POST" or "GET"), default is "GET". Note: Other HTTP request methods, such as PUT and DELETE, can also be used here, but they are not supported by all browsers.
		 */
		public var type:String;
		
		/**
		 *  A string containing the URL to which the request is sent.
		 */
		public var url:String;
		
		/**
		 * A username to be used in response to an HTTP access authentication request.
		 */
		public var username:String;
		
		/**
		 * Callback for creating the XMLHttpRequest object. Defaults to the ActiveXObject when available (IE), the XMLHttpRequest otherwise. Override to provide your own implementation for XMLHttpRequest or enhancements to the factory.
		 */
		public var xhr:Function;
		
		/**
		 * An object of fieldName-fieldValue pairs to set on the native XHR object. For example, you can use it to set withCredentials to true for cross-domain requests if needed.
		 * $.ajax({
		 *    url: a_cross_domain_url,
		 *    xhrFields: {
		 *       withCredentials: true
		 *    }
		 * });In jQuery 1.5, the withCredentials property was not propagated to the native XHR and thus CORS requests requiring it would ignore this flag. For this reason, we recommend using jQuery 1.5.1+ should you require the use of it.
		 * 
		 */
		public var xhrFields:Object;
	}
}
