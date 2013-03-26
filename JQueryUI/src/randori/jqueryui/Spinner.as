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
		Enhance a text input for entering numeric values, with up/down buttons and arrow key handling.
	
	 * <p>Spinner, or number stepper, widget is perfect for handling all kinds of numeric input. It allow users to type a value directly or modify an existing value by spinning with the keyboard, mouse or scrollwheel. When combined with Globalize, you can even spin currencies and dates in a variety of locales.</p><p>Spinner wraps a text input, adds two buttons to increment and decrement the current value, along with handling key events for the same purpose. It delegates to <a href="https://github.com/jquery/globalize">Globalize</a> for number formatting and parsing.</p><h3>Keyboard interaction</h3><ul><li>UP: Increment the value by one step.</li><li>DOWN: Decrement the value by one step.</li><li>PAGE UP: Increment the value by one page.</li><li>PAGE DOWN: Decrement the value by one page.</li></ul><p>Focus stays in the text field, even after using the mouse to click one of the spin buttons.</p><h3>Dependencies</h3><ul><li><a href="/category/ui-core/">UI Core</a></li><li><a href="/jQuery.widget/">Widget Factory</a></li><li><a href="/button/">Button</a></li><li><a href="https://github.com/jquery/globalize">Globalize</a> (external, optional; for use with the <a href="#option-culture"><code>culture</code></a> and <a href="#option-numberFormat"><code>numberFormat</code></a> options)</li></ul>
	 */
	[JavaScript(export="false")]
	public class Spinner {
		
		/**
		 * Sets the culture to use for parsing and formatting the value. If <code>null</code>, the currently set culture in <code>Globalize</code> is used, see <a href="https://github.com/jquery/globalize">Globalize docs</a> for available cultures. Only relevant if the <a href="#option-numberFormat"><code>numberFormat</code></a> option is set. Requires <a href="https://github.com/jquery/globalize">Globalize</a> to be included.
		 */
		public var culture:String;
		
		/**
		 * Icons to use for buttons, matching an icon defined by the jQuery UI CSS Framework.
		 * <ul><li>up (string, default: "ui-icon-triangle-1-n")</li><li>down (string, default: "ui-icon-triangle-1-s")</li></ul>
		 */
		public var icons:Object;
		
		/**
		 * Controls the number of steps taken when holding down a spin button.
		 */
		public var incremental:*;
		
		/**
		 * When set to <code>true</code>, the stepping delta will increase when spun incessantly. When set to <code>false</code>, all steps are equal (as defined by the <a href="#option-step"><code>step</code></a> option).
		 */
		public var incrementalBoolean:Boolean;
		
		/**
		 * Receives one parameter: the number of spins that have occurred. Must return the number of steps that should occur for the current spin.
		 */
		public var incrementalFunction:Function;
		
		/**
		 * The maximum allowed value. The element's <code>max</code> attribute is used if it exists and the option is not explicitly set. If <code>null</code>, there is no maximum enforced.
		 */
		public var max:*;
		
		/**
		 * The maximum value.
		 */
		public var maxNumber:Number;
		
		/**
		 * If <a href="https://github.com/jquery/globalize">Globalize</a> is included, the <code>max</code> option can be passed as a string which will be parsed based on the <a href="#opiton-numberFormat"><code>numberFormat</code></a> and <a href="#option-culture"><code>culture</code></a> options; otherwise it will fall back to the native <code>parseFloat()</code> method.
		 */
		public var maxString:String;
		
		/**
		 * The minimum allowed value. The element's <code>min</code> attribute is used if it exists and the option is not explicitly set. If <code>null</code>, there is no minimum enforced.
		 */
		public var min:*;
		
		/**
		 * The minimum value.
		 */
		public var minNumber:Number;
		
		/**
		 * If <a href="https://github.com/jquery/globalize">Globalize</a> is included, the <code>min</code> option can be passed as a string which will be parsed based on the <a href="#opiton-numberFormat"><code>numberFormat</code></a> and <a href="#option-culture"><code>culture</code></a> options; otherwise it will fall back to the native <code>parseFloat()</code> method.
		 */
		public var minString:String;
		
		/**
		 * Format of numbers passed to  <a href="https://github.com/jquery/globalize"><code>Globalize</code></a>, if available. Most common are <code>"n"</code> for a decimal number and <code>"C"</code> for a currency value. Also see the <a href="#option-culture"><code>culture</code></a> option.
		 */
		public var numberFormat:String;
		
		/**
		 * The number of steps to take when paging via the <a href="#method-pageUp"><code>pageUp</code></a>/<a href="#method-pageDown"><code>pageDown</code></a> methods.
		 */
		public var page:Number;
		
		/**
		 * The size of the step to take when spinning via buttons or via the <a href="#method-stepUp"><code>stepUp()</code></a>/<a href="#method-stepDown"><code>stepDown()</code></a> methods. The element's <code>step</code> attribute is used if it exists and the option is not explicitly set.
		 */
		public var step:*;
		
		/**
		 * The size of the step.
		 */
		public var stepNumber:Number;
		
		/**
		 * If <a href="https://github.com/jquery/globalize">Globalize</a> is included, the <code>step</code> option can be passed as a string which will be parsed based on the <a href="#opiton-numberFormat"><code>numberFormat</code></a> and <a href="#option-culture"><code>culture</code></a> options, otherwise it will fall back to the native <code>parseFloat</code>.
		 */
		public var stepString:String;
		
		/**
		 * Disables the <code>Spinner</code> if set to <code>true</code>.
		 */
		public var disabled:Boolean;
		
		/**
		 * Event:
		 * Triggered before a spin. Can be canceled, preventing the spin from occurring.
		 */
		public var onstart:Function;
		
		/**
		 * Event:
		 * Triggered during increment/decrement (to determine direction of spin compare current value with <code>ui.value</code>).
		 * <p>Can be canceled, preventing the value from being updated.</p>
		 */
		public var onspin:Function;
		
		/**
		 * Event:
		 * Triggered after a spin.
		 */
		public var onstop:Function;
		
		/**
		 * Event:
		 * Triggered when the value of the spinner has changed and the input is no longer focused.
		 */
		public var onchange:Function;
		
		/**
		 * <p>Decrements the value by the specified number of pages, as defined by the <a href="#option-page"><code>page</code></a> option. Without the parameter, a single page is decremented.</p><p>If the resulting value is above the max, below the min, or results in a step mismatch, the value will be adjusted to the closest valid value.</p><p>Invoking <code>pageDown()</code> will cause <a href="#event-start"><code>start</code></a>, <a href="#event-spin"><code>spin</code></a>, and <a href="#event-stop"><code>stop</code></a> events to be triggered.</p>
		 */
		public function pageDown():void {
		}
		
		/**
		 * <p>Increments the value by the specified number of pages, as defined by the <a href="#option-page"><code>page</code></a> option. Without the parameter, a single page is incremented.</p><p>If the resulting value is above the max, below the min, or results in a step mismatch, the value will be adjusted to the closest valid value.</p><p>Invoking <code>pageUp()</code> will cause <a href="#event-start"><code>start</code></a>, <a href="#event-spin"><code>spin</code></a>, and <a href="#event-stop"><code>stop</code></a> events to be triggered.</p>
		 */
		public function pageUp():void {
		}
		
		/**
		 * <p>Decrements the value by the specified number of steps. Without the parameter, a single step is decremented.</p><p>If the resulting value is above the max, below the min, or results in a step mismatch, the value will be adjusted to the closest valid value.</p><p>Invoking <code>stepDown()</code> will cause <a href="#event-start"><code>start</code></a>, <a href="#event-spin"><code>spin</code></a>, and <a href="#event-stop"><code>stop</code></a> events to be triggered.</p>
		 */
		public function stepDown():void {
		}
		
		/**
		 * <p>Increments the value by the specified number of steps. Without the parameter, a single step is incremented.</p><p>If the resulting value is above the max, below the min, or results in a step mismatch, the value will be adjusted to the closest valid value.</p><p>Invoking <code>stepUp()</code> will cause <a href="#event-start"><code>start</code></a>, <a href="#event-spin"><code>spin</code></a>, and <a href="#event-stop"><code>stop</code></a> events to be triggered.</p>
		 */
		public function stepUp():void {
		}
		
		/**
		 * Gets the current value as a number. The value is parsed based on the <a href="#option-numberFormat"><code>numberFormat</code></a> and <a href="#option-culture"><code>culture</code></a> options.
		 */
		[JavaScriptMethod(name="value")]
		public function value1():void {
		}
		
		[JavaScriptMethod(name="value")]
		public function value2(value:*):void {
		}
		
		/**
		 * Removes the <code>Spinner</code> functionality completely. This will return the element back to its pre-init state.
		 */
		public function destroy():void {
		}
		
		/**
		 * Disables the <code>Spinner</code>.
		 */
		public function disable():void {
		}
		
		/**
		 * Enables the <code>Spinner</code>.
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
		 * Gets an object containing key/value pairs representing the current <code>Spinner</code> options hash.
		 */
		[JavaScriptMethod(name="option")]
		public function option2():JQueryUI {
			return null;
		}
		
		/**
		 * Sets the value of the <code>Spinner</code> option associated with the specified <code>optionName</code>.
		 */
		[JavaScriptMethod(name="option")]
		public function option3(optionName:String, value:Object):JQueryUI {
			return null;
		}
		
		/**
		 * Sets one or more options for the <code>Spinner</code>.
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
		
		public function value(...params):* {
			return null;
		}
		
		public function option(...params):* {
			return null;
		}
	}
}
