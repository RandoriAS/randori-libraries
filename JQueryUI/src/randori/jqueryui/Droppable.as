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
	
	
	/**
	 * Create targets for draggable elements.
	 * <p>The jQuery UI Droppable plugin makes selected elements droppable (meaning they accept being dropped on by <a href="/draggable/">draggables</a>). You can specify which draggables each will accept.</p><h3>Dependencies</h3><ul><li><a href="/category/ui-core/">UI Core</a></li><li><a href="/jQuery.widget/">Widget Factory</a></li><li><a href="/mouse/">Mouse Interaction</a></li></ul>
	 */
	[JavaScript(export="false")]
	public class Droppable {
		
		/**
		 * Controls which draggable elements are accepted by the droppable.
		 */
		public var accept:*;
		
		/**
		 * A selector indicating which draggable elements are accepted.
		 */
		public var acceptSelector:String;
		
		/**
		 * A function that will be called for each draggable on the page (passed as the first argument to the function). The function must return <code>true</code> if the draggable should be accepted.
		 */
		public var acceptFunction:Function;
		
		/**
		 * If specified, the class will be added to the droppable while an acceptable draggable is being dragged.
		 */
		public var activeClass:String;
		
		/**
		 * If set to <code>false</code>, will prevent the <code>ui-droppable</code> class from being added. This may be desired as a performance optimization when calling <code>.droppable()</code> init on hundreds of elements.
		 */
		public var addClasses:Boolean;
		
		/**
		 * By default, when an element is dropped on nested droppables, each droppable will receive the element. However, by setting this option to <code>true</code>, any parent droppables will not receive the element.
		 */
		public var greedy:Boolean;
		
		/**
		 * If specified, the class will be added to the droppable while an acceptable draggable is being hovered over the droppable.
		 */
		public var hoverClass:String;
		
		/**
		 * Used to group sets of draggable and droppable items, in addition to the <a href="#option-accept"><code>accept</code></a> option. A draggable with the same scope value as a droppable will be accepted.
		 */
		public var scope:String;
		
		/**
		 * Specifies which mode to use for testing whether a draggable is hovering over a droppable. Possible values:
		 * <ul><li><code>"fit"</code>: Draggable overlaps the droppable entirely.</li><li><code>"intersect"</code>: Draggable overlaps the droppable at least 50% in both directions.</li><li><code>"pointer"</code>: Mouse pointer overlaps the droppable.</li><li><code>"touch"</code>: Draggable overlaps the droppable any amount.</li></ul>
		 */
		public var tolerance:String;
		
		/**
		 * Disables the <code>Droppable</code> if set to <code>true</code>.
		 */
		public var disabled:Boolean;
		
		/**
		 * Event:
		 * Triggered when an accepted draggable starts dragging. This can be useful if you want to make the droppable "light up" when it can be dropped on.
		 */
		public var onactivate:Function;
		
		/**
		 * Event:
		 * Triggered when an accepted draggable stops dragging.
		 */
		public var ondeactivate:Function;
		
		/**
		 * Event:
		 * Triggered when an accepted draggable is dragged over the droppable (based on the<a href="#option-tolerance"><code>tolerance</code></a> option).
		 */
		public var onover:Function;
		
		/**
		 * Event:
		 * Triggered when an accepted draggable is dragged out of the droppable (based on the<a href="#option-tolerance"><code>tolerance</code></a> option).
		 */
		public var onout:Function;
		
		/**
		 * Event:
		 * Triggered when an accepted draggable is dropped on the droppable (based on the<a href="#option-tolerance"><code>tolerance</code></a> option).
		 */
		public var ondrop:Function;
		
		/**
		 * Removes the <code>Droppable</code> functionality completely. This will return the element back to its pre-init state.
		 */
		public function destroy():void {
		}
		
		/**
		 * Disables the <code>Droppable</code>.
		 */
		public function disable():void {
		}
		
		/**
		 * Enables the <code>Droppable</code>.
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
		 * Gets an object containing key/value pairs representing the current <code>Droppable</code> options hash.
		 */
		[JavaScriptMethod(name="option")]
		public function option2():JQueryUI {
			return null;
		}
		
		/**
		 * Sets the value of the <code>Droppable</code> option associated with the specified <code>optionName</code>.
		 */
		[JavaScriptMethod(name="option")]
		public function option3(optionName:String, value:Object):JQueryUI {
			return null;
		}
		
		/**
		 * Sets one or more options for the <code>Droppable</code>.
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
