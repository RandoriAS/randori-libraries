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
	 * A single content area with multiple panels, each associated with a header in a list.
	 * <p>Tabs are generally used to break content into multiple sections that can be swapped to save space, much like an accordion.</p><p>The content for each tab panel can be defined in-page or can be loaded via Ajax; both are handled automatically based on the <code>href</code> of the anchor associated with the tab. By default tabs are activated on click, but the events can be changed to hover via the <a href="#option-event"><code>event</code></a> option.</p><h3>Keyboard interaction</h3><p>When focus is on a tab, the following key commands are available:</p><ul><li>UP/LEFT: Move focus to the previous tab. If on first tab, moves focus to last tab. Activate focused tab after a short delay.</li><li>DOWN/RIGHT: Move focus to the next tab. If on last tab, moves focus to first tab. Activate focused tab after a short delay.</li><li>HOME: Move focus to the first tab. Activate focused tab after a short delay.</li><li>END: Move focus to the last tab. Activate focused tab after a short delay.</li><li>SPACE: Activate panel associated with focused tab.</li><li>ENTER: Activate or toggle panel associated with focused tab.</li><li>ALT+PAGE UP: Move focus to the previous tab and immediately activate.</li><li>ALT+PAGE DOWN: Move focus to the next tab and immediately activate.</li></ul><p>When focus is in a panel, the following key commands are available:</p><ul><li>CTRL+UP: Move focus to associated tab.</li><li>ALT+PAGE UP: Move focus to the previous tab and immediately activate.</li><li>ALT+PAGE DOWN: Move focus to the next tab and immediately activate.</li></ul><h3>Dependencies</h3><ul><li><a href="/category/ui-core/">UI Core</a></li><li><a href="/jQuery.widget/">Widget Factory</a></li><li><a href="/category/effects-core/">Effects Core</a> (optional; for use with the <a href="#option-show"><code>show</code></a> and <a href="#option-hide"><code>hide</code></a> options)</li></ul>
	 */
	[JavaScript(export="false")]
	public class Tabs {
		
		/**
		 * Which panel is currently open.
		 */
		public var active:*;
		
		/**
		 * Setting <code>active</code> to <code>false</code> will collapse all panels. This requires the <a href="#option-collapsible"><code>collapsible</code></a> option to be <code>true</code>.
		 */
		public var activeBoolean:Boolean;
		
		/**
		 * The zero-based index of the panel that is active (open). A negative value selects panels going backward from the last panel.
		 */
		public var activeInteger:int;
		
		/**
		 * When set to <code>true</code>, the active panel can be closed.
		 */
		public var collapsible:Boolean;
		
		/**
		 * Which tabs are disabled.
		 */
		public var disabled:*;
		
		/**
		 * Enable or disable all tabs.
		 */
		public var disabledBoolean:Boolean;
		
		/**
		 * An array containing the zero-based indexes of the tabs that should be disabled, e.g., <code>[ 0, 2 ]</code> would disable the first and third tab.
		 */
		public var disabledArray:Array;
		
		/**
		 * The type of event that the tabs should react to in order to activate the tab. To activate on hover, use <code>"mouseover"</code>.
		 */
		public var event:String;
		
		/**
		 * Controls the height of the tabs widget and each panel. Possible values:
		 * <ul><li><code>"auto"</code>: All panels will be set to the height of the tallest panel.</li><li><code>"fill"</code>: Expand to the available height based on the tabs' parent height.</li><li><code>"content"</code>: Each panel will be only as tall as its content.</li></ul>
		 * Use the <code>HeightStyles</code> enumeration to assign a valid value.
		 * @see HeightStyles
		 */
		public var heightStyle:String;
		
		/**
		 * If and how to animate the hiding of the <placeholder name="animated-element" />.
		 */
		public var hide:Boolean;
		
		/**
		 * If and how to animate the showing of the <placeholder name="animated-element" />.
		 */
		public var show:Boolean;
		
		/**
		 * Event:
		 * Triggered after a tab has been activated (after animation completes). If the tabs were previously collapsed, <code>ui.oldTab</code> and <code>ui.oldPanel</code> will be empty jQuery objects. If the tabs are collapsing, <code>ui.newTab</code> and <code>ui.newPanel</code> will be empty jQuery objects.
		 */
		public var onactivate:Function;
		
		/**
		 * Event:
		 * Triggered directly after a tab is activated. Can be canceled to prevent the tab from activating. If the tabs are currently collapsed, <code>ui.oldTab</code> and <code>ui.oldPanel</code> will be empty jQuery objects. If the tabs are collapsing, <code>ui.newTab</code> and <code>ui.newPanel</code> will be empty jQuery objects.
		 */
		public var onbeforeActivate:Function;
		
		/**
		 * Event:
		 * <p>Triggered when a remote tab is about to be loaded, after the <a href="#event-beforeActivate"><code>beforeActivate</code></a> event. Can be canceled to prevent the tab panel from loading content; though the panel will still be activated. This event is triggered just before the Ajax request is made, so modifications can be made to <code>ui.jqXHR</code> and <code>ui.ajaxSettings</code>.</p><p><em>Note: Although <code>ui.ajaxSettings</code> is provided and can be modified, some of these settings have already been processed by jQuery. For example, <a href="http://api.jquery.com/jQuery.ajaxPrefilter/">prefilters</a> have been applied, <code>data</code> has been processed, and <code>type</code> has been determined. The <code>beforeLoad</code> event occurs at the same time, and therefore has the same restrictions, as the <code>beforeSend</code> callback from <a href="http://api.jquery.com/jQuery.ajax/"><code>jQuery.ajax()</code></a>.</em></p>
		 */
		public var onbeforeLoad:Function;
		
		/**
		 * Event:
		 * Triggered when the tabs are created. If the tabs are collapsed, <code>ui.tab</code> and <code>ui.panel</code> will be empty jQuery objects.
		 */
		public var oncreate:Function;
		
		/**
		 * Event:
		 * Triggered after a remote tab has been loaded.
		 */
		public var onload:Function;
		
		/**
		 * Disables all tabs.
		 */
		[JavaScriptMethod(name="disable")]
		public function disable1():void {
		}
		
		/**
		 * Disables a tab. The selected tab cannot be disabled. To disable more than one tab at once, set the <a href="#option-disabled"><code>disabled</code></a> option: <code>$( "#tabs" ).tabs( "option", "disabled", [ 1, 2, 3 ] )</code>.
		 */
		[JavaScriptMethod(name="disable")]
		public function disable2(index:*):void {
		}
		
		/**
		 * Enables all tabs.
		 */
		[JavaScriptMethod(name="enable")]
		public function enable1():void {
		}
		
		/**
		 * Enables a tab. To enable more than one tab at once reset the disabled property like: <code>$( "#example" ).tabs( "option", "disabled", [] );</code>.
		 */
		[JavaScriptMethod(name="enable")]
		public function enable2(index:*):void {
		}
		
		/**
		 * Loads the panel content of a remote tab.
		 */
		public function load():void {
		}
		
		/**
		 * Process any tabs that were added or removed directly in the DOM and recompute the height of the tab panels. Results depend on the content and the <a href="#option-heightStyle"><code>heightStyle</code></a> option.
		 */
		public function refresh():void {
		}
		
		/**
		 * Removes the <code>Tabs</code> functionality completely. This will return the element back to its pre-init state.
		 */
		public function destroy():void {
		}
		
		/**
		 * Gets the value currently associated with the specified <code>optionName</code>.
		 */
		[JavaScriptMethod(name="option")]
		public function option1(optionName:String):JQueryUI {
			return null;
		}
		
		/**
		 * Gets an object containing key/value pairs representing the current <code>Tabs</code> options hash.
		 */
		[JavaScriptMethod(name="option")]
		public function option2():JQueryUI {
			return null;
		}
		
		/**
		 * Sets the value of the <code>Tabs</code> option associated with the specified <code>optionName</code>.
		 */
		[JavaScriptMethod(name="option")]
		public function option3(optionName:String, value:Object):JQueryUI {
			return null;
		}
		
		/**
		 * Sets one or more options for the <code>Tabs</code>.
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
		
		public function disable(...params):* {
			return null;
		}
		
		public function enable(...params):* {
			return null;
		}
		
		public function option(...params):* {
			return null;
		}
	}
}
