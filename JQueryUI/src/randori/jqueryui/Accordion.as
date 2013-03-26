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
	 * Convert a pair of headers and content panels into an accordion.
	 * <p>The markup of your accordion container needs pairs of headers and content panels:</p><pre><code data-linenum="true"><![CDATA[
	 * <div id="accordion">
	 * <h3>First header</h3>
	 * <div>First content panel</div>
	 * <h3>Second header</h3>
	 * <div>Second content panel</div>
	 * </div>
	 * ]]></code></pre><p>Accordions support arbitrary markup, but each content panel must always be the next sibling after its associated header. See the <a href="#option-header"><code>header</code></a> option for information on how to use custom markup structures.</p><p>The panels can be activated programmatically by setting the <a href="#option-active"><code>active</code></a> option.</p><h3>Keyboard interaction</h3><p>When focus is on a header, the following key commands are available:</p><ul><li>UP/LEFT - Move focus to the previous header. If on first header, moves focus to last header.</li><li>DOWN/RIGHT - Move focus to the next header. If on last header, moves focus to first header.</li><li>HOME - Move focus to the first header.</li><li>END - Move focus to the last header.</li><li>SPACE/ENTER - Activate panel associated with focused header.</li></ul><p>When focus is in a panel:</p><ul><li>CTRL+UP: Move focus to associated header.</li></ul><h3>Dependencies</h3><ul><li><a href="/category/ui-core/">UI Core</a></li><li><a href="/jQuery.widget/">Widget Factory</a></li><li><a href="/category/effects-core/">Effects Core</a> (optional; for use with the <a href="#option-animate"><code>animate</code></a> option)</li></ul>
	 */
	[JavaScript(export="false")]
	public class Accordion {
		
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
		 * If and how to animate changing panels.
		 */
		public var animate:*;
		
		/**
		 * A value of <code>false</code> will disable animations.
		 */
		public var animateBoolean:Boolean;
		
		/**
		 * Duration in milliseconds with default easing.
		 */
		public var animateNumber:Number;
		
		/**
		 * Name of <a href="/easings/">easing</a> to use with default duration.
		 */
		public var animateString:String;
		
		/**
		 * Animation settings with <code>easing</code> and <code>duration</code> properties.
		 * <ul><li>Can also contain a <code>down</code> property with any of the above options.</li><li>"Down" animations occur when the panel being activated has a lower index than the currently active panel.</li></ul>
		 */
		public var animateObject:Object;
		
		/**
		 * Whether all the sections can be closed at once. Allows collapsing the active section.
		 */
		public var collapsible:Boolean;
		
		/**
		 * The event that accordion headers will react to in order to activate the associated panel. Multiple events can be specificed, separated by a space.
		 */
		public var event:String;
		
		/**
		 * <p>Selector for the header element, applied via <code>.find()</code> on the main accordion element. Content panels must be the sibling immedately after their associated headers.</p>
		 */
		public var header:String;
		
		/**
		 * <p>Controls the height of the accordion and each panel. Possible values:</p><ul><li><code>"auto"</code>: All panels will be set to the height of the tallest panel.</li><li><code>"fill"</code>: Expand to the available height based on the accordion's parent height.</li><li><code>"content"</code>: Each panel will be only as tall as its content.</li></ul>
		 * Use the <code>HeightStyles</code> enumeration to assign a valid value.
		 * @see HeightStyles
		 */
		public var heightStyle:String;
		
		/**
		 * <p>Icons to use for headers, matching an icon defined by the jQuery UI CSS Framework. Set to <code>false</code> to have no icons displayed.</p><ul><li>header (string, default: "ui-icon-triangle-1-e")</li><li>activeHeader (string, default: "ui-icon-triangle-1-s")</li></ul>
		 */
		public var icons:Object;
		
		/**
		 * Disables the <code>Accordion</code> if set to <code>true</code>.
		 */
		public var disabled:Boolean;
		
		/**
		 * Event:
		 * Triggered after a panel has been activated (after animation completes). If the accordion was previously collapsed, <code>ui.oldHeader</code> and <code>ui.oldPanel</code> will be empty jQuery objects. If the accordion is collapsing, <code>ui.newHeader</code> and <code>ui.newPanel</code> will be empty jQuery objects.
		 */
		public var onactivate:Function;
		
		/**
		 * Event:
		 * Triggered directly before a panel is activated. Can be canceled to prevent the panel from activating. If the accordion is currently collapsed, <code>ui.oldHeader</code> and <code>ui.oldPanel</code> will be empty jQuery objects. If the accordion is collapsing, <code>ui.newHeader</code> and <code>ui.newPanel</code> will be empty jQuery objects.
		 */
		public var onbeforeActivate:Function;
		
		/**
		 * Event:
		 * Triggered when the accordion is created. If the accordion is collapsed, <code>ui.header</code> and <code>ui.panel</code> will be empty jQuery objects.
		 */
		public var oncreate:Function;
		
		/**
		 * Recompute the height of the accordion panels. Results depend on the content and the <a href="#option-heightStyle"><code>heightStyle</code></a> option.
		 */
		public function refresh():void {
		}
		
		/**
		 * Removes the <code>Accordion</code> functionality completely. This will return the element back to its pre-init state.
		 */
		public function destroy():void {
		}
		
		/**
		 * Disables the <code>Accordion</code>.
		 */
		public function disable():void {
		}
		
		/**
		 * Enables the <code>Accordion</code>.
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
		 * Gets an object containing key/value pairs representing the current <code>Accordion</code> options hash.
		 */
		[JavaScriptMethod(name="option")]
		public function option2():JQueryUI {
			return null;
		}
		
		/**
		 * Sets the value of the <code>Accordion</code> option associated with the specified <code>optionName</code>.
		 */
		[JavaScriptMethod(name="option")]
		public function option3(optionName:String, value:Object):JQueryUI {
			return null;
		}
		
		/**
		 * Sets one or more options for the <code>Accordion</code>.
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
