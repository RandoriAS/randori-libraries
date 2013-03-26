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
	 * 
		Themeable menu with mouse and keyboard interactions for navigation.
	
	 * <p>A menu can be created from any valid markup as long as the elements have a strict parent/child relationship and each menu item has an anchor. The most commonly used element is the unordered list (<code>&lt;ul&gt;</code>):</p><pre><![CDATA[
	 * <ul id="menu">
	 * <li><a href="#">Item 1</a></li>
	 * <li><a href="#">Item 2</a></li>
	 * <li><a href="#">Item 3</a>
	 * <ul>
	 * <li><a href="#">Item 3-1</a></li>
	 * <li><a href="#">Item 3-2</a></li>
	 * <li><a href="#">Item 3-3</a></li>
	 * <li><a href="#">Item 3-4</a></li>
	 * <li><a href="#">Item 3-5</a></li>
	 * </ul>
	 * </li>
	 * <li><a href="#">Item 4</a></li>
	 * <li><a href="#">Item 5</a></li>
	 * </ul>
	 * ]]></pre><p>If you use a structure other than <code>&lt;ul&gt;</code>/<code>&lt;li&gt;</code>, including using the same element for the menu and the menu items, use the <a href="#option-menus"><code>menus</code></a> option to specify a way to differentiate the two elements, e.g., <code>menus: "div.menuElement"</code>.</p><p>Any menu item can be disabled by adding the <code>ui-state-disabled</code> class to that element.</p><p>To add icons to the menu, include them in the markup:</p><pre><![CDATA[
	 * <ul id="menu">
	 * <li><a href="#"><span class="ui-icon ui-icon-disk"></span>Save</a></li>
	 * </ul>
	 * ]]></pre><p>Menu automatically adds the necessary padding to items without icons.</p><h3>Keyboard interaction</h3><ul><li>ENTER/SPACE: Invoke the focused menu item's action, which may be opening a submenu.</li><li>UP: Move focus to the previous menu item.</li><li>DOWN: Move focus to the next menu item.</li><li>RIGHT: Open the submenu, if available.</li><li>LEFT: Close the current submenu and move focus to the parent menu item. If not in a submenu, do nothing.</li><li>ESCAPE: Close the current submenu and move focus to the parent menu item. If not in a submenu, do nothing.</li></ul><p>Typing a letter moves focus to the first item whose title starts with that character. Repeating the same character cycles through matching items. Typing more characters within the one second timer matches those characters.</p><p>Disabled items can receive keyboard focus, but do not allow any other interaction.</p><h3>Dependencies</h3><ul><li><a href="/category/ui-core/">UI Core</a></li><li><a href="/jQuery.widget/">Widget Factory</a></li><li><a href="/position/">Position</a></li></ul>
	 */
	[JavaScript(export="false")]
	public class Menu {
		
		/**
		 * Icons to use for submenus, matching an icon defined by the jQuery UI CSS Framework.
		 * <ul><li>submenu (string, default: "ui-icon-carat-1-e")</li></ul>
		 */
		public var icons:Object;
		
		/**
		 * <p>Selector for the elements that serve as the menu container, including sub-menus.</p><p><em>Note: The <code>menus</code> option should not be changed after initialization. Existing submenus will not be updated.</em></p>
		 */
		public var menus:String;
		
		/**
		 * Identifies the position of submenus in relation to the associated parent menu item. The <code>of</code> option defaults to the parent menu item, but you can specify another element to position against. You can refer to the <a href="/position/">jQuery UI Position</a> utility for more details about the various options.
		 */
		public var position:Object;
		
		/**
		 * <p>Customize the ARIA roles used for the menu and menu items. The default uses <code>"menuitem"</code> for items. Setting the <code>role</code> option to <code>"listbox"</code> will use <code>"option"</code> for items. If set to <code>null</code>, no roles will be set, which is useful if the menu is being controlled by another element that is maintaining focus.</p><p><em>Note: The <code>role</code> option should not be changed after initialization. Existing (sub)menus and menu items will not be updated.</em></p>
		 */
		public var role:String;
		
		/**
		 * Disables the <code>Menu</code> if set to <code>true</code>.
		 */
		public var disabled:Boolean;
		
		/**
		 * Event:
		 * Triggered when the menu loses focus.
		 */
		public var onblur:Function;
		
		/**
		 * Event:
		 * Triggered when a menu gains focus or when any menu item is activated.
		 */
		public var onfocus:Function;
		
		/**
		 * Event:
		 * Triggered when a menu item is selected.
		 */
		public var onselect:Function;
		
		/**
		 * Removes focus from a menu, resets any active element styles and triggers the menu's <a href="event-blur"><code>blur</code></a> event.
		 */
		public function blur():void {
		}
		
		/**
		 * Closes the currently active sub-menu.
		 */
		public function collapse():void {
		}
		
		/**
		 * Closes all open sub-menus.
		 */
		public function collapseAll():void {
		}
		
		/**
		 * Opens the sub-menu below the currently active item, if one exists.
		 */
		public function expand():void {
		}
		
		/**
		 * Activates a particular menu item, begins opening any sub-menu if present and triggers the menu's <a href="#event-focus"><code>focus</code></a> event.
		 */
		public function focus():void {
		}
		
		/**
		 * Returns a boolean value stating whether or not the currently active item is the first item in the menu.
		 */
		public function isFirstItem():void {
		}
		
		/**
		 * Returns a boolean value stating whether or not the currently active item is the last item in the menu.
		 */
		public function isLastItem():void {
		}
		
		/**
		 * Moves active state to next menu item.
		 */
		public function next():void {
		}
		
		/**
		 * Moves active state to first menu item below the bottom of a scrollable menu or the last item if not scrollable.
		 */
		public function nextPage():void {
		}
		
		/**
		 * Moves active state to previous menu item.
		 */
		public function previous():void {
		}
		
		/**
		 * Moves active state to first menu item above the top of a scrollable menu or the first item if not scrollable.
		 */
		public function previousPage():void {
		}
		
		/**
		 * Initializes sub-menus and menu items that have not already been initialized. New menu items, including sub-menus can be added to the menu or all of the contents of the menu can be replaced and then initialized with the <code>refresh()</code> method.
		 */
		public function refresh():void {
		}
		
		/**
		 * Selects the currently active menu item, collapses all sub-menus and triggers the menu's <a href="#event-select"><code>select</code></a> event.
		 */
		public function select():void {
		}
		
		/**
		 * Removes the <code>Menu</code> functionality completely. This will return the element back to its pre-init state.
		 */
		public function destroy():void {
		}
		
		/**
		 * Disables the <code>Menu</code>.
		 */
		public function disable():void {
		}
		
		/**
		 * Enables the <code>Menu</code>.
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
		 * Gets an object containing key/value pairs representing the current <code>Menu</code> options hash.
		 */
		[JavaScriptMethod(name="option")]
		public function option2():JQueryUI {
			return null;
		}
		
		/**
		 * Sets the value of the <code>Menu</code> option associated with the specified <code>optionName</code>.
		 */
		[JavaScriptMethod(name="option")]
		public function option3(optionName:String, value:Object):JQueryUI {
			return null;
		}
		
		/**
		 * Sets one or more options for the <code>Menu</code>.
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
