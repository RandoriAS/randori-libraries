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
	 * Use the mouse to select elements, individually or in a group.
	 * <p>The jQuery UI Selectable plugin allows for elements to be selected by dragging a box (sometimes called a lasso) with the mouse over the elements. Elements can also be selected via click or drag while holding the ctrl/meta key, allowing for multiple (non-contiguous) selections.</p><h3>Dependencies</h3><ul><li><a href="/category/ui-core/">UI Core</a></li><li><a href="/jQuery.widget/">Widget Factory</a></li><li><a href="/mouse/">Mouse Interaction</a></li></ul>
	 */
	[JavaScript(export="false")]
	public class Selectable {
		
		/**
		 * Which element the selection helper (the lasso) should be appended to.
		 */
		public var appendTo:String;
		
		/**
		 * This determines whether to refresh (recalculate) the position and size of each selectee at the beginning of each select operation. If you have many items, you may want to set this to false and call the <a href="#method-refresh"><code>refresh()</code></a> method manually.
		 */
		public var autoRefresh:Boolean;
		
		/**
		 * Prevents selecting if you start on elements matching the selector.
		 */
		public var cancel:String;
		
		/**
		 * Time in milliseconds to define when the selecting should start. This helps prevent unwanted selections when clicking on an element.
		 */
		public var delay:int;
		
		/**
		 * Tolerance, in pixels, for when selecting should start. If specified, selecting will not start until the mouse has been dragged beyond the specified distance.
		 */
		public var distance:Number;
		
		/**
		 * The matching child elements will be made selectees (able to be selected).
		 */
		public var filter:String;
		
		/**
		 * Specifies which mode to use for testing whether the lasso should select an item. Possible values:
		 * <ul><li><code>"fit"</code>: Lasso overlaps the item entirely.</li><li><code>"touch"</code>: Lasso overlaps the item by any amount.</li></ul>
		 */
		public var tolerance:String;
		
		/**
		 * Disables the <code>Selectable</code> if set to <code>true</code>.
		 */
		public var disabled:Boolean;
		
		/**
		 * Event:
		 * Triggered at the end of the select operation, on each element added to the selection.
		 */
		public var onselected:Function;
		
		/**
		 * Event:
		 * Triggered during the select operation, on each element added to the selection.
		 */
		public var onselecting:Function;
		
		/**
		 * Event:
		 * Triggered at the beginning of the select operation.
		 */
		public var onstart:Function;
		
		/**
		 * Event:
		 * Triggered at the end of the select operation.
		 */
		public var onstop:Function;
		
		/**
		 * Event:
		 * Triggered at the end of the select operation, on each element removed from the selection.
		 */
		public var onunselected:Function;
		
		/**
		 * Event:
		 * Triggered during the select operation, on each element removed from the selection.
		 */
		public var onunselecting:Function;
		
		/**
		 * Refresh the position and size of each selectee element. This method can be used to manually recalculate the position and size of each selectee when the <a href="#option-autoRefresh"><code>autoRefresh</code></a> option is set to <code>false</code>.
		 */
		public function refresh():void {
		}
		
		/**
		 * Removes the <code>Selectable</code> functionality completely. This will return the element back to its pre-init state.
		 */
		public function destroy():void {
		}
		
		/**
		 * Disables the <code>Selectable</code>.
		 */
		public function disable():void {
		}
		
		/**
		 * Enables the <code>Selectable</code>.
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
		 * Gets an object containing key/value pairs representing the current <code>Selectable</code> options hash.
		 */
		[JavaScriptMethod(name="option")]
		public function option2():JQueryUI {
			return null;
		}
		
		/**
		 * Sets the value of the <code>Selectable</code> option associated with the specified <code>optionName</code>.
		 */
		[JavaScriptMethod(name="option")]
		public function option3(optionName:String, value:Object):JQueryUI {
			return null;
		}
		
		/**
		 * Sets one or more options for the <code>Selectable</code>.
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
