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
	
	
	[JavaScript(export="false")]
	public class Event {
		
		/**
		 * The current DOM element within the event bubbling phase.
		 * @since 1.3
		 */
		public var currentTarget:Element;
		
		/**
		 * An optional object of data passed to an event method when the current executing handler is bound.
		 * @since 1.1
		 */
		public var data:Object;
		
		/**
		 * The element where the currently-called jQuery event handler was attached.
		 * @since 1.7
		 */
		public var delegateTarget:Element;
		
		/**
		 * Indicates whether the META key was pressed when the event fired.
		 * @since 1.0.4
		 */
		public var metaKey:Boolean;
		
		/**
		 * The namespace specified when the event was triggered.
		 * @since 1.4.3
		 */
		public var namespace_:String;
		
		/**
		 * The mouse position relative to the left edge of the document.
		 * @since 1.0.4
		 */
		public var pageX:Number;
		
		/**
		 * The mouse position relative to the top edge of the document.
		 * @since 1.0.4
		 */
		public var pageY:Number;
		
		/**
		 * The other DOM element involved in the event, if any.
		 * @since 1.1.4
		 */
		public var relatedTarget:Element;
		
		/**
		 * The last value returned by an event handler that was triggered by this event, unless the value was undefined.
		 * @since 1.3
		 */
		public var result:Object;
		
		/**
		 * The DOM element that initiated the event.
		 * @since 1.0
		 */
		public var target:Element;
		
		/**
		 * The difference in milliseconds between the time the browser created the event and January 1, 1970.
		 * @since 1.2.6
		 */
		public var timeStamp:Number;
		
		/**
		 * Describes the nature of the event.
		 * @since 1.0
		 */
		public var type:String;
		
		/**
		 * For key or mouse events, this property indicates the specific key or button that was pressed.
		 * @since 1.1.3
		 */
		public var which:Number;
		
		/**
		 * Returns whether event.preventDefault() was ever called on this event object.
		 * @since 1.3
		 */
		public function isDefaultPrevented():Boolean {
			return false;
		}
		
		/**
		 * Returns whether event.stopImmediatePropagation() was ever called on this event object.
		 * @since 1.3
		 */
		public function isImmediatePropagationStopped():Boolean {
			return false;
		}
		
		/**
		 * Returns whether event.stopPropagation() was ever called on this event object.
		 * @since 1.3
		 */
		public function isPropagationStopped():Boolean {
			return false;
		}
		
		/**
		 * If this method is called, the default action of the event will not be triggered.
		 * @since 1.0
		 */
		public function preventDefault():void {
		}
		
		/**
		 * Keeps the rest of the handlers from being executed and prevents the event from bubbling up the DOM tree.
		 * @since 1.3
		 */
		public function stopImmediatePropagation():void {
		}
		
		/**
		 * Prevents the event from bubbling up the DOM tree, preventing any parent handlers from being notified of the event.
		 * @since 1.0
		 */
		public function stopPropagation():void {
		}
	}
}
