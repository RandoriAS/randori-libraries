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
	 * Allow elements to be moved using the mouse.
	 * <p>Make the selected elements draggable by mouse. If you want not just drag, but drag &amp; drop, see the <a href="/droppable/">jQuery UI Droppable plugin</a>, which provides a drop target for draggables.</p><h3>Dependencies</h3><ul><li><a href="/category/ui-core/">UI Core</a></li><li><a href="/jQuery.widget/">Widget Factory</a></li><li><a href="/mouse/">Mouse Interaction</a></li></ul>
	 */
	[JavaScript(export="false")]
	public class Draggable {
		
		/**
		 * If set to <code>false</code>, will prevent the <code>ui-draggable</code> class from being added. This may be desired as a performance optimization when calling <code>.draggable()</code> on hundreds of elements.
		 */
		public var addClasses:Boolean;
		
		/**
		 * Which element the draggable helper should be appended to while dragging.
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
		 * The string <code>"parent"</code> will cause the helper to be a sibling of the draggable.
		 */
		public var appendToString:String;
		
		/**
		 * Constrains dragging to either the horizontal (x) or vertical (y) axis. Possible values: <code>"x"</code>, <code>"y"</code>.
		 */
		public var axis:String;
		
		/**
		 * Prevents dragging from starting on specified elements.
		 */
		public var cancel:String;
		
		/**
		 * Allows the draggable to be dropped onto the specified sortables. If this option is used, a draggable can be dropped onto a sortable list and then becomes part of it. Note: The <a href="#option-helper"><code>helper</code></a> option must be set to <code>"clone"</code> in order to work flawlessly. Requires the <a href="/sortable/">jQuery UI Sortable plugin</a> to be included.
		 */
		public var connectToSortable:String;
		
		/**
		 * Constrains dragging to within the bounds of the specified element or region.
		 */
		public var containment:*;
		
		/**
		 * The draggable element will be contained to the bounding box of the first element found by the selector. If no element is found, no containment will be set.
		 */
		public var containmentSelector:String;
		
		/**
		 * The draggable element will be contained to the bounding box of this element.
		 */
		public var containmentElement:Element;
		
		/**
		 * Possible values: <code>"parent"</code>, <code>"document"</code>, <code>"window"</code>.
		 */
		public var containmentString:String;
		
		/**
		 * An array defining a bounding box in the form <code>[ x1, y1, x2, y2 ]</code>.
		 */
		public var containmentArray:Array;
		
		/**
		 * The CSS cursor during the drag operation.
		 */
		public var cursor:String;
		
		/**
		 * Sets the offset of the dragging helper relative to the mouse cursor. Coordinates can be given as a hash using a combination of one or two keys: <code>{ top, left, right, bottom }</code>.
		 */
		public var cursorAt:Object;
		
		/**
		 * Time in milliseconds after mousedown until dragging should start. This option can be used to prevent unwanted drags when clicking on an element.
		 */
		public var delay:Number;
		
		/**
		 * Distance in pixels after mousedown the mouse must move before dragging should start. This option can be used to prevent unwanted drags when clicking on an element.
		 */
		public var distance:Number;
		
		/**
		 * Snaps the dragging helper to a grid, every x and y pixels. The array must be of the form <code>[ x, y ]</code>.
		 */
		public var grid:Array;
		
		/**
		 * If specified, restricts dragging from starting unless the mousedown occurs on the specified element(s).
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
		 * A function that will return a DOMElement to use while dragging.
		 */
		public var helperFunction:Function;
		
		/**
		 * Prevent iframes from capturing the mousemove events during a drag. Useful in combination with the <a href="#option-cursorAt"><code>cursorAt</code></a> option, or in any case where the mouse cursor may not be over the helper.
		 */
		public var iframeFix:*;
		
		/**
		 * When set to <code>true</code>, transparent overlays will be placed over all iframes on the page.
		 */
		public var iframeFixBoolean:Boolean;
		
		/**
		 * Any iframes matching the selector will be covered by transparent overlays.
		 */
		public var iframeFixSelector:String;
		
		/**
		 * Opacity for the helper while being dragged.
		 */
		public var opacity:Number;
		
		/**
		 * If set to <code>true</code>, all droppable positions are calculated on every mousemove.
		 * <em>Caution: This solves issues on highly dynamic pages, but dramatically decreases performance.</em>
		 */
		public var refreshPositions:Boolean;
		
		/**
		 * Whether the element should revert to its start position when dragging stops.
		 */
		public var revert:*;
		
		/**
		 * If set to <code>true</code> the element will always revert.
		 */
		public var revertBoolean:Boolean;
		
		/**
		 * If set to <code>"invalid"</code>, revert will only occur if the draggable has not been dropped on a droppable. For <code>"valid"</code>, it's the other way around.
		 */
		public var revertString:String;
		
		/**
		 * The duration of the revert animation, in milliseconds. Ignored if the <a href="#option-revert"><code>revert</code></a> option is <code>false</code>.
		 */
		public var revertDuration:Number;
		
		/**
		 * Used to group sets of draggable and droppable items, in addition to droppable's <a href="/droppable#option-accept"><code>accept</code></a> option. A draggable with the same <code>scope</code> value as a droppable will be accepted by the droppable.
		 */
		public var scope:String;
		
		/**
		 * If set to <code>true</code>, container auto-scrolls while dragging.
		 */
		public var scroll:Boolean;
		
		/**
		 * Distance in pixels from the edge of the viewport after which the viewport should scroll. Distance is relative to pointer, not the draggable. Ignored if the <a href="#option-scroll"><code>scroll</code></a> option is <code>false</code>.
		 */
		public var scrollSensitivity:Number;
		
		/**
		 * The speed at which the window should scroll once the mouse pointer gets within the <a href="#option-scrollSensitivity"><code>scrollSensitivity</code></a> distance. Ignored if the <a href="#option-scroll"><code>scroll</code></a> option is <code>false</code>.
		 */
		public var scrollSpeed:Number;
		
		/**
		 * Whether the element should snap to other elements.
		 */
		public var snap:*;
		
		/**
		 * When set to <code>true</code>, the element will snap to all other draggable elements.
		 */
		public var snapBoolean:Boolean;
		
		/**
		 * A selector specifying which elements to snap to.
		 */
		public var snapSelector:String;
		
		/**
		 * Determines which edges of snap elements the draggable will snap to. Ignored if the <a href="#option-snap"><code>snap</code></a> option is <code>false</code>. Possible values: <code>"inner"</code>, <code>"outer"</code>, <code>"both"</code>.
		 */
		public var snapMode:String;
		
		/**
		 * The distance in pixels from the snap element edges at which snapping should occur. Ignored if the <a href="#option-snap"><code>snap</code></a> option is <code>false</code>.
		 */
		public var snapTolerance:Number;
		
		/**
		 * Controls the z-index of the set of elements that match the selector, always brings the currently dragged item to the front. Very useful in things like window managers.
		 */
		public var stack:String;
		
		/**
		 * Z-index for the helper while being dragged.
		 */
		public var zIndex:Number;
		
		/**
		 * Disables the <code>Draggable</code> if set to <code>true</code>.
		 */
		public var disabled:Boolean;
		
		/**
		 * Event:
		 * Triggered when dragging starts.
		 */
		public var onstart:Function;
		
		/**
		 * Event:
		 * Triggered while the mouse is moved during the dragging.
		 */
		public var ondrag:Function;
		
		/**
		 * Event:
		 * Triggered when dragging stops.
		 */
		public var onstop:Function;
		
		/**
		 * Removes the <code>Draggable</code> functionality completely. This will return the element back to its pre-init state.
		 */
		public function destroy():void {
		}
		
		/**
		 * Disables the <code>Draggable</code>.
		 */
		public function disable():void {
		}
		
		/**
		 * Enables the <code>Draggable</code>.
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
		 * Gets an object containing key/value pairs representing the current <code>Draggable</code> options hash.
		 */
		[JavaScriptMethod(name="option")]
		public function option2():JQueryUI {
			return null;
		}
		
		/**
		 * Sets the value of the <code>Draggable</code> option associated with the specified <code>optionName</code>.
		 */
		[JavaScriptMethod(name="option")]
		public function option3(optionName:String, value:Object):JQueryUI {
			return null;
		}
		
		/**
		 * Sets one or more options for the <code>Draggable</code>.
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
