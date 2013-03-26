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
	import randori.webkit.dom.Element;
	import randori.webkit.dom.Document;
	
	
	[JavaScript(export="false")]
	public class JQuery {
		
		/**
		 * The DOM node context originally passed to jQuery(); if none was passed then context will likely be the document.
		 * @since 1.3
		 */
		public var context:Element;
		
		/**
		 * A string containing the jQuery version number.
		 * @since 1.0
		 */
		public var jquery:String;
		
		/**
		 * The number of elements in the jQuery object.
		 * @since 1.0
		 */
		public var length:Number;
		
		/**
		 * A selector representing selector originally passed to jQuery().
		 * @since 1.3
		 */
		public var selector:String;
		
		/**
		 * Add elements to the set of matched elements.
		 * @since 1.0
		 * @param selector A string representing a selector expression to find additional elements to add to the set of matched elements.
		 */
		[JavaScriptMethod(name="add")]
		public function add1(selector:String):JQuery {
			return null;
		}
		
		/**
		 * Add elements to the set of matched elements.
		 * @since 1.0
		 * @param elements One or more elements to add to the set of matched elements.
		 */
		[JavaScriptMethod(name="add")]
		public function add2(elements:Vector.<Element>):JQuery {
			return null;
		}
		
		/**
		 * Add elements to the set of matched elements.
		 * @since 1.0
		 * @param html An HTML fragment to add to the set of matched elements.
		 */
		[JavaScriptMethod(name="add")]
		public function add3(html:Element):JQuery {
			return null;
		}
		
		/**
		 * Add elements to the set of matched elements.
		 * @since 1.3.2
		 * @param jQueryobject An existing jQuery object to add to the set of matched elements.
		 */
		[JavaScriptMethod(name="add")]
		public function add4(jQueryobject:JQuery):JQuery {
			return null;
		}
		
		/**
		 * Add elements to the set of matched elements.
		 * @since 1.4
		 * @param selector A string representing a selector expression to find additional elements to add to the set of matched elements.
		 * @param context The point in the document at which the selector should begin matching; similar to the context argument of the $(selector, context) method.
		 */
		[JavaScriptMethod(name="add")]
		public function add5(selector:String, context:Element):JQuery {
			return null;
		}
		
		/**
		 * Add the previous set of elements on the stack to the current set, optionally filtered by a selector.
		 * @since 1.8
		 * @param selector A string containing a selector expression to match the current set of elements against.
		 */
		public function addBack(selector:String=''):JQuery {
			return null;
		}
		
		/**
		 * Adds the specified class(es) to each of the set of matched elements.
		 * @since 1.0
		 * @param className One or more space-separated classes to be added to the class attribute of each matched element.
		 */
		[JavaScriptMethod(name="addClass")]
		public function addClass1(className:String):JQuery {
			return null;
		}
		
		/**
		 * Adds the specified class(es) to each of the set of matched elements.
		 * @since 1.4
		 * @param callBack A function returning one or more space-separated class names to be added to the existing class name(s). Receives the index position of the element in the set and the existing class name(s) as arguments. Within the function, this refers to the current element in the set. (The method requires to have the following signature: function(index,currentClass))
		 */
		[JavaScriptMethod(name="addClass")]
		public function addClass2(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Insert content, specified by the parameter, after each element in the set of matched elements.
		 * @since 1.0
		 * @param content1 HTML string, DOM element, or jQuery object to insert after each element in the set of matched elements.
		 * @param content2 One or more additional DOM elements, arrays of elements, HTML strings, or jQuery objects to insert after each element in the set of matched elements.
		 */
		[JavaScriptMethod(name="after")]
		public function after1(content1:*, content2:*=null):JQuery {
			return null;
		}
		
		/**
		 * Insert content, specified by the parameter, after each element in the set of matched elements.
		 * @since 1.4
		 * @param callBack A function that returns an HTML string, DOM element(s), or jQuery object to insert after each element in the set of matched elements. Receives the index position of the element in the set as an argument. Within the function, this refers to the current element in the set. (The method requires to have the following signature: function(index))
		 */
		[JavaScriptMethod(name="after")]
		public function after2(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Register a handler to be called when Ajax requests complete. This is an AjaxEvent.
		 * @since 1.0
		 * @param callBack The function to be invoked. (The method requires to have the following signature: handler(event,XMLHttpRequest,ajaxOptions))
		 */
		public function ajaxComplete(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Register a handler to be called when Ajax requests complete with an error. This is an Ajax Event.
		 * @since 1.0
		 * @param callBack The function to be invoked. (The method requires to have the following signature: handler(event,jqXHR,ajaxSettings,thrownError))
		 */
		public function ajaxError(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Attach a function to be executed before an Ajax request is sent. This is an Ajax Event.
		 * @since 1.0
		 * @param callBack The function to be invoked. (The method requires to have the following signature: handler(event,jqXHR,ajaxOptions))
		 */
		public function ajaxSend(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Register a handler to be called when the first Ajax request begins. This is an Ajax Event.
		 * @since 1.0
		 * @param callBack The function to be invoked. (The method requires to have the following signature: handler())
		 */
		public function ajaxStart(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Register a handler to be called when all Ajax requests have completed. This is an Ajax Event.
		 * @since 1.0
		 * @param callBack The function to be invoked. (The method requires to have the following signature: handler())
		 */
		public function ajaxStop(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Attach a function to be executed whenever an Ajax request completes successfully. This is an Ajax Event.
		 * @since 1.0
		 * @param callBack The function to be invoked. (The method requires to have the following signature: handler(event,XMLHttpRequest,ajaxOptions))
		 */
		public function ajaxSuccess(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Add the previous set of elements on the stack to the current set.
		 * @since 1.2
		 */
		public function andSelf():JQuery {
			return null;
		}
		
		/**
		 * Perform a custom animation of a set of CSS properties.
		 * @since 1.0
		 * @param properties An object of CSS properties and values that the animation will move toward.
		 */
		[JavaScriptMethod(name="animate")]
		public function animate1(properties:*):JQuery {
			return null;
		}
		
		/**
		 * Perform a custom animation of a set of CSS properties.
		 * @since 1.0
		 * @param properties An object of CSS properties and values that the animation will move toward.
		 */
		[JavaScriptMethod(name="animate")]
		public function animate2(properties:OptionsArgument):JQuery {
			return null;
		}
		
		/**
		 * Insert content, specified by the parameter, to the end of each element in the set of matched elements.
		 * @since 1.0
		 * @param content1 DOM element, HTML string, or jQuery object to insert at the end of each element in the set of matched elements.
		 * @param content2 One or more additional DOM elements, arrays of elements, HTML strings, or jQuery objects to insert at the end of each element in the set of matched elements.
		 */
		[JavaScriptMethod(name="append")]
		public function append1(content1:*, content2:*=null):JQuery {
			return null;
		}
		
		/**
		 * Insert content, specified by the parameter, to the end of each element in the set of matched elements.
		 * @since 1.4
		 * @param callBack A function that returns an HTML string, DOM element(s), or jQuery object to insert at the end of each element in the set of matched elements. Receives the index position of the element in the set and the old HTML value of the element as arguments. Within the function, this refers to the current element in the set. (The method requires to have the following signature: function(index,html))
		 */
		[JavaScriptMethod(name="append")]
		public function append2(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Insert every element in the set of matched elements to the end of the target.
		 * @since 1.0
		 * @param target A selector, element, HTML string, or jQuery object; the matched set of elements will be inserted at the end of the element(s) specified by this parameter.
		 */
		public function appendTo(target:*):JQuery {
			return null;
		}
		
		/**
		 * Get the value of an attribute for the first element in the set of matched elements.
		 * @since 1.0
		 * @param attributeName The name of the attribute to get.
		 */
		[JavaScriptMethod(name="attr")]
		public function attr1(attributeName:String):String {
			return '';
		}
		
		/**
		 * Set one or more attributes for the set of matched elements.
		 * @since 1.0
		 * @param attributeName The name of the attribute to set.
		 * @param value A value to set for the attribute.
		 */
		[JavaScriptMethod(name="attr")]
		public function attr2(attributeName:String, value:*):JQuery {
			return null;
		}
		
		/**
		 * Set one or more attributes for the set of matched elements.
		 * @since 1.0
		 * @param attributes An object of attribute-value pairs to set.
		 */
		[JavaScriptMethod(name="attr")]
		public function attr3(attributes:Object):JQuery {
			return null;
		}
		
		/**
		 * Set one or more attributes for the set of matched elements.
		 * @since 1.1
		 * @param attributeName The name of the attribute to set.
		 * @param callBack A function returning the value to set. this is the current element. Receives the index position of the element in the set and the old attribute value as arguments. (The method requires to have the following signature: function(index,attr))
		 */
		[JavaScriptMethod(name="attr")]
		public function attr4(attributeName:String, callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Insert content, specified by the parameter, before each element in the set of matched elements.
		 * @since 1.0
		 * @param content1 HTML string, DOM element, or jQuery object to insert before each element in the set of matched elements.
		 * @param content2 One or more additional DOM elements, arrays of elements, HTML strings, or jQuery objects to insert before each element in the set of matched elements.
		 */
		[JavaScriptMethod(name="before")]
		public function before1(content1:*, content2:*=null):JQuery {
			return null;
		}
		
		/**
		 * Insert content, specified by the parameter, before each element in the set of matched elements.
		 * @since 1.4
		 * @param callBack A function that returns an HTML string, DOM element(s), or jQuery object to insert before each element in the set of matched elements. Receives the index position of the element in the set as an argument. Within the function, this refers to the current element in the set.
		 */
		[JavaScriptMethod(name="before")]
		public function before2(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Attach a handler to an event for the elements.
		 * @since 1.0
		 * @param eventType A string containing one or more DOM event types, such as "click" or "submit," or custom event names.
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="bind")]
		public function bind1(eventType:String, eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Attach a handler to an event for the elements.
		 * @since 1.4.3
		 * @param eventType A string containing one or more DOM event types, such as "click" or "submit," or custom event names.
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param preventBubble Setting the third argument to false will attach a function that prevents the default action from occurring and stops the event from bubbling. The default is true.
		 */
		[JavaScriptMethod(name="bind")]
		public function bind2(eventType:String, eventData:Object=null, preventBubble:Boolean=false):JQuery {
			return null;
		}
		
		/**
		 * Attach a handler to an event for the elements.
		 * @since 1.4
		 * @param events An object containing one or more DOM event types and functions to execute for them.
		 */
		[JavaScriptMethod(name="bind")]
		public function bind3(events:Object):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "blur" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="blur")]
		public function blur1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "blur" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="blur")]
		public function blur2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "blur" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="blur")]
		public function blur3():JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "change" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="change")]
		public function change1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "change" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="change")]
		public function change2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "change" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="change")]
		public function change3():JQuery {
			return null;
		}
		
		/**
		 * Get the children of each element in the set of matched elements, optionally filtered by a selector.
		 * @since 1.0
		 * @param selector A string containing a selector expression to match elements against.
		 */
		public function children(selector:String=''):JQuery {
			return null;
		}
		
		/**
		 * Remove from the queue all items that have not yet been run.
		 * @since 1.4
		 * @param queueName A string containing the name of the queue. Defaults to fx, the standard effects queue.
		 */
		public function clearQueue(queueName:String=''):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "click" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="click")]
		public function click1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "click" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="click")]
		public function click2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "click" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="click")]
		public function click3():JQuery {
			return null;
		}
		
		/**
		 * Create a deep copy of the set of matched elements.
		 * @since 1.0
		 * @param withDataAndEvents A Boolean indicating whether event handlers should be copied along with the elements. As of jQuery 1.4, element data will be copied as well.
		 */
		[JavaScriptMethod(name="clone")]
		public function clone1(withDataAndEvents:Boolean=false):JQuery {
			return null;
		}
		
		/**
		 * Create a deep copy of the set of matched elements.
		 * @since 1.5
		 * @param withDataAndEvents A Boolean indicating whether event handlers and data should be copied along with the elements. The default value is false. *In jQuery 1.5.0 the default value was incorrectly true; it was changed back to false in 1.5.1 and up.
		 * @param deepWithDataAndEvents A Boolean indicating whether event handlers and data for all children of the cloned element should be copied. By default its value matches the first argument's value (which defaults to false).
		 */
		[JavaScriptMethod(name="clone")]
		public function clone2(withDataAndEvents:Boolean=false, deepWithDataAndEvents:Boolean=false):JQuery {
			return null;
		}
		
		/**
		 * For each element in the set, get the first element that matches the selector by testing the element itself and traversing up through its ancestors in the DOM tree.
		 * @since 1.3
		 * @param selector A string containing a selector expression to match elements against.
		 */
		[JavaScriptMethod(name="closest")]
		public function closest1(selector:String):JQuery {
			return null;
		}
		
		/**
		 * For each element in the set, get the first element that matches the selector by testing the element itself and traversing up through its ancestors in the DOM tree.
		 * @since 1.4
		 * @param selector A string containing a selector expression to match elements against.
		 * @param context A DOM element within which a matching element may be found. If no context is passed in then the context of the jQuery set will be used instead.
		 */
		[JavaScriptMethod(name="closest")]
		public function closest2(selector:String, context:Element=null):JQuery {
			return null;
		}
		
		/**
		 * For each element in the set, get the first element that matches the selector by testing the element itself and traversing up through its ancestors in the DOM tree.
		 * @since 1.6
		 * @param jQueryobject A jQuery object to match elements against.
		 */
		[JavaScriptMethod(name="closest")]
		public function closest3(jQueryobject:JQuery):JQuery {
			return null;
		}
		
		/**
		 * For each element in the set, get the first element that matches the selector by testing the element itself and traversing up through its ancestors in the DOM tree.
		 * @since 1.6
		 * @param element An element to match elements against.
		 */
		[JavaScriptMethod(name="closest")]
		public function closest4(element:Element):JQuery {
			return null;
		}
		
		/**
		 * Get an array of all the elements and selectors matched against the current element up through the DOM tree.
		 * @since 1.4
		 * @param selectors An array or string containing a selector expression to match elements against (can also be a jQuery object).
		 * @param context A DOM element within which a matching element may be found. If no context is passed in then the context of the jQuery set will be used instead.
		 */
		[JavaScriptMethod(name="closest")]
		public function closest5(selectors:Array, context:Element=null):Array {
			return null;
		}
		
		/**
		 * Get the children of each element in the set of matched elements, including text and comment nodes.
		 * @since 1.2
		 */
		public function contents():JQuery {
			return null;
		}
		
		/**
		 * Get the value of style properties for the first element in the set of matched elements.
		 * @since 1.0
		 * @param propertyName A CSS property.
		 */
		[JavaScriptMethod(name="css")]
		public function css1(propertyName:String):String {
			return '';
		}
		
		/**
		 * Get the value of style properties for the first element in the set of matched elements.
		 * @since 1.9
		 * @param propertyNames An array of one or more CSS properties.
		 */
		[JavaScriptMethod(name="css")]
		public function css2(propertyNames:Array):String {
			return '';
		}
		
		/**
		 * Set one or more CSS properties for the set of matched elements.
		 * @since 1.0
		 * @param propertyName A CSS property name.
		 * @param value A value to set for the property.
		 */
		[JavaScriptMethod(name="css")]
		public function css3(propertyName:String, value:*):JQuery {
			return null;
		}
		
		/**
		 * Set one or more CSS properties for the set of matched elements.
		 * @since 1.4
		 * @param propertyName A CSS property name.
		 * @param callBack A function returning the value to set. this is the current element. Receives the index position of the element in the set and the old value as arguments. (The method requires to have the following signature: function(index,value))
		 */
		[JavaScriptMethod(name="css")]
		public function css4(propertyName:String, callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Set one or more CSS properties for the set of matched elements.
		 * @since 1.0
		 * @param properties An object of property-value pairs to set.
		 */
		[JavaScriptMethod(name="css")]
		public function css5(properties:Object):JQuery {
			return null;
		}
		
		/**
		 * Store arbitrary data associated with the matched elements.
		 * @since 1.2.3
		 * @param key A string naming the piece of data to set.
		 * @param value The new data value; it can be any Javascript type including Array or Object.
		 */
		[JavaScriptMethod(name="data")]
		public function data1(key:String, value:Object):JQuery {
			return null;
		}
		
		/**
		 * Store arbitrary data associated with the matched elements.
		 * @since 1.4.3
		 * @param obj An object of key-value pairs of data to update.
		 */
		[JavaScriptMethod(name="data")]
		public function data2(obj:Object):JQuery {
			return null;
		}
		
		/**
		 * Return the value at the named data store for the first element in the jQuery collection, as set by data(name, value) or by an HTML5 data-* attribute.
		 * @since 1.2.3
		 * @param key Name of the data stored.
		 */
		[JavaScriptMethod(name="data")]
		public function data3(key:String):Object {
			return null;
		}
		
		/**
		 * Return the value at the named data store for the first element in the jQuery collection, as set by data(name, value) or by an HTML5 data-* attribute.
		 * @since 1.4
		 */
		[JavaScriptMethod(name="data")]
		public function data4():Object {
			return null;
		}
		
		/**
		 * Bind an event handler to the "dblclick" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="dblclick")]
		public function dblclick1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "dblclick" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="dblclick")]
		public function dblclick2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "dblclick" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="dblclick")]
		public function dblclick3():JQuery {
			return null;
		}
		
		/**
		 * Set a timer to delay execution of subsequent items in the queue.
		 * @since 1.4
		 * @param duration An integer indicating the number of milliseconds to delay execution of the next item in the queue.
		 * @param queueName A string containing the name of the queue. Defaults to fx, the standard effects queue.
		 */
		public function delay(duration:int, queueName:String=''):JQuery {
			return null;
		}
		
		/**
		 * Attach a handler to one or more events for all elements that match the selector, now or in the future, based on a specific set of root elements.
		 * @since 1.4.2
		 * @param selector A selector to filter the elements that trigger the event.
		 * @param eventType A string containing one or more space-separated JavaScript event types, such as "click" or "keydown," or custom event names.
		 * @param callBack A function to execute at the time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="delegate")]
		public function delegate1(selector:String, eventType:String, callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Attach a handler to one or more events for all elements that match the selector, now or in the future, based on a specific set of root elements.
		 * @since 1.4.2
		 * @param selector A selector to filter the elements that trigger the event.
		 * @param eventType A string containing one or more space-separated JavaScript event types, such as "click" or "keydown," or custom event names.
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute at the time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="delegate")]
		public function delegate2(selector:String, eventType:String, eventData:Object, callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Attach a handler to one or more events for all elements that match the selector, now or in the future, based on a specific set of root elements.
		 * @since 1.4.3
		 * @param selector A selector to filter the elements that trigger the event.
		 * @param events A plain object of one or more event types and functions to execute for them.
		 */
		[JavaScriptMethod(name="delegate")]
		public function delegate3(selector:String, events:Object):JQuery {
			return null;
		}
		
		/**
		 * Execute the next function on the queue for the matched elements.
		 * @since 1.2
		 * @param queueName A string containing the name of the queue. Defaults to fx, the standard effects queue.
		 */
		public function dequeue(queueName:String=''):JQuery {
			return null;
		}
		
		/**
		 * Remove the set of matched elements from the DOM.
		 * @since 1.4
		 * @param selector A selector expression that filters the set of matched elements to be removed.
		 */
		public function detach(selector:String=''):JQuery {
			return null;
		}
		
		/**
		 * Remove event handlers previously attached using .live() from the elements.
		 * @since 1.4.1
		 */
		[JavaScriptMethod(name="die")]
		public function die1():JQuery {
			return null;
		}
		
		/**
		 * Remove event handlers previously attached using .live() from the elements.
		 * @since 1.3
		 * @param eventType A string containing a JavaScript event type, such as click or keydown.
		 * @param handler The function that is no longer to be executed.
		 */
		[JavaScriptMethod(name="die")]
		public function die2(eventType:String, handler:String=''):JQuery {
			return null;
		}
		
		/**
		 * Remove event handlers previously attached using .live() from the elements.
		 * @since 1.4.3
		 * @param events A plain object of one or more event types, such as click or keydown and their corresponding functions that are no longer to be executed.
		 */
		[JavaScriptMethod(name="die")]
		public function die3(events:Object):JQuery {
			return null;
		}
		
		/**
		 * Iterate over a jQuery object, executing a function for each matched element.
		 * @since 1.0
		 * @param callBack A function to execute for each matched element. (The method requires to have the following signature: function(index,Element))
		 */
		public function each(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Remove all child nodes of the set of matched elements from the DOM.
		 * @since 1.0
		 */
		public function empty():JQuery {
			return null;
		}
		
		/**
		 * End the most recent filtering operation in the current chain and return the set of matched elements to its previous state.
		 * @since 1.0
		 */
		public function end():JQuery {
			return null;
		}
		
		/**
		 * Reduce the set of matched elements to the one at the specified index.
		 * @since 1.1.2
		 * @param index An integer indicating the 0-based position of the element.
		 */
		[JavaScriptMethod(name="eq")]
		public function eq1(index:int):JQuery {
			return null;
		}
		
		/**
		 * Reduce the set of matched elements to the one at the specified index.
		 * @since 1.4
		 * @param index An integer indicating the position of the element, counting backwards  from the last element in the set.
		 */
		[JavaScriptMethod(name="eq")]
		public function eq2(index:int):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "error" JavaScript event.
		 * @since 1.0
		 * @param callBack A function to execute when the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="error")]
		public function error1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "error" JavaScript event.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="error")]
		public function error2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Display the matched elements by fading them to opaque.
		 * @since 1.0
		 * @param duration A string or number determining how long the animation will run.
		 * @param complete A function to call once the animation is complete.
		 */
		[JavaScriptMethod(name="fadeIn")]
		public function fadeIn1(duration:*=null, complete:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Display the matched elements by fading them to opaque.
		 * @since 1.0
		 * @param options A map of additional options to pass to the method.
		 */
		[JavaScriptMethod(name="fadeIn")]
		public function fadeIn2(options:OptionsArgument):JQuery {
			return null;
		}
		
		/**
		 * Display the matched elements by fading them to opaque.
		 * @since 1.4.3
		 * @param duration A string or number determining how long the animation will run.
		 * @param easing A string indicating which easing function to use for the transition.
		 * @param complete A function to call once the animation is complete.
		 */
		[JavaScriptMethod(name="fadeIn")]
		public function fadeIn3(duration:*=null, easing:String='', complete:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Hide the matched elements by fading them to transparent.
		 * @since 1.0
		 * @param duration A string or number determining how long the animation will run.
		 * @param complete A function to call once the animation is complete.
		 */
		[JavaScriptMethod(name="fadeOut")]
		public function fadeOut1(duration:*=null, complete:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Hide the matched elements by fading them to transparent.
		 * @since 1.0
		 * @param options A map of additional options to pass to the method.
		 */
		[JavaScriptMethod(name="fadeOut")]
		public function fadeOut2(options:OptionsArgument):JQuery {
			return null;
		}
		
		/**
		 * Hide the matched elements by fading them to transparent.
		 * @since 1.4.3
		 * @param duration A string or number determining how long the animation will run.
		 * @param easing A string indicating which easing function to use for the transition.
		 * @param complete A function to call once the animation is complete.
		 */
		[JavaScriptMethod(name="fadeOut")]
		public function fadeOut3(duration:*=null, easing:String='', complete:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Adjust the opacity of the matched elements.
		 * @since 1.0
		 * @param duration A string or number determining how long the animation will run.
		 * @param opacity A number between 0 and 1 denoting the target opacity.
		 * @param complete A function to call once the animation is complete.
		 */
		[JavaScriptMethod(name="fadeTo")]
		public function fadeTo1(duration:*, opacity:Number, complete:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Adjust the opacity of the matched elements.
		 * @since 1.4.3
		 * @param duration A string or number determining how long the animation will run.
		 * @param opacity A number between 0 and 1 denoting the target opacity.
		 * @param easing A string indicating which easing function to use for the transition.
		 * @param complete A function to call once the animation is complete.
		 */
		[JavaScriptMethod(name="fadeTo")]
		public function fadeTo2(duration:*, opacity:Number, easing:String='', complete:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Display or hide the matched elements by animating their opacity.
		 * @since 1.4.4
		 * @param duration A string or number determining how long the animation will run.
		 * @param easing A string indicating which easing function to use for the transition.
		 * @param complete A function to call once the animation is complete.
		 */
		[JavaScriptMethod(name="fadeToggle")]
		public function fadeToggle1(duration:*=null, easing:String='', complete:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Display or hide the matched elements by animating their opacity.
		 * @since 1.4.4
		 * @param options A map of additional options to pass to the method.
		 */
		[JavaScriptMethod(name="fadeToggle")]
		public function fadeToggle2(options:OptionsArgument):JQuery {
			return null;
		}
		
		/**
		 * Reduce the set of matched elements to those that match the selector or pass the function's test.
		 * @since 1.0
		 * @param selector A string containing a selector expression to match the current set of elements against.
		 */
		[JavaScriptMethod(name="filter")]
		public function filter1(selector:String):JQuery {
			return null;
		}
		
		/**
		 * Reduce the set of matched elements to those that match the selector or pass the function's test.
		 * @since 1.0
		 * @param callBack A function used as a test for each element in the set. this is the current DOM element. (The method requires to have the following signature: function(index))
		 */
		[JavaScriptMethod(name="filter")]
		public function filter2(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Reduce the set of matched elements to those that match the selector or pass the function's test.
		 * @since 1.4
		 * @param element An element to match the current set of elements against.
		 */
		[JavaScriptMethod(name="filter")]
		public function filter3(element:Element):JQuery {
			return null;
		}
		
		/**
		 * Reduce the set of matched elements to those that match the selector or pass the function's test.
		 * @since 1.4
		 * @param jQueryobject An existing jQuery object to match the current set of elements against.
		 */
		[JavaScriptMethod(name="filter")]
		public function filter4(jQueryobject:Object):JQuery {
			return null;
		}
		
		/**
		 * Get the descendants of each element in the current set of matched elements, filtered by a selector, jQuery object, or element.
		 * @since 1.0
		 * @param selector A string containing a selector expression to match elements against.
		 */
		[JavaScriptMethod(name="find")]
		public function find1(selector:String):JQuery {
			return null;
		}
		
		/**
		 * Get the descendants of each element in the current set of matched elements, filtered by a selector, jQuery object, or element.
		 * @since 1.6
		 * @param jQueryobject A jQuery object to match elements against.
		 */
		[JavaScriptMethod(name="find")]
		public function find2(jQueryobject:Object):JQuery {
			return null;
		}
		
		/**
		 * Get the descendants of each element in the current set of matched elements, filtered by a selector, jQuery object, or element.
		 * @since 1.6
		 * @param element An element to match elements against.
		 */
		[JavaScriptMethod(name="find")]
		public function find3(element:Element):JQuery {
			return null;
		}
		
		/**
		 * Stop the currently-running animation, remove all queued animations, and complete all animations for the matched elements.
		 * @since 1.9
		 * @param queue The name of the queue in which to stop animations.
		 */
		public function finish(queue:String=''):JQuery {
			return null;
		}
		
		/**
		 * Reduce the set of matched elements to the first in the set.
		 * @since 1.4
		 */
		public function first():JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "focus" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="focus")]
		public function focus1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "focus" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="focus")]
		public function focus2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "focus" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="focus")]
		public function focus3():JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "focusin" event.
		 * @since 1.4
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="focusin")]
		public function focusin1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "focusin" event.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="focusin")]
		public function focusin2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "focusout" JavaScript event.
		 * @since 1.4
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="focusout")]
		public function focusout1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "focusout" JavaScript event.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="focusout")]
		public function focusout2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Retrieve the DOM elements matched by the jQuery object.
		 * @since 1.0
		 * @return Either of these types: Element, Array
		 * @param index A zero-based integer indicating which element to retrieve.
		 */
		public function get(index:Number=0):Object {
			return null;
		}
		
		/**
		 * Reduce the set of matched elements to those that have a descendant that matches the selector or DOM element.
		 * @since 1.4
		 * @param selector A string containing a selector expression to match elements against.
		 */
		[JavaScriptMethod(name="has")]
		public function has1(selector:String):JQuery {
			return null;
		}
		
		/**
		 * Reduce the set of matched elements to those that have a descendant that matches the selector or DOM element.
		 * @since 1.4
		 * @param contained A DOM element to match elements against.
		 */
		[JavaScriptMethod(name="has")]
		public function has2(contained:Element):JQuery {
			return null;
		}
		
		/**
		 * Determine whether any of the matched elements are assigned the given class.
		 * @since 1.2
		 * @param className The class name to search for.
		 */
		public function hasClass(className:String):Boolean {
			return false;
		}
		
		/**
		 * Get the current computed height for the first element in the set of matched elements.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="height")]
		public function height1():int {
			return 0;
		}
		
		/**
		 * Set the CSS height of every matched element.
		 * @since 1.0
		 * @param value An integer representing the number of pixels, or an integer with an optional unit of measure appended (as a string).
		 */
		[JavaScriptMethod(name="height")]
		public function height2(value:*):JQuery {
			return null;
		}
		
		/**
		 * Set the CSS height of every matched element.
		 * @since 1.4.1
		 * @param callBack A function returning the height to set. Receives the index position of the element in the set and the old height as arguments. Within the function, this refers to the current element in the set. (The method requires to have the following signature: function(index,height))
		 */
		[JavaScriptMethod(name="height")]
		public function height3(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Hide the matched elements.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="hide")]
		public function hide1():JQuery {
			return null;
		}
		
		/**
		 * Hide the matched elements.
		 * @since 1.0
		 * @param duration A string or number determining how long the animation will run.
		 * @param complete A function to call once the animation is complete.
		 */
		[JavaScriptMethod(name="hide")]
		public function hide2(duration:*=null, complete:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Hide the matched elements.
		 * @since 1.0
		 * @param options A map of additional options to pass to the method.
		 */
		[JavaScriptMethod(name="hide")]
		public function hide3(options:OptionsArgument):JQuery {
			return null;
		}
		
		/**
		 * Hide the matched elements.
		 * @since 1.4.3
		 * @param duration A string or number determining how long the animation will run.
		 * @param easing A string indicating which easing function to use for the transition.
		 * @param complete A function to call once the animation is complete.
		 */
		[JavaScriptMethod(name="hide")]
		public function hide4(duration:*=null, easing:String='', complete:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Bind two handlers to the matched elements, to be executed when the mouse pointer enters and leaves the elements.
		 * @since 1.0
		 * @param callBack1 A function to execute when the mouse pointer enters the element. (The method requires to have the following signature: handlerIn(eventObject))
		 * @param callBack2 A function to execute when the mouse pointer leaves the element. (The method requires to have the following signature: handlerOut(eventObject))
		 */
		[JavaScriptMethod(name="hover")]
		public function hover1(callBack1:Function, callBack2:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind a single handler to the matched elements, to be executed when the mouse pointer enters or leaves the elements.
		 * @since 1.4
		 * @param callBack A function to execute when the mouse pointer enters or leaves the element. (The method requires to have the following signature: handlerInOut(eventObject))
		 */
		[JavaScriptMethod(name="hover")]
		public function hover2(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Get the HTML contents of the first element in the set of matched elements.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="html")]
		public function html1():String {
			return '';
		}
		
		/**
		 * Set the HTML contents of each element in the set of matched elements.
		 * @since 1.0
		 * @param htmlString A string of HTML to set as the content of each matched element.
		 */
		[JavaScriptMethod(name="html")]
		public function html2(htmlString:String):JQuery {
			return null;
		}
		
		/**
		 * Set the HTML contents of each element in the set of matched elements.
		 * @since 1.4
		 * @param callBack A function returning the HTML content to set. Receives the           index position of the element in the set and the old HTML value as arguments.           jQuery empties the element before calling the function;           use the oldhtml argument to reference the previous content.           Within the function, this refers to the current element in the set. (The method requires to have the following signature: function(index,oldhtml))
		 */
		[JavaScriptMethod(name="html")]
		public function html3(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Search for a given element from among the matched elements.
		 * @since 1.4
		 */
		[JavaScriptMethod(name="index")]
		public function index1():Number {
			return 0;
		}
		
		/**
		 * Search for a given element from among the matched elements.
		 * @since 1.4
		 * @param selector A selector representing a jQuery collection in which to look for an element.
		 */
		[JavaScriptMethod(name="index")]
		public function index2(selector:String):Number {
			return 0;
		}
		
		/**
		 * Search for a given element from among the matched elements.
		 * @since 1.0
		 * @param element The DOM element or first element within the jQuery object to look for.
		 */
		[JavaScriptMethod(name="index")]
		public function index3(element:*):Number {
			return 0;
		}
		
		/**
		 * Get the current computed height for the first element in the set of matched elements, including padding but not border.
		 * @since 1.2.6
		 */
		public function innerHeight():int {
			return 0;
		}
		
		/**
		 * Get the current computed width for the first element in the set of matched elements, including padding but not border.
		 * @since 1.2.6
		 */
		public function innerWidth():int {
			return 0;
		}
		
		/**
		 * Insert every element in the set of matched elements after the target.
		 * @since 1.0
		 * @param target A selector, element, HTML string, or jQuery object; the matched set of elements will be inserted after the element(s) specified by this parameter.
		 */
		public function insertAfter(target:*):JQuery {
			return null;
		}
		
		/**
		 * Insert every element in the set of matched elements before the target.
		 * @since 1.0
		 * @param target A selector, element, HTML string, or jQuery object; the matched set of elements will be inserted before the element(s) specified by this parameter.
		 */
		public function insertBefore(target:*):JQuery {
			return null;
		}
		
		/**
		 * Check the current matched set of elements against a selector, element, or jQuery object and return true if at least one of these elements matches the given arguments.
		 * @since 1.0
		 * @param selector A string containing a selector expression to match elements against.
		 */
		[JavaScriptMethod(name="is")]
		public function is1(selector:String):Boolean {
			return false;
		}
		
		/**
		 * Check the current matched set of elements against a selector, element, or jQuery object and return true if at least one of these elements matches the given arguments.
		 * @since 1.6
		 * @param callBack A function used as a test for the set of elements. It accepts one argument, index, which is the element's index in the jQuery collection.Within the function, this refers to the current DOM element. (The method requires to have the following signature: function(index))
		 */
		[JavaScriptMethod(name="is")]
		public function is2(callBack:Function):Boolean {
			return false;
		}
		
		/**
		 * Check the current matched set of elements against a selector, element, or jQuery object and return true if at least one of these elements matches the given arguments.
		 * @since 1.6
		 * @param jQueryobject An existing jQuery object to match the current set of elements against.
		 */
		[JavaScriptMethod(name="is")]
		public function is3(jQueryobject:Object):Boolean {
			return false;
		}
		
		/**
		 * Check the current matched set of elements against a selector, element, or jQuery object and return true if at least one of these elements matches the given arguments.
		 * @since 1.6
		 * @param element An element to match the current set of elements against.
		 */
		[JavaScriptMethod(name="is")]
		public function is4(element:Element):Boolean {
			return false;
		}
		
		/**
		 * Accepts a string containing a CSS selector which is then used to match a set of elements.
		 * @since 1.0
		 * @param selector A string containing a selector expression
		 * @param context A DOM Element, Document, or jQuery to use as context
		 */
		[JavaScriptMethod(name="jQuery")]
		public function jQuery1(selector:String, context:*=null):JQuery {
			return null;
		}
		
		/**
		 * Accepts a string containing a CSS selector which is then used to match a set of elements.
		 * @since 1.0
		 * @param element A DOM element to wrap in a jQuery object.
		 */
		[JavaScriptMethod(name="jQuery")]
		public function jQuery2(element:Element):JQuery {
			return null;
		}
		
		/**
		 * Accepts a string containing a CSS selector which is then used to match a set of elements.
		 * @since 1.0
		 * @param elementArray An array containing a set of DOM elements to wrap in a jQuery object.
		 */
		[JavaScriptMethod(name="jQuery")]
		public function jQuery3(elementArray:Array):JQuery {
			return null;
		}
		
		/**
		 * Accepts a string containing a CSS selector which is then used to match a set of elements.
		 * @since 1.0
		 * @param object A plain object to wrap in a jQuery object.
		 */
		[JavaScriptMethod(name="jQuery")]
		public function jQuery4(object:Object):JQuery {
			return null;
		}
		
		/**
		 * Accepts a string containing a CSS selector which is then used to match a set of elements.
		 * @since 1.0
		 * @param jQueryobject An existing jQuery object to clone.
		 */
		[JavaScriptMethod(name="jQuery")]
		public function jQuery5(jQueryobject:Object):JQuery {
			return null;
		}
		
		/**
		 * Accepts a string containing a CSS selector which is then used to match a set of elements.
		 * @since 1.4
		 */
		[JavaScriptMethod(name="jQuery")]
		public function jQuery6():JQuery {
			return null;
		}
		
		/**
		 * Creates DOM elements on the fly from the provided string of raw HTML.
		 * @since 1.0
		 * @param html A string of HTML to create on the fly. Note that this parses HTML, not XML.
		 * @param ownerDocument A document in which the new elements will be created
		 */
		[JavaScriptMethod(name="jQuery")]
		public function jQuery7(html:String, ownerDocument:Document=null):JQuery {
			return null;
		}
		
		/**
		 * Creates DOM elements on the fly from the provided string of raw HTML.
		 * @since 1.4
		 * @param html A string defining a single, standalone, HTML element (e.g. <div/> or <div></div>).
		 * @param attributes An object of attributes, events, and methods to call on the newly-created element.
		 */
		[JavaScriptMethod(name="jQuery")]
		public function jQuery8(html:String, attributes:Object):JQuery {
			return null;
		}
		
		/**
		 * Binds a function to be executed when the DOM has finished loading.
		 * @since 1.0
		 * @param callback The function to execute when the DOM is ready.
		 */
		[JavaScriptMethod(name="jQuery")]
		public function jQuery9(callback:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "keydown" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="keydown")]
		public function keydown1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "keydown" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="keydown")]
		public function keydown2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "keydown" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="keydown")]
		public function keydown3():JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "keypress" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="keypress")]
		public function keypress1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "keypress" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="keypress")]
		public function keypress2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "keypress" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="keypress")]
		public function keypress3():JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "keyup" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="keyup")]
		public function keyup1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "keyup" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="keyup")]
		public function keyup2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "keyup" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="keyup")]
		public function keyup3():JQuery {
			return null;
		}
		
		/**
		 * Reduce the set of matched elements to the final one in the set.
		 * @since 1.4
		 */
		public function last():JQuery {
			return null;
		}
		
		/**
		 * Attach an event handler for all elements which match the current selector, now and in the future.
		 * @since 1.3
		 * @param events A string containing a JavaScript event type, such as "click" or "keydown." As of jQuery 1.4 the string can contain multiple, space-separated event types or custom event names.
		 * @param callBack A function to execute at the time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="live")]
		public function live1(events:String, callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Attach an event handler for all elements which match the current selector, now and in the future.
		 * @since 1.4
		 * @param events A string containing a JavaScript event type, such as "click" or "keydown." As of jQuery 1.4 the string can contain multiple, space-separated event types or custom event names.
		 * @param data An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute at the time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="live")]
		public function live2(events:String, data:Object, callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Attach an event handler for all elements which match the current selector, now and in the future.
		 * @since 1.4.3
		 * @param events A plain object of one or more JavaScript event types and functions to execute for them.
		 */
		[JavaScriptMethod(name="live")]
		public function live3(events:Object):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "load" JavaScript event.
		 * @since 1.0
		 * @param callBack A function to execute when the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="load")]
		public function load1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "load" JavaScript event.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="load")]
		public function load2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Load data from the server and place the returned HTML into the matched element.
		 * @since 1.0
		 * @param url A string containing the URL to which the request is sent.
		 * @param data A plain object or string that is sent to the server with the request.
		 * @param callBack A callback function that is executed when the request completes. (The method requires to have the following signature: complete(responseText,textStatus,XMLHttpRequest))
		 */
		[JavaScriptMethod(name="load")]
		public function load3(url:String, data:*=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Pass each element in the current matched set through a function, producing a new jQuery object containing the return values.
		 * @since 1.2
		 * @param callBack A function object that will be invoked for each element in the current set. (The method requires to have the following signature: callback(index,domElement))
		 */
		public function map(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "mousedown" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="mousedown")]
		public function mousedown1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "mousedown" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="mousedown")]
		public function mousedown2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "mousedown" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="mousedown")]
		public function mousedown3():JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to be fired when the mouse enters an element, or trigger that handler on an element.
		 * @since 1.0
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="mouseenter")]
		public function mouseenter1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to be fired when the mouse enters an element, or trigger that handler on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="mouseenter")]
		public function mouseenter2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to be fired when the mouse enters an element, or trigger that handler on an element.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="mouseenter")]
		public function mouseenter3():JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to be fired when the mouse leaves an element, or trigger that handler on an element.
		 * @since 1.0
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="mouseleave")]
		public function mouseleave1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to be fired when the mouse leaves an element, or trigger that handler on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="mouseleave")]
		public function mouseleave2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to be fired when the mouse leaves an element, or trigger that handler on an element.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="mouseleave")]
		public function mouseleave3():JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "mousemove" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="mousemove")]
		public function mousemove1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "mousemove" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="mousemove")]
		public function mousemove2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "mousemove" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="mousemove")]
		public function mousemove3():JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "mouseout" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="mouseout")]
		public function mouseout1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "mouseout" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="mouseout")]
		public function mouseout2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "mouseout" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="mouseout")]
		public function mouseout3():JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "mouseover" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="mouseover")]
		public function mouseover1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "mouseover" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="mouseover")]
		public function mouseover2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "mouseover" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="mouseover")]
		public function mouseover3():JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "mouseup" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="mouseup")]
		public function mouseup1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "mouseup" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="mouseup")]
		public function mouseup2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "mouseup" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="mouseup")]
		public function mouseup3():JQuery {
			return null;
		}
		
		/**
		 * Get the immediately following sibling of each element in the set of matched elements. If a selector is provided, it retrieves the next sibling only if it matches that selector.
		 * @since 1.0
		 * @param selector A string containing a selector expression to match elements against.
		 */
		public function next(selector:String=''):JQuery {
			return null;
		}
		
		/**
		 * Get all following siblings of each element in the set of matched elements, optionally filtered by a selector.
		 * @since 1.2
		 * @param selector A string containing a selector expression to match elements against.
		 */
		public function nextAll(selector:String=''):JQuery {
			return null;
		}
		
		/**
		 * Get all following siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object passed.
		 * @since 1.4
		 * @param selector A string containing a selector expression to indicate where to stop matching following sibling elements.
		 * @param filter A string containing a selector expression to match elements against.
		 */
		[JavaScriptMethod(name="nextUntil")]
		public function nextUntil1(selector:String='', filter:String=''):JQuery {
			return null;
		}
		
		/**
		 * Get all following siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object passed.
		 * @since 1.6
		 * @param element A DOM node or jQuery object indicating where to stop matching following sibling elements.
		 * @param filter A string containing a selector expression to match elements against.
		 */
		[JavaScriptMethod(name="nextUntil")]
		public function nextUntil2(element:Element=null, filter:String=''):JQuery {
			return null;
		}
		
		/**
		 * Remove elements from the set of matched elements.
		 * @since 1.0
		 * @param selector A string containing a selector expression to match elements against.
		 */
		[JavaScriptMethod(name="not")]
		public function not1(selector:String):JQuery {
			return null;
		}
		
		/**
		 * Remove elements from the set of matched elements.
		 * @since 1.0
		 * @param elements One or more DOM elements to remove from the matched set.
		 */
		[JavaScriptMethod(name="not")]
		public function not2(elements:Vector.<Element>):JQuery {
			return null;
		}
		
		/**
		 * Remove elements from the set of matched elements.
		 * @since 1.4
		 * @param callBack A function used as a test for each element in the set. this is the current DOM element. (The method requires to have the following signature: function(index))
		 */
		[JavaScriptMethod(name="not")]
		public function not3(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Remove elements from the set of matched elements.
		 * @since 1.4
		 * @param jQueryobject An existing jQuery object to match the current set of elements against.
		 */
		[JavaScriptMethod(name="not")]
		public function not4(jQueryobject:Object):JQuery {
			return null;
		}
		
		/**
		 * Remove an event handler.
		 * @since 1.7
		 * @param events One or more space-separated event types and optional namespaces, or just namespaces, such as "click", "keydown.myPlugin", or ".myPlugin".
		 * @param selector A selector which should match the one originally passed to .on() when attaching event handlers.
		 * @param callBack A handler function previously attached for the event(s), or the special value false. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="off")]
		public function off1(events:String, selector:String='', callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Remove an event handler.
		 * @since 1.7
		 * @param events An object where the string keys represent one or more space-separated event types and optional namespaces, and the values represent handler functions previously attached for the event(s).
		 * @param selector A selector which should match the one originally passed to .on() when attaching event handlers.
		 */
		[JavaScriptMethod(name="off")]
		public function off2(events:Object, selector:String=''):JQuery {
			return null;
		}
		
		/**
		 * Get the current coordinates of the first element in the set of matched elements, relative to the document.
		 * @since 1.2
		 */
		[JavaScriptMethod(name="offset")]
		public function offset1():Object {
			return null;
		}
		
		/**
		 * Set the current coordinates of every element in the set of matched elements, relative to the document.
		 * @since 1.4
		 * @param coordinates An object containing the properties top and left, which are integers indicating the new top and left coordinates for the elements.
		 */
		[JavaScriptMethod(name="offset")]
		public function offset2(coordinates:Object):JQuery {
			return null;
		}
		
		/**
		 * Set the current coordinates of every element in the set of matched elements, relative to the document.
		 * @since 1.4
		 * @param callBack A function to return the coordinates to set. Receives the index of the element in the collection as the first argument and the current coordinates as the second argument. The function should return an object with the new top and left properties. (The method requires to have the following signature: function(index,coords))
		 */
		[JavaScriptMethod(name="offset")]
		public function offset3(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Get the closest ancestor element that is positioned.
		 * @since 1.2.6
		 */
		public function offsetParent():JQuery {
			return null;
		}
		
		/**
		 * Attach an event handler function for one or more events to the selected elements.
		 * @since 1.7
		 * @param events One or more space-separated event types and optional namespaces, such as "click" or "keydown.myPlugin".
		 * @param selector A selector string to filter the descendants of the selected elements that trigger the event. If the selector is null or omitted, the event is always triggered when it reaches the selected element.
		 * @param data Data to be passed to the handler in event.data when an event is triggered.
		 * @param callBack A function to execute when the event is triggered. The value false is also allowed as a shorthand for a function that simply does return false. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="on")]
		public function on1(events:String, selector:String='', data:*=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Attach an event handler function for one or more events to the selected elements.
		 * @since 1.7
		 * @param events An object in which the string keys represent one or more space-separated event types and optional namespaces, and the values represent a handler function to be called for the event(s).
		 * @param selector A selector string to filter the descendants of the selected elements that will call the handler. If the selector is null or omitted, the handler is always called when it reaches the selected element.
		 * @param data Data to be passed to the handler in event.data when an event occurs.
		 */
		[JavaScriptMethod(name="on")]
		public function on2(events:Object, selector:String='', data:*=null):JQuery {
			return null;
		}
		
		/**
		 * Attach a handler to an event for the elements. The handler is executed at most once per element.
		 * @since 1.1
		 * @param events A string containing one or more JavaScript event types, such as "click" or "submit," or custom event names.
		 * @param data An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute at the time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="one")]
		public function one1(events:String, data:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Attach a handler to an event for the elements. The handler is executed at most once per element.
		 * @since 1.7
		 * @param events One or more space-separated event types and optional namespaces, such as "click" or "keydown.myPlugin".
		 * @param selector A selector string to filter the descendants of the selected elements that trigger the event. If the selector is null or omitted, the event is always triggered when it reaches the selected element.
		 * @param data Data to be passed to the handler in event.data when an event is triggered.
		 * @param callBack A function to execute when the event is triggered. The value false is also allowed as a shorthand for a function that simply does return false. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="one")]
		public function one2(events:String, selector:String='', data:*=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Attach a handler to an event for the elements. The handler is executed at most once per element.
		 * @since 1.7
		 * @param events An object in which the string keys represent one or more space-separated event types and optional namespaces, and the values represent a handler function to be called for the event(s).
		 * @param selector A selector string to filter the descendants of the selected elements that will call the handler. If the selector is null or omitted, the handler is always called when it reaches the selected element.
		 * @param data Data to be passed to the handler in event.data when an event occurs.
		 */
		[JavaScriptMethod(name="one")]
		public function one3(events:Object, selector:String='', data:*=null):JQuery {
			return null;
		}
		
		/**
		 * Get the current computed height for the first element in the set of matched elements, including padding, border, and optionally margin. Returns an integer (without "px") representation of the value or null if called on an empty set of elements.
		 * @since 1.2.6
		 * @param includeMargin A Boolean indicating whether to include the element's margin in the calculation.
		 */
		public function outerHeight(includeMargin:Boolean=false):int {
			return 0;
		}
		
		/**
		 * Get the current computed width for the first element in the set of matched elements, including padding and border.
		 * @since 1.2.6
		 * @param includeMargin A Boolean indicating whether to include the element's margin in the calculation.
		 */
		public function outerWidth(includeMargin:Boolean=false):int {
			return 0;
		}
		
		/**
		 * Get the parent of each element in the current set of matched elements, optionally filtered by a selector.
		 * @since 1.0
		 * @param selector A string containing a selector expression to match elements against.
		 */
		public function parent(selector:String=''):JQuery {
			return null;
		}
		
		/**
		 * Get the ancestors of each element in the current set of matched elements, optionally filtered by a selector.
		 * @since 1.0
		 * @param selector A string containing a selector expression to match elements against.
		 */
		public function parents(selector:String=''):JQuery {
			return null;
		}
		
		/**
		 * Get the ancestors of each element in the current set of matched elements, up to but not including the element matched by the selector, DOM node, or jQuery object.
		 * @since 1.4
		 * @param selector A string containing a selector expression to indicate where to stop matching ancestor elements.
		 * @param filter A string containing a selector expression to match elements against.
		 */
		[JavaScriptMethod(name="parentsUntil")]
		public function parentsUntil1(selector:String='', filter:String=''):JQuery {
			return null;
		}
		
		/**
		 * Get the ancestors of each element in the current set of matched elements, up to but not including the element matched by the selector, DOM node, or jQuery object.
		 * @since 1.6
		 * @param element A DOM node or jQuery object indicating where to stop matching ancestor elements.
		 * @param filter A string containing a selector expression to match elements against.
		 */
		[JavaScriptMethod(name="parentsUntil")]
		public function parentsUntil2(element:Element=null, filter:String=''):JQuery {
			return null;
		}
		
		/**
		 * Get the current coordinates of the first element in the set of matched elements, relative to the offset parent.
		 * @since 1.2
		 */
		public function position():Object {
			return null;
		}
		
		/**
		 * Insert content, specified by the parameter, to the beginning of each element in the set of matched elements.
		 * @since 1.0
		 * @param content1 DOM element, array of elements, HTML string, or jQuery object to insert at the beginning of each element in the set of matched elements.
		 * @param content2 One or more additional DOM elements, arrays of elements, HTML strings, or jQuery objects to insert at the beginning of each element in the set of matched elements.
		 */
		[JavaScriptMethod(name="prepend")]
		public function prepend1(content1:*, content2:*=null):JQuery {
			return null;
		}
		
		/**
		 * Insert content, specified by the parameter, to the beginning of each element in the set of matched elements.
		 * @since 1.4
		 * @param callBack A function that returns an HTML string, DOM element(s), or jQuery object to insert at the beginning of each element in the set of matched elements. Receives the index position of the element in the set and the old HTML value of the element as arguments. Within the function, this refers to the current element in the set. (The method requires to have the following signature: function(index,html))
		 */
		[JavaScriptMethod(name="prepend")]
		public function prepend2(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Insert every element in the set of matched elements to the beginning of the target.
		 * @since 1.0
		 * @param target A selector, element, HTML string, or jQuery object; the matched set of elements will be inserted at the beginning of the element(s) specified by this parameter.
		 */
		public function prependTo(target:*):JQuery {
			return null;
		}
		
		/**
		 * Get the immediately preceding sibling of each element in the set of matched elements, optionally filtered by a selector.
		 * @since 1.0
		 * @param selector A string containing a selector expression to match elements against.
		 */
		public function prev(selector:String=''):JQuery {
			return null;
		}
		
		/**
		 * Get all preceding siblings of each element in the set of matched elements, optionally filtered by a selector.
		 * @since 1.2
		 * @param selector A string containing a selector expression to match elements against.
		 */
		public function prevAll(selector:String=''):JQuery {
			return null;
		}
		
		/**
		 * Get all preceding siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object.
		 * @since 1.4
		 * @param selector A string containing a selector expression to indicate where to stop matching preceding sibling elements.
		 * @param filter A string containing a selector expression to match elements against.
		 */
		[JavaScriptMethod(name="prevUntil")]
		public function prevUntil1(selector:String='', filter:String=''):JQuery {
			return null;
		}
		
		/**
		 * Get all preceding siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object.
		 * @since 1.6
		 * @param element A DOM node or jQuery object indicating where to stop matching preceding sibling elements.
		 * @param filter A string containing a selector expression to match elements against.
		 */
		[JavaScriptMethod(name="prevUntil")]
		public function prevUntil2(element:Element=null, filter:String=''):JQuery {
			return null;
		}
		
		/**
		 * Get the value of a property for the first element in the set of matched elements.
		 * @since 1.6
		 * @param propertyName The name of the property to get.
		 */
		[JavaScriptMethod(name="prop")]
		public function prop1(propertyName:String):String {
			return '';
		}
		
		/**
		 * Set one or more properties for the set of matched elements.
		 * @since 1.6
		 * @param propertyName The name of the property to set.
		 * @param value A value to set for the property.
		 */
		[JavaScriptMethod(name="prop")]
		public function prop2(propertyName:String, value:*):JQuery {
			return null;
		}
		
		/**
		 * Set one or more properties for the set of matched elements.
		 * @since 1.6
		 * @param properties An object of property-value pairs to set.
		 */
		[JavaScriptMethod(name="prop")]
		public function prop3(properties:Object):JQuery {
			return null;
		}
		
		/**
		 * Set one or more properties for the set of matched elements.
		 * @since 1.6
		 * @param propertyName The name of the property to set.
		 * @param callBack A function returning the value to set. Receives the index position of the element in the set and the old property value as arguments. Within the function, the keyword this refers to the current element. (The method requires to have the following signature: function(index,oldPropertyValue))
		 */
		[JavaScriptMethod(name="prop")]
		public function prop4(propertyName:String, callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Add a collection of DOM elements onto the jQuery stack.
		 * @since 1.0
		 * @param elements An array of elements to push onto the stack and make into a new jQuery object.
		 */
		[JavaScriptMethod(name="pushStack")]
		public function pushStack1(elements:Array):JQuery {
			return null;
		}
		
		/**
		 * Add a collection of DOM elements onto the jQuery stack.
		 * @since 1.3
		 * @param elements An array of elements to push onto the stack and make into a new jQuery object.
		 * @param name The name of a jQuery method that generated the array of elements.
		 * @param arguments The arguments that were passed in to the jQuery method (for serialization).
		 */
		[JavaScriptMethod(name="pushStack")]
		public function pushStack2(elements:Array, name:String, arguments:Array):JQuery {
			return null;
		}
		
		/**
		 * Show the queue of functions to be executed on the matched elements.
		 * @since 1.2
		 * @param queueName A string containing the name of the queue. Defaults to fx, the standard effects queue.
		 */
		[JavaScriptMethod(name="queue")]
		public function queue1(queueName:String=''):Array {
			return null;
		}
		
		/**
		 * Manipulate the queue of functions to be executed, once for each matched element.
		 * @since 1.2
		 * @param queueName A string containing the name of the queue. Defaults to fx, the standard effects queue.
		 * @param newQueue An array of functions to replace the current queue contents.
		 */
		[JavaScriptMethod(name="queue")]
		public function queue2(queueName:String='', newQueue:Array=null):JQuery {
			return null;
		}
		
		/**
		 * Manipulate the queue of functions to be executed, once for each matched element.
		 * @since 1.2
		 * @param queueName A string containing the name of the queue. Defaults to fx, the standard effects queue.
		 * @param callBack The new function to add to the queue, with a function to call that will dequeue the next item. (The method requires to have the following signature: callback(next))
		 */
		[JavaScriptMethod(name="queue")]
		public function queue3(queueName:String='', callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Specify a function to execute when the DOM is fully loaded.
		 * @since 1.0
		 * @param handler A function to execute after the DOM is ready.
		 */
		public function ready(handler:Function):JQuery {
			return null;
		}
		
		/**
		 * Remove the set of matched elements from the DOM.
		 * @since 1.0
		 * @param selector A selector expression that filters the set of matched elements to be removed.
		 */
		public function remove(selector:String=''):JQuery {
			return null;
		}
		
		/**
		 * Remove an attribute from each element in the set of matched elements.
		 * @since 1.0
		 * @param attributeName An attribute to remove; as of version 1.7, it can be a space-separated list of attributes.
		 */
		public function removeAttr(attributeName:String):JQuery {
			return null;
		}
		
		/**
		 * Remove a single class, multiple classes, or all classes from each element in the set of matched elements.
		 * @since 1.0
		 * @param className One or more space-separated classes to be removed from the class attribute of each matched element.
		 */
		[JavaScriptMethod(name="removeClass")]
		public function removeClass1(className:String=''):JQuery {
			return null;
		}
		
		/**
		 * Remove a single class, multiple classes, or all classes from each element in the set of matched elements.
		 * @since 1.4
		 * @param callBack A function returning one or more space-separated class names to be removed. Receives the index position of the element in the set and the old class value as arguments. (The method requires to have the following signature: function(index,class))
		 */
		[JavaScriptMethod(name="removeClass")]
		public function removeClass2(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Remove a previously-stored piece of data.
		 * @since 1.2.3
		 * @param name A string naming the piece of data to delete.
		 */
		[JavaScriptMethod(name="removeData")]
		public function removeData1(name:String=''):JQuery {
			return null;
		}
		
		/**
		 * Remove a previously-stored piece of data.
		 * @since 1.7
		 * @param list An array or space-separated string naming the pieces of data to delete.
		 */
		[JavaScriptMethod(name="removeData")]
		public function removeData2(list:*=null):JQuery {
			return null;
		}
		
		/**
		 * Remove a property for the set of matched elements.
		 * @since 1.6
		 * @param propertyName The name of the property to remove.
		 */
		public function removeProp(propertyName:String):JQuery {
			return null;
		}
		
		/**
		 * Replace each target element with the set of matched elements.
		 * @since 1.2
		 * @param target A selector expression indicating which element(s) to replace.
		 */
		public function replaceAll(target:String):JQuery {
			return null;
		}
		
		/**
		 * Replace each element in the set of matched elements with the provided new content and return the set of elements that was removed.
		 * @since 1.2
		 * @param newContent The content to insert. May be an HTML string, DOM element, or jQuery object.
		 */
		[JavaScriptMethod(name="replaceWith")]
		public function replaceWith1(newContent:*):JQuery {
			return null;
		}
		
		/**
		 * Replace each element in the set of matched elements with the provided new content and return the set of elements that was removed.
		 * @since 1.4
		 * @param callBack A function that returns content with which to replace the set of matched elements.
		 */
		[JavaScriptMethod(name="replaceWith")]
		public function replaceWith2(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "resize" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="resize")]
		public function resize1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "resize" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="resize")]
		public function resize2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "resize" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="resize")]
		public function resize3():JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "scroll" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="scroll")]
		public function scroll1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "scroll" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="scroll")]
		public function scroll2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "scroll" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="scroll")]
		public function scroll3():JQuery {
			return null;
		}
		
		/**
		 * Get the current horizontal position of the scroll bar for the first element in the set of matched elements.
		 * @since 1.2.6
		 */
		[JavaScriptMethod(name="scrollLeft")]
		public function scrollLeft1():int {
			return 0;
		}
		
		/**
		 * Set the current horizontal position of the scroll bar for each of the set of matched elements.
		 * @since 1.2.6
		 * @param value An integer indicating the new position to set the scroll bar to.
		 */
		[JavaScriptMethod(name="scrollLeft")]
		public function scrollLeft2(value:Number):JQuery {
			return null;
		}
		
		/**
		 * Get the current vertical position of the scroll bar for the first element in the set of matched elements or set the vertical position of the scroll bar for every matched element.
		 * @since 1.2.6
		 */
		[JavaScriptMethod(name="scrollTop")]
		public function scrollTop1():int {
			return 0;
		}
		
		/**
		 * Set the current vertical position of the scroll bar for each of the set of matched elements.
		 * @since 1.2.6
		 * @param value An integer indicating the new position to set the scroll bar to.
		 */
		[JavaScriptMethod(name="scrollTop")]
		public function scrollTop2(value:Number):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "select" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="select")]
		public function select1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "select" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="select")]
		public function select2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "select" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="select")]
		public function select3():JQuery {
			return null;
		}
		
		/**
		 * Encode a set of form elements as a string for submission.
		 * @since 1.0
		 */
		public function serialize():String {
			return '';
		}
		
		/**
		 * Encode a set of form elements as an array of names and values.
		 * @since 1.2
		 */
		public function serializeArray():Array {
			return null;
		}
		
		/**
		 * Display the matched elements.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="show")]
		public function show1():JQuery {
			return null;
		}
		
		/**
		 * Display the matched elements.
		 * @since 1.0
		 * @param duration A string or number determining how long the animation will run.
		 * @param complete A function to call once the animation is complete.
		 */
		[JavaScriptMethod(name="show")]
		public function show2(duration:*=null, complete:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Display the matched elements.
		 * @since 1.0
		 * @param options A map of additional options to pass to the method.
		 */
		[JavaScriptMethod(name="show")]
		public function show3(options:OptionsArgument):JQuery {
			return null;
		}
		
		/**
		 * Display the matched elements.
		 * @since 1.4.3
		 * @param duration A string or number determining how long the animation will run.
		 * @param easing A string indicating which easing function to use for the transition.
		 * @param complete A function to call once the animation is complete.
		 */
		[JavaScriptMethod(name="show")]
		public function show4(duration:*=null, easing:String='', complete:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Get the siblings of each element in the set of matched elements, optionally filtered by a selector.
		 * @since 1.0
		 * @param selector A string containing a selector expression to match elements against.
		 */
		public function siblings(selector:String=''):JQuery {
			return null;
		}
		
		/**
		 * Return the number of elements in the jQuery object.
		 * @since 1.0
		 */
		public function size():Number {
			return 0;
		}
		
		/**
		 * Reduce the set of matched elements to a subset specified by a range of indices.
		 * @since 1.1.4
		 * @param start An integer indicating the 0-based position at which the elements begin to be selected. If negative, it indicates an offset from the end of the set.
		 * @param end An integer indicating the 0-based position at which the elements stop being selected. If negative, it indicates an offset from the end of the set. If omitted, the range continues until the end of the set.
		 */
		public function slice(start:int, end:int=0):JQuery {
			return null;
		}
		
		/**
		 * Display the matched elements with a sliding motion.
		 * @since 1.0
		 * @param duration A string or number determining how long the animation will run.
		 * @param complete A function to call once the animation is complete.
		 */
		[JavaScriptMethod(name="slideDown")]
		public function slideDown1(duration:*=null, complete:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Display the matched elements with a sliding motion.
		 * @since 1.0
		 * @param options A map of additional options to pass to the method.
		 */
		[JavaScriptMethod(name="slideDown")]
		public function slideDown2(options:OptionsArgument):JQuery {
			return null;
		}
		
		/**
		 * Display the matched elements with a sliding motion.
		 * @since 1.4.3
		 * @param duration A string or number determining how long the animation will run.
		 * @param easing A string indicating which easing function to use for the transition.
		 * @param complete A function to call once the animation is complete.
		 */
		[JavaScriptMethod(name="slideDown")]
		public function slideDown3(duration:*=null, easing:String='', complete:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Display or hide the matched elements with a sliding motion.
		 * @since 1.0
		 * @param duration A string or number determining how long the animation will run.
		 * @param complete A function to call once the animation is complete.
		 */
		[JavaScriptMethod(name="slideToggle")]
		public function slideToggle1(duration:*=null, complete:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Display or hide the matched elements with a sliding motion.
		 * @since 1.0
		 * @param options A map of additional options to pass to the method.
		 */
		[JavaScriptMethod(name="slideToggle")]
		public function slideToggle2(options:OptionsArgument):JQuery {
			return null;
		}
		
		/**
		 * Display or hide the matched elements with a sliding motion.
		 * @since 1.4.3
		 * @param duration A string or number determining how long the animation will run.
		 * @param easing A string indicating which easing function to use for the transition.
		 * @param complete A function to call once the animation is complete.
		 */
		[JavaScriptMethod(name="slideToggle")]
		public function slideToggle3(duration:*=null, easing:String='', complete:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Hide the matched elements with a sliding motion.
		 * @since 1.0
		 * @param duration A string or number determining how long the animation will run.
		 * @param complete A function to call once the animation is complete.
		 */
		[JavaScriptMethod(name="slideUp")]
		public function slideUp1(duration:*=null, complete:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Hide the matched elements with a sliding motion.
		 * @since 1.0
		 * @param options A map of additional options to pass to the method.
		 */
		[JavaScriptMethod(name="slideUp")]
		public function slideUp2(options:OptionsArgument):JQuery {
			return null;
		}
		
		/**
		 * Hide the matched elements with a sliding motion.
		 * @since 1.4.3
		 * @param duration A string or number determining how long the animation will run.
		 * @param easing A string indicating which easing function to use for the transition.
		 * @param complete A function to call once the animation is complete.
		 */
		[JavaScriptMethod(name="slideUp")]
		public function slideUp3(duration:*=null, easing:String='', complete:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Stop the currently-running animation on the matched elements.
		 * @since 1.2
		 * @param clearQueue A Boolean indicating whether to remove queued animation as well. Defaults to false.
		 * @param jumpToEnd A Boolean indicating whether to complete the current animation immediately. Defaults to false.
		 */
		[JavaScriptMethod(name="stop")]
		public function stop1(clearQueue:Boolean=false, jumpToEnd:Boolean=false):JQuery {
			return null;
		}
		
		/**
		 * Stop the currently-running animation on the matched elements.
		 * @since 1.7
		 * @param queue The name of the queue in which to stop animations.
		 * @param clearQueue A Boolean indicating whether to remove queued animation as well. Defaults to false.
		 * @param jumpToEnd A Boolean indicating whether to complete the current animation immediately. Defaults to false.
		 */
		[JavaScriptMethod(name="stop")]
		public function stop2(queue:String='', clearQueue:Boolean=false, jumpToEnd:Boolean=false):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "submit" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="submit")]
		public function submit1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "submit" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="submit")]
		public function submit2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "submit" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="submit")]
		public function submit3():JQuery {
			return null;
		}
		
		/**
		 * Get the combined text contents of each element in the set of matched elements, including their descendants.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="text")]
		public function text1():String {
			return '';
		}
		
		/**
		 * Set the content of each element in the set of matched elements to the specified text.
		 * @since 1.0
		 * @param textString A string of text to set as the content of each matched element.
		 */
		[JavaScriptMethod(name="text")]
		public function text2(textString:String):JQuery {
			return null;
		}
		
		/**
		 * Set the content of each element in the set of matched elements to the specified text.
		 * @since 1.4
		 * @param callBack A function returning the text content to set. Receives the index position of the element in the set and the old text value as arguments. (The method requires to have the following signature: function(index,text))
		 */
		[JavaScriptMethod(name="text")]
		public function text3(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Retrieve all the DOM elements contained in the jQuery set, as an array.
		 * @since 1.4
		 */
		public function toArray():Array {
			return null;
		}
		
		/**
		 * Bind two or more handlers to the matched elements, to be executed on alternate clicks.
		 * @since 1.0
		 * @param callBack1 A function to execute every even time the element is clicked. (The method requires to have the following signature: handler(eventObject))
		 * @param callBack2 A function to execute every odd time the element is clicked. (The method requires to have the following signature: handler(eventObject))
		 * @param callBack3 Additional handlers to cycle through after clicks. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="toggle")]
		public function toggle1(callBack1:Function, callBack2:Function, callBack3:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Display or hide the matched elements.
		 * @since 1.0
		 * @param duration A string or number determining how long the animation will run.
		 * @param complete A function to call once the animation is complete.
		 */
		[JavaScriptMethod(name="toggle")]
		public function toggle2(duration:*=null, complete:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Display or hide the matched elements.
		 * @since 1.0
		 * @param options A map of additional options to pass to the method.
		 */
		[JavaScriptMethod(name="toggle")]
		public function toggle3(options:OptionsArgument):JQuery {
			return null;
		}
		
		/**
		 * Display or hide the matched elements.
		 * @since 1.4.3
		 * @param duration A string or number determining how long the animation will run.
		 * @param easing A string indicating which easing function to use for the transition.
		 * @param complete A function to call once the animation is complete.
		 */
		[JavaScriptMethod(name="toggle")]
		public function toggle4(duration:*=null, easing:String='', complete:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Display or hide the matched elements.
		 * @since 1.3
		 * @param showOrHide A Boolean indicating whether to show or hide the elements.
		 */
		[JavaScriptMethod(name="toggle")]
		public function toggle5(showOrHide:Boolean):JQuery {
			return null;
		}
		
		/**
		 * Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the switch argument.
		 * @since 1.0
		 * @param className One or more class names (separated by spaces) to be toggled for each element in the matched set.
		 */
		[JavaScriptMethod(name="toggleClass")]
		public function toggleClass1(className:String):JQuery {
			return null;
		}
		
		/**
		 * Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the switch argument.
		 * @since 1.3
		 * @param className One or more class names (separated by spaces) to be toggled for each element in the matched set.
		 * @param switch_ A Boolean (not just truthy/falsy) value to determine whether the class should be added or removed.
		 */
		[JavaScriptMethod(name="toggleClass")]
		public function toggleClass2(className:String, switch_:Boolean):JQuery {
			return null;
		}
		
		/**
		 * Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the switch argument.
		 * @since 1.4
		 * @param switch_ A boolean value to determine whether the class should be added or removed.
		 */
		[JavaScriptMethod(name="toggleClass")]
		public function toggleClass3(switch_:Boolean=false):JQuery {
			return null;
		}
		
		/**
		 * Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the switch argument.
		 * @since 1.4
		 * @param callBack A function that returns class names to be toggled in the class attribute of each element in the matched set. Receives the index position of the element in the set, the old class value, and the switch as arguments. (The method requires to have the following signature: function(index,class,switch))
		 * @param switch_ A boolean value to determine whether the class should be added or removed.
		 */
		[JavaScriptMethod(name="toggleClass")]
		public function toggleClass4(callBack:Function, switch_:Boolean=false):JQuery {
			return null;
		}
		
		/**
		 * Execute all handlers and behaviors attached to the matched elements for the given event type.
		 * @since 1.0
		 * @param eventType A string containing a JavaScript event type, such as click or submit.
		 * @param extraParameters Additional parameters to pass along to the event handler.
		 */
		[JavaScriptMethod(name="trigger")]
		public function trigger1(eventType:String, extraParameters:*=null):JQuery {
			return null;
		}
		
		/**
		 * Execute all handlers and behaviors attached to the matched elements for the given event type.
		 * @since 1.3
		 * @param event A jQuery.Event object.
		 */
		[JavaScriptMethod(name="trigger")]
		public function trigger2(event:Event):JQuery {
			return null;
		}
		
		/**
		 * Execute all handlers attached to an element for an event.
		 * @since 1.2
		 * @param eventType A string containing a JavaScript event type, such as click or submit.
		 * @param extraParameters An array of additional parameters to pass along to the event handler.
		 */
		public function triggerHandler(eventType:String, extraParameters:Array=null):Object {
			return null;
		}
		
		/**
		 * Remove a previously-attached event handler from the elements.
		 * @since 1.0
		 * @param eventType A string containing a JavaScript event type, such as click or submit.
		 * @param callBack The function that is to be no longer executed. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="unbind")]
		public function unbind1(eventType:String='', callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Remove a previously-attached event handler from the elements.
		 * @since 1.4.3
		 * @param eventType A string containing a JavaScript event type, such as click or submit.
		 * @param false_ Unbinds the corresponding 'return false' function that was bound using .bind( eventType, false ).
		 */
		[JavaScriptMethod(name="unbind")]
		public function unbind2(eventType:String, false_:Boolean):JQuery {
			return null;
		}
		
		/**
		 * Remove a previously-attached event handler from the elements.
		 * @since 1.0
		 * @param event A JavaScript event object as passed to an event handler.
		 */
		[JavaScriptMethod(name="unbind")]
		public function unbind3(event:Object):JQuery {
			return null;
		}
		
		/**
		 * Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
		 * @since 1.4.2
		 */
		[JavaScriptMethod(name="undelegate")]
		public function undelegate1():JQuery {
			return null;
		}
		
		/**
		 * Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
		 * @since 1.4.2
		 * @param selector A selector which will be used to filter the event results.
		 * @param eventType A string containing a JavaScript event type, such as "click" or "keydown"
		 */
		[JavaScriptMethod(name="undelegate")]
		public function undelegate2(selector:String, eventType:String):JQuery {
			return null;
		}
		
		/**
		 * Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
		 * @since 1.4.2
		 * @param selector A selector which will be used to filter the event results.
		 * @param eventType A string containing a JavaScript event type, such as "click" or "keydown"
		 * @param callBack A function to execute at the time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="undelegate")]
		public function undelegate3(selector:String, eventType:String, callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
		 * @since 1.4.3
		 * @param selector A selector which will be used to filter the event results.
		 * @param events An object of one or more event types and previously bound functions to unbind from them.
		 */
		[JavaScriptMethod(name="undelegate")]
		public function undelegate4(selector:String, events:Object):JQuery {
			return null;
		}
		
		/**
		 * Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
		 * @since 1.6
		 * @param namespace A string containing a namespace to unbind all events from.
		 */
		[JavaScriptMethod(name="undelegate")]
		public function undelegate5(namespace_:String):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "unload" JavaScript event.
		 * @since 1.0
		 * @param callBack A function to execute when the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="unload")]
		public function unload1(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Bind an event handler to the "unload" JavaScript event.
		 * @since 1.4.3
		 * @param eventData A plain object of data that will be passed to the event handler.
		 * @param callBack A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		 */
		[JavaScriptMethod(name="unload")]
		public function unload2(eventData:Object=null, callBack:Function=null):JQuery {
			return null;
		}
		
		/**
		 * Remove the parents of the set of matched elements from the DOM, leaving the matched elements in their place.
		 * @since 1.4
		 */
		public function unwrap():JQuery {
			return null;
		}
		
		/**
		 * Get the current value of the first element in the set of matched elements.
		 * @since 1.0
		 * @return Either of these types: String, Number, Array
		 */
		[JavaScriptMethod(name="val")]
		public function val1():Object {
			return null;
		}
		
		/**
		 * Set the value of each element in the set of matched elements.
		 * @since 1.0
		 * @param value A string of text or an array of strings corresponding to the value of each matched element to set as selected/checked.
		 */
		[JavaScriptMethod(name="val")]
		public function val2(value:*):JQuery {
			return null;
		}
		
		/**
		 * Set the value of each element in the set of matched elements.
		 * @since 1.4
		 * @param callBack A function returning the value to set. this is the current element. Receives the index position of the element in the set and the old value as arguments. (The method requires to have the following signature: function(index,value))
		 */
		[JavaScriptMethod(name="val")]
		public function val3(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Get the current computed width for the first element in the set of matched elements.
		 * @since 1.0
		 */
		[JavaScriptMethod(name="width")]
		public function width1():int {
			return 0;
		}
		
		/**
		 * Set the CSS width of each element in the set of matched elements.
		 * @since 1.0
		 * @param value An integer representing the number of pixels, or an integer along with an optional unit of measure appended (as a string).
		 */
		[JavaScriptMethod(name="width")]
		public function width2(value:*):JQuery {
			return null;
		}
		
		/**
		 * Set the CSS width of each element in the set of matched elements.
		 * @since 1.4.1
		 * @param callBack A function returning the width to set. Receives the index position of the element in the set and the old width as arguments. Within the function, this refers to the current element in the set. (The method requires to have the following signature: function(index,width))
		 */
		[JavaScriptMethod(name="width")]
		public function width3(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Wrap an HTML structure around each element in the set of matched elements.
		 * @since 1.0
		 * @param wrappingElement An HTML snippet, selector expression, jQuery object, or DOM element specifying the structure to wrap around the matched elements.
		 */
		[JavaScriptMethod(name="wrap")]
		public function wrap1(wrappingElement:*):JQuery {
			return null;
		}
		
		/**
		 * Wrap an HTML structure around each element in the set of matched elements.
		 * @since 1.4
		 * @param callBack A callback function returning the HTML content or jQuery object to wrap around the matched elements. Receives the index position of the element in the set as an argument. Within the function, this refers to the current element in the set. (The method requires to have the following signature: function(index))
		 */
		[JavaScriptMethod(name="wrap")]
		public function wrap2(callBack:Function):JQuery {
			return null;
		}
		
		/**
		 * Wrap an HTML structure around all elements in the set of matched elements.
		 * @since 1.2
		 * @param wrappingElement An HTML snippet, selector expression, jQuery object, or DOM element specifying the structure to wrap around the matched elements.
		 */
		public function wrapAll(wrappingElement:*):JQuery {
			return null;
		}
		
		/**
		 * Wrap an HTML structure around the content of each element in the set of matched elements.
		 * @since 1.2
		 * @param wrappingElement An HTML snippet, selector expression, jQuery object, or DOM element specifying the structure to wrap around the content of the matched elements.
		 */
		[JavaScriptMethod(name="wrapInner")]
		public function wrapInner1(wrappingElement:String):JQuery {
			return null;
		}
		
		/**
		 * Wrap an HTML structure around the content of each element in the set of matched elements.
		 * @since 1.4
		 * @param callBack A callback function which generates a structure to wrap around the content of the matched elements. Receives the index position of the element in the set as an argument. Within the function, this refers to the current element in the set. (The method requires to have the following signature: function(index))
		 */
		[JavaScriptMethod(name="wrapInner")]
		public function wrapInner2(callBack:Function):JQuery {
			return null;
		}
		
		public function add(...params):* {
			return null;
		}
		
		public function addClass(...params):* {
			return null;
		}
		
		public function after(...params):* {
			return null;
		}
		
		public function animate(...params):* {
			return null;
		}
		
		public function append(...params):* {
			return null;
		}
		
		public function attr(...params):* {
			return null;
		}
		
		public function before(...params):* {
			return null;
		}
		
		public function bind(...params):* {
			return null;
		}
		
		public function blur(...params):* {
			return null;
		}
		
		public function change(...params):* {
			return null;
		}
		
		public function click(...params):* {
			return null;
		}
		
		public function clone(...params):* {
			return null;
		}
		
		public function closest(...params):* {
			return null;
		}
		
		public function css(...params):* {
			return null;
		}
		
		public function data(...params):* {
			return null;
		}
		
		public function dblclick(...params):* {
			return null;
		}
		
		public function delegate(...params):* {
			return null;
		}
		
		public function die(...params):* {
			return null;
		}
		
		public function eq(...params):* {
			return null;
		}
		
		public function error(...params):* {
			return null;
		}
		
		public function fadeIn(...params):* {
			return null;
		}
		
		public function fadeOut(...params):* {
			return null;
		}
		
		public function fadeTo(...params):* {
			return null;
		}
		
		public function fadeToggle(...params):* {
			return null;
		}
		
		public function filter(...params):* {
			return null;
		}
		
		public function find(...params):* {
			return null;
		}
		
		public function focus(...params):* {
			return null;
		}
		
		public function focusin(...params):* {
			return null;
		}
		
		public function focusout(...params):* {
			return null;
		}
		
		public function has(...params):* {
			return null;
		}
		
		public function height(...params):* {
			return null;
		}
		
		public function hide(...params):* {
			return null;
		}
		
		public function hover(...params):* {
			return null;
		}
		
		public function html(...params):* {
			return null;
		}
		
		public function index(...params):* {
			return null;
		}
		
		public function is_(...params):* {
			return null;
		}
		
		public function jQuery(...params):* {
			return null;
		}
		
		public function keydown(...params):* {
			return null;
		}
		
		public function keypress(...params):* {
			return null;
		}
		
		public function keyup(...params):* {
			return null;
		}
		
		public function live(...params):* {
			return null;
		}
		
		public function load(...params):* {
			return null;
		}
		
		public function mousedown(...params):* {
			return null;
		}
		
		public function mouseenter(...params):* {
			return null;
		}
		
		public function mouseleave(...params):* {
			return null;
		}
		
		public function mousemove(...params):* {
			return null;
		}
		
		public function mouseout(...params):* {
			return null;
		}
		
		public function mouseover(...params):* {
			return null;
		}
		
		public function mouseup(...params):* {
			return null;
		}
		
		public function nextUntil(...params):* {
			return null;
		}
		
		public function not(...params):* {
			return null;
		}
		
		public function off(...params):* {
			return null;
		}
		
		public function offset(...params):* {
			return null;
		}
		
		public function on(...params):* {
			return null;
		}
		
		public function one(...params):* {
			return null;
		}
		
		public function parentsUntil(...params):* {
			return null;
		}
		
		public function prepend(...params):* {
			return null;
		}
		
		public function prevUntil(...params):* {
			return null;
		}
		
		public function prop(...params):* {
			return null;
		}
		
		public function pushStack(...params):* {
			return null;
		}
		
		public function queue(...params):* {
			return null;
		}
		
		public function removeClass(...params):* {
			return null;
		}
		
		public function removeData(...params):* {
			return null;
		}
		
		public function replaceWith(...params):* {
			return null;
		}
		
		public function resize(...params):* {
			return null;
		}
		
		public function scroll(...params):* {
			return null;
		}
		
		public function scrollLeft(...params):* {
			return null;
		}
		
		public function scrollTop(...params):* {
			return null;
		}
		
		public function select(...params):* {
			return null;
		}
		
		public function show(...params):* {
			return null;
		}
		
		public function slideDown(...params):* {
			return null;
		}
		
		public function slideToggle(...params):* {
			return null;
		}
		
		public function slideUp(...params):* {
			return null;
		}
		
		public function stop(...params):* {
			return null;
		}
		
		public function submit(...params):* {
			return null;
		}
		
		public function text(...params):* {
			return null;
		}
		
		public function toggle(...params):* {
			return null;
		}
		
		public function toggleClass(...params):* {
			return null;
		}
		
		public function trigger(...params):* {
			return null;
		}
		
		public function unbind(...params):* {
			return null;
		}
		
		public function undelegate(...params):* {
			return null;
		}
		
		public function unload(...params):* {
			return null;
		}
		
		public function val(...params):* {
			return null;
		}
		
		public function width(...params):* {
			return null;
		}
		
		public function wrap(...params):* {
			return null;
		}
		
		public function wrapInner(...params):* {
			return null;
		}
	}
}
