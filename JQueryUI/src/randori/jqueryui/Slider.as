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
	 * Drag a handle to select a numeric value.
	 * <p>The jQuery UI Slider plugin makes selected elements into sliders. There are various options such as multiple handles and ranges. The handle can be moved with the mouse or the arrow keys.</p><p>The slider widget will create handle elements with the class <code>ui-slider-handle</code> on initialization. You can specify custom handle elements by creating and appending the elements and adding the <code>ui-slider-handle</code> class before initialization. It will only create the number of handles needed to match the length of <a href="#option-value"><code>value</code></a>/<a href="#option-values"><code>values</code></a>. For example, if you specify <code>values: [ 1, 5, 18 ]</code> and create one custom handle, the plugin will create the other two.</p><h3>Dependencies</h3><ul><li><a href="/category/ui-core/">UI Core</a></li><li><a href="/jQuery.widget/">Widget Factory</a></li><li><a href="/mouse/">Mouse Interaction</a></li></ul>
	 */
	[JavaScript(export="false")]
	public class Slider {
		
		/**
		 * Whether to slide the handle smoothly when the user clicks on the slider track. Also accepts any valid <a href="//api.jquery.com/animate/#duration">animation duration</a>.
		 */
		public var animate:*;
		
		/**
		 * When set to <code>true</code>, the handle will animate with the default duration.
		 */
		public var animateBoolean:Boolean;
		
		/**
		 * The name of a speed, such as <code>"fast"</code> or <code>"slow"</code>.
		 */
		public var animateString:String;
		
		/**
		 * The duration of the animation, in milliseconds.
		 */
		public var animateNumber:Number;
		
		/**
		 * The maximum value of the slider.
		 */
		public var max:Number;
		
		/**
		 * The minimum value of the slider.
		 */
		public var min:Number;
		
		/**
		 * Determines whether the slider handles move horizontally (min on left, max on right) or vertically (min on bottom, max on top). Possible values: <code>"horizontal"</code>, <code>"vertical"</code>.
		 */
		public var orientation:String;
		
		/**
		 * Whether the slider represents a range.
		 */
		public var range:*;
		
		/**
		 * If set to <code>true</code>, the slider will detect if you have two handles and create a styleable range element between these two.
		 */
		public var rangeBoolean:Boolean;
		
		/**
		 * Either <code>"min"</code> or <code>"max"</code>. A min range goes from the slider min to one handle. A max range goes from one handle to the slider max.
		 */
		public var rangeString:String;
		
		/**
		 * Determines the size or amount of each interval or step the slider takes between the min and max. The full specified value range of the slider (max - min) should be evenly divisible by the step.
		 */
		public var step:Number;
		
		/**
		 * Determines the value of the slider, if there's only one handle. If there is more than one handle, determines the value of the first handle.
		 */
		public var value:Number;
		
		/**
		 * This option can be used to specify multiple handles. If the <a href="#option-range"><code>range</code></a> option is set to <code>true</code>, the length of <code>values</code> should be 2.
		 */
		public var values:Array;
		
		/**
		 * Disables the <code>Slider</code> if set to <code>true</code>.
		 */
		public var disabled:Boolean;
		
		/**
		 * Event:
		 * Triggered when the user starts sliding.
		 */
		public var onstart:Function;
		
		/**
		 * Event:
		 * Triggered on every mouse move during slide. The value provided in the event as <code>ui.value</code> represents the value that the handle will have as a result of the current movement. Canceling the event will prevent the handle from moving and the handle will continue to have its previous value.
		 */
		public var onslide:Function;
		
		/**
		 * Event:
		 * Triggered after the user slides a handle, if the value has changed; or if the value is changed programmatically via the <a href="#method-value"><code>value</code></a> method.
		 */
		public var onchange:Function;
		
		/**
		 * Event:
		 * Triggered after the user slides a handle.
		 */
		public var onstop:Function;
		
		/**
		 * Get the value of the slider.
		 */
		[JavaScriptMethod(name="value")]
		public function value_1():void {
		}
		
		/**
		 * Set the value of the slider.
		 */
		[JavaScriptMethod(name="value")]
		public function value_2(value:Number):void {
		}
		
		/**
		 * Get the value for all handles.
		 */
		[JavaScriptMethod(name="values")]
		public function values_1():void {
		}
		
		/**
		 * Get the value for the specified handle.
		 */
		[JavaScriptMethod(name="values")]
		public function values_2(index:int):void {
		}
		
		/**
		 * Set the value for the specified handle.
		 */
		[JavaScriptMethod(name="values")]
		public function values_3(index:int, value:Number):void {
		}
		
		/**
		 * Set the value for all handles.
		 */
		[JavaScriptMethod(name="values")]
		public function values_4(values:Array):void {
		}
		
		/**
		 * Removes the <code>Slider</code> functionality completely. This will return the element back to its pre-init state.
		 */
		public function destroy():void {
		}
		
		/**
		 * Disables the <code>Slider</code>.
		 */
		public function disable():void {
		}
		
		/**
		 * Enables the <code>Slider</code>.
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
		 * Gets an object containing key/value pairs representing the current <code>Slider</code> options hash.
		 */
		[JavaScriptMethod(name="option")]
		public function option2():JQueryUI {
			return null;
		}
		
		/**
		 * Sets the value of the <code>Slider</code> option associated with the specified <code>optionName</code>.
		 */
		[JavaScriptMethod(name="option")]
		public function option3(optionName:String, value:Object):JQueryUI {
			return null;
		}
		
		/**
		 * Sets one or more options for the <code>Slider</code>.
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
		
		public function value_(...params):* {
			return null;
		}
		
		public function values_(...params):* {
			return null;
		}
		
		public function option(...params):* {
			return null;
		}
	}
}
