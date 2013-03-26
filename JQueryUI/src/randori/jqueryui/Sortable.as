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
 * The XML files at this location: https://github.com/jquery/api.jqueryui.com were
 * used to generate this class
 * @author Randori JQueryUI generator
*/
package randori.jqueryui {
	import randori.webkit.dom.Element;
	
	
	/**
	 * Reorder elements in a list or grid using the mouse.
	 * <p>The jQuery UI Sortable plugin makes selected elements sortable by dragging with the mouse.</p><p><em>Note: In order to sort table rows, the <code>tbody</code> must be made sortable, not the <code>table</code>.</em></p><h3>Dependencies</h3><ul><li><a href="/category/ui-core/">UI Core</a></li><li><a href="/jQuery.widget/">Widget Factory</a></li><li><a href="/mouse/">Mouse Interaction</a></li></ul>
	 */
	[JavaScript(export="false")]
	public class Sortable {
		
		/**
		 * Defines where the helper that moves with the mouse is being appended to during the drag (for example, to resolve overlap/zIndex issues).
		 */
		public var appendTo:*;
		
		/**
		 * A jQuery object containing the element to append the helper to.
		 */
		public var appendTojQuery:JQueryUI;
		
		/**
		 * The element to append the helper to.
		 */
		public var appendToElement:Element;
		
		/**
		 * A selector specifying which element to append the helper to.
		 */
		public var appendToSelector:String;
		
		/**
		 * The string <code>"parent"</code> will cause the helper to be a sibling of the sortable item.
		 */
		public var appendToString:String;
		
		/**
		 * If defined, the items can be dragged only horizontally or vertically. Possible values: <code>"x"</code>, <code>"y"</code>.
		 */
		public var axis:String;
		
		/**
		 * Prevents sorting if you start on elements matching the selector.
		 */
		public var cancel:String;
		
		/**
		 * A selector of other sortable elements that the items from this list should be connected to. This is a one-way relationship, if you want the items to be connected in both directions, the <code>connectWith</code> option must be set on both sortable elements.
		 */
		public var connectWith:String;
		
		/**
		 * <p>Defines a bounding box that the sortable items are constrained to while dragging.</p><p>Note: The element specified for containment must have a calculated width and height (though it need not be explicit). For example, if you have <code>float: left</code> sortable children and specify <code>containment: "parent"</code> be sure to have <code>float: left</code> on the sortable/parent container as well or it will have <code>height: 0</code>, causing undefined behavior.</p>
		 */
		public var containment:*;
		
		/**
		 * An element to use as the container.
		 */
		public var containmentElement:Element;
		
		/**
		 * A selector specifying an element to use as the container.
		 */
		public var containmentSelector:String;
		
		/**
		 * A string identifying an element to use as the container. Possible values: <code>"parent"</code>, <code>"document"</code>, <code>"window"</code>.
		 */
		public var containmentString:String;
		
		/**
		 * Defines the cursor that is being shown while sorting.
		 */
		public var cursor:String;
		
		/**
		 * Moves the sorting element or helper so the cursor always appears to drag from the same position. Coordinates can be given as a hash using a combination of one or two keys: <code>{ top, left, right, bottom }</code>.
		 */
		public var cursorAt:Object;
		
		/**
		 * Time in milliseconds to define when the sorting should start. Adding a delay helps preventing unwanted drags when clicking on an element.
		 */
		public var delay:int;
		
		/**
		 * Tolerance, in pixels, for when sorting should start. If specified, sorting will not start until after mouse is dragged beyond distance. Can be used to allow for clicks on elements within a handle.
		 */
		public var distance:Number;
		
		/**
		 * If <code>false</code>, items from this sortable can't be dropped on an empty connect sortable (see the <a href="#option-connectWith"><code>connectWith</code></a> option.
		 */
		public var dropOnEmpty:Boolean;
		
		/**
		 * If <code>true</code>, forces the helper to have a size.
		 */
		public var forceHelperSize:Boolean;
		
		/**
		 * If true, forces the placeholder to have a size.
		 */
		public var forcePlaceholderSize:Boolean;
		
		/**
		 * Snaps the sorting element or helper to a grid, every x and y pixels. Array values: <code>[ x, y ]</code>.
		 */
		public var grid:Array;
		
		/**
		 * Restricts sort start click to the specified element.
		 */
		public var handle:*;
		
		public var handleSelector:String;
		
		public var handleElement:Element;
		
		/**
		 * Allows for a helper element to be used for dragging display.
		 */
		public var helper:*;
		
		/**
		 * If set to <code>"clone"</code>, then the element will be cloned and the clone will be dragged.
		 */
		public var helperString:String;
		
		/**
		 * A function that will return a DOMElement to use while dragging. The function receives the event and the element being sorted.
		 */
		public var helperFunction:Function;
		
		/**
		 * Specifies which items inside the element should be sortable.
		 */
		public var items:String;
		
		/**
		 * Defines the opacity of the helper while sorting. From <code>0.01</code> to <code>1</code>.
		 */
		public var opacity:Number;
		
		/**
		 * A class name that gets applied to the otherwise white space.
		 */
		public var placeholder:String;
		
		/**
		 * Whether the sortable items should revert to their new positions using a smooth animation.
		 */
		public var revert:*;
		
		/**
		 * When set to <code>true</code>, the items will animate with the default duration.
		 */
		public var revertBoolean:Boolean;
		
		/**
		 * The duration for the animation, in milliseconds.
		 */
		public var revertNumber:Number;
		
		/**
		 * If set to true, the page scrolls when coming to an edge.
		 */
		public var scroll:Boolean;
		
		/**
		 * Defines how near the mouse must be to an edge to start scrolling.
		 */
		public var scrollSensitivity:Number;
		
		/**
		 * The speed at which the window should scroll once the mouse pointer gets within the <a href="#option-scrollSensitivity"><code>scrollSensitivity</code></a> distance.
		 */
		public var scrollSpeed:Number;
		
		/**
		 * Specifies which mode to use for testing whether the item being moved is hovering over another item. Possible values:
		 * <ul><li><code>"intersect"</code>: The item overlaps the other item by at least 50%.</li><li><code>"pointer"</code>: The mouse pointer overlaps the other item.</li></ul>
		 */
		public var tolerance:String;
		
		/**
		 * Z-index for element/helper while being sorted.
		 */
		public var zIndex:int;
		
		/**
		 * Disables the <code>Sortable</code> if set to <code>true</code>.
		 */
		public var disabled:Boolean;
		
		/**
		 * Event:
		 * This event is triggered when sorting starts.
		 */
		public var onstart:Function;
		
		/**
		 * Event:
		 * This event is triggered during sorting.
		 */
		public var onsort:Function;
		
		/**
		 * Event:
		 * This event is triggered during sorting, but only when the DOM position has changed.
		 */
		public var onchange:Function;
		
		/**
		 * Event:
		 * This event is triggered when sorting stops, but when the placeholder/helper is still available.
		 */
		public var onbeforeStop:Function;
		
		/**
		 * Event:
		 * This event is triggered when sorting has stopped.
		 */
		public var onstop:Function;
		
		/**
		 * Event:
		 * This event is triggered when the user stopped sorting and the DOM position has changed.
		 */
		public var onupdate:Function;
		
		/**
		 * Event:
		 * This event is triggered when a connected sortable list has received an item from another list.
		 */
		public var onreceive:Function;
		
		/**
		 * Event:
		 * This event is triggered when a sortable item has been dragged out from the list and into another.
		 */
		public var onremove:Function;
		
		/**
		 * Event:
		 * This event is triggered when a sortable item is moved into a connected list.
		 */
		public var onover:Function;
		
		/**
		 * Event:
		 * <p>This event is triggered when a sortable item is moved away from a connected list.</p><p><em>Note: This event is also triggered when a sortable item is dropped.</em></p>
		 */
		public var onout:Function;
		
		/**
		 * Event:
		 * This event is triggered when using connected lists, every connected list on drag start receives it.
		 */
		public var onactivate:Function;
		
		/**
		 * Event:
		 * This event is triggered when sorting was stopped, is propagated to all possible connected lists.
		 */
		public var ondeactivate:Function;
		
		/**
		 * Cancels a change in the current sortable and reverts it to the state prior to when the current sort was started. Useful in the stop and receive callback functions.
		 */
		[JavaScriptMethod(name="cancel")]
		public function cancel_():void {
		}
		
		/**
		 * Refresh the sortable items. Triggers the reloading of all sortable items, causing new items to be recognized.
		 */
		public function refresh():void {
		}
		
		/**
		 * Refresh the cached positions of the sortable items. Calling this method refreshes the cached item positions of all sortables.
		 */
		public function refreshPositions():void {
		}
		
		/**
		 * <p>Serializes the sortable's item <code>id</code>s into a form/ajax submittable string. Calling this method produces a hash that can be appended to any url to easily submit a new item order back to the server.</p><p>It works by default by looking at the <code>id</code> of each item in the format <code>"setname_number"</code>, and it spits out a hash like <code>"setname[]=number&amp;setname[]=number"</code>.</p><p><em>Note: If serialize returns an empty string, make sure the <code>id</code> attributes include an underscore.  They must be in the form: <code>"set_number"</code> For example, a 3 element list with <code>id</code> attributes <code>"foo_1"</code>, <code>"foo_5"</code>, <code>"foo_2"</code> will serialize to <code>"foo[]=1&amp;foo[]=5&amp;foo[]=2"</code>. You can use an underscore, equal sign or hyphen to separate the set and number. For example <code>"foo=1"</code>, <code>"foo-1"</code>, and <code>"foo_1"</code> all serialize to <code>"foo[]=1"</code>.</em></p>
		 */
		public function serialize():String {
			return '';
		}
		
		/**
		 * Serializes the sortable's item id's into an array of string.
		 */
		public function toArray():Array {
			return null;
		}
		
		/**
		 * Removes the <code>Sortable</code> functionality completely. This will return the element back to its pre-init state.
		 */
		public function destroy():void {
		}
		
		/**
		 * Disables the <code>Sortable</code>.
		 */
		public function disable():void {
		}
		
		/**
		 * Enables the <code>Sortable</code>.
		 */
		public function enable():void {
		}
		
		/**
		 * Gets the value currently associated with the specified <code>optionName</code>.
		 */
		[JavaScriptMethod(name="option")]
		public function option1(optionName:String):JQueryUI {
			return null;
		}
		
		/**
		 * Gets an object containing key/value pairs representing the current <code>Sortable</code> options hash.
		 */
		[JavaScriptMethod(name="option")]
		public function option2():JQueryUI {
			return null;
		}
		
		/**
		 * Sets the value of the <code>Sortable</code> option associated with the specified <code>optionName</code>.
		 */
		[JavaScriptMethod(name="option")]
		public function option3(optionName:String, value:Object):JQueryUI {
			return null;
		}
		
		/**
		 * Sets one or more options for the <code>Sortable</code>.
		 */
		[JavaScriptMethod(name="option")]
		public function option4(options:Object):JQueryUI {
			return null;
		}
		
		/**
		 * Returns a <code>jQuery</code> object containing the <placeholder name="widget-element" />.
		 */
		public function widget():JQueryUI {
			return null;
		}
		
		public function option(...params):* {
			return null;
		}
	}
}
