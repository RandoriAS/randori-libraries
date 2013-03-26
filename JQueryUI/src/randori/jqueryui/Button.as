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
	 * Themable buttons and button sets.
	 * <p>Button enhances standard form elements like buttons, inputs and anchors to themeable buttons with appropriate hover and active styles.</p><p>In addition to basic push buttons, radio buttons and checkboxes (inputs of type radio and checkbox) can be converted to buttons. Their associated label is styled to appear as the button, while the underlying input is updated on click. For the association to work properly, give the input an <code>id</code> attribute, and refer to that in the label's <code>for</code> attribute. Don't nest the input inside the label, as that <a href="http://www.paciellogroup.com/blog/2011/07/html5-accessibility-chops-form-control-labeling/">causes accessibility problems</a>.</p><p>In order to group radio buttons, Button also provides an additional widget, called Buttonset. Buttonset is used by selecting a container element (which contains the radio buttons) and calling <code>.buttonset()</code>. Buttonset will also provide visual grouping, and therefore should be used whenever you have a group of buttons. It works by selecting all descendants and applying <code>.button()</code> to them. You can enable and disable a button set, which will enable and disable all contained buttons. Destroying a button set also calls each button's <code>destroy</code> method.</p><p>When using an input of type button, submit or reset, support is limited to plain text labels with no icons.</p><h3>Dependencies</h3><ul><li><a href="/category/ui-core/">UI Core</a></li><li><a href="/jQuery.widget/">Widget Factory</a></li></ul>
	 */
	[JavaScript(export="false")]
	public class Button {
		
		/**
		 * Icons to display, with or without text (see <a href="#option-text"><code>text</code></a> option). By default, the primary icon is displayed on the left of the label text and the secondary is displayed on the right. The positioning can be controlled via CSS. The value for the <code>primary</code> and <code>secondary</code> properties must be a class name, e.g., <code>"ui-icon-gear"</code>. For using only one icon: <code>icons: { primary: "ui-icon-locked" }</code>. For using two icons: <code>icons: { primary: "ui-icon-gear", secondary: "ui-icon-triangle-1-s" }</code>.
		 */
		public var icons:Object;
		
		/**
		 * Text to show in the button. When not specified (<code>null</code>), the element's HTML content is used, or its <code>value</code> attribute if the element is an input element of type submit or reset, or the HTML content of the associated label element if the element is an input of type radio or checkbox.
		 */
		public var label:String;
		
		/**
		 * Whether to show the label. When set to <code>false</code> no text will be displayed, but the <a href="#options-icons"><code>icons</code></a> option must be enabled, otherwise the <code>text</code> option will be ignored.
		 */
		public var text:Boolean;
		
		/**
		 * Disables the <code>Button</code> if set to <code>true</code>.
		 */
		public var disabled:Boolean;
		
		/**
		 * Refreshes the visual state of the button. Useful for updating button state after the native element's checked or disabled state is changed programmatically.
		 */
		public function refresh():void {
		}
		
		/**
		 * Removes the <code>Button</code> functionality completely. This will return the element back to its pre-init state.
		 */
		public function destroy():void {
		}
		
		/**
		 * Disables the <code>Button</code>.
		 */
		public function disable():void {
		}
		
		/**
		 * Enables the <code>Button</code>.
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
		 * Gets an object containing key/value pairs representing the current <code>Button</code> options hash.
		 */
		[JavaScriptMethod(name="option")]
		public function option2():JQueryUI {
			return null;
		}
		
		/**
		 * Sets the value of the <code>Button</code> option associated with the specified <code>optionName</code>.
		 */
		[JavaScriptMethod(name="option")]
		public function option3(optionName:String, value:Object):JQueryUI {
			return null;
		}
		
		/**
		 * Sets one or more options for the <code>Button</code>.
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
