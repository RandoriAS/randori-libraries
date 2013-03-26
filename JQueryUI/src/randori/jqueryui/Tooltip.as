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
	 * Customizable, themeable tooltips, replacing native tooltips.
	 * <p>Tooltip replaces native tooltips, making them themeable as well as allowing various customizations:</p><ul><li>Display other content than just the title, like inline footnotes or extra content retrieved via Ajax.</li><li>Customize the positioning, e.g., to center the tooltip above elements.</li><li>Add extra styling to customize the appearance, for warning or error fields.</li></ul><p>A fade animation is used by default to show and hide the tooltip, making the appearance a bit more organic, compared to just toggling the visibility. This can be customized with the <a href="#option-show"><code>show</code></a> and <a href="#option-hide"><code>hide</code></a> options.</p><p>The <a href="#option-items"><code>items</code></a> and <a href="#option-content"><code>content</code></a> options need to stay in-sync. If you change one of them, you need to change the other.</p><p>In general, disabled elements do not trigger any DOM events. Therefore, it is not possible to properly control tooltips for disabled elements, since we need to listen to events to determine when to show and hide the tooltip. As a result, jQuery UI does not guarantee any level of support for tooltips attached to disabled elements. Unfortunately, this means that if you require tooltips on disabled elements, you may end up with a mixture of native tooltips and jQuery UI tooltips.</p><h3>Dependencies</h3><ul><li><a href="/category/ui-core/">UI Core</a></li><li><a href="/jQuery.widget/">Widget Factory</a></li><li><a href="/position/">Position</a></li><li><a href="/category/effects-core/">Effects Core</a> (optional; for use with the <a href="#option-show"><code>show</code></a> and <a href="#option-hide"><code>hide</code></a> options)</li></ul>
	 */
	[JavaScript(export="false")]
	public class Tooltip {
		
		/**
		 * <p>The content of the tooltip.</p><p><em>When changing this option, you likely need to also change the <a href="#option-items"><code>items</code></a> option.</em></p>
		 */
		public var content:*;
		
		/**
		 * A callback which can either return the content directly, or call the first argument, passing in the content, e.g., for Ajax content.
		 */
		public var contentFunction:Function;
		
		/**
		 * A string of HTML to use for the tooltip content.
		 */
		public var contentString:String;
		
		/**
		 * <p>A selector indicating which items should show tooltips. Customize if you're using something other then the title attribute for the tooltip content, or if you need a different selector for event delegation.</p><p><em>When changing this option, you likely need to also change the <a href="#option-content"><code>content</code></a> option.</em></p>
		 */
		public var items:String;
		
		/**
		 * <p>Identifies the position of the tooltip in relation to the associated target element. The <code>of</code> option defaults to the target element, but you can specify another element to position against. You can refer to the <a href="/position">jQuery UI Position</a> utility for more details about the various options.</p>
		 */
		public var position:Object;
		
		/**
		 * A class to add to the widget, can be used to display various tooltip types, like warnings or errors.
		 * <p>This may get replaced by the <a href="http://bugs.jqueryui.com/ticket/7053">classes option</a>.</p>
		 */
		public var tooltipClass:String;
		
		/**
		 * Whether the tooltip should track (follow) the mouse.
		 */
		public var track:Boolean;
		
		/**
		 * Disables the <code>Tooltip</code> if set to <code>true</code>.
		 */
		public var disabled:Boolean;
		
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
		 * Triggered when a tooltip is shown, triggered on <code>focusin</code> or <code>mouseover</code>.
		 */
		public var onopen:Function;
		
		/**
		 * Event:
		 * Triggered when a tooltip is closed, triggered on <code>focusout</code> or <code>mouseleave</code>.
		 */
		public var onclose:Function;
		
		/**
		 * Closes a tooltip. This is only intended to be called for non-delegated tooltips.
		 */
		public function close():void {
		}
		
		/**
		 * Programmatically open a tooltip. This is only intended to be called for non-delegated tooltips.
		 */
		public function open():void {
		}
		
		/**
		 * Removes the <code>Tooltip</code> functionality completely. This will return the element back to its pre-init state.
		 */
		public function destroy():void {
		}
		
		/**
		 * Disables the <code>Tooltip</code>.
		 */
		public function disable():void {
		}
		
		/**
		 * Enables the <code>Tooltip</code>.
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
		 * Gets an object containing key/value pairs representing the current <code>Tooltip</code> options hash.
		 */
		[JavaScriptMethod(name="option")]
		public function option2():JQueryUI {
			return null;
		}
		
		/**
		 * Sets the value of the <code>Tooltip</code> option associated with the specified <code>optionName</code>.
		 */
		[JavaScriptMethod(name="option")]
		public function option3(optionName:String, value:Object):JQueryUI {
			return null;
		}
		
		/**
		 * Sets one or more options for the <code>Tooltip</code>.
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
