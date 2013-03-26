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
	 * Display status of a determinate or indeterminate process.
	 * <p>
	 * The progress bar is designed to display the current percent complete for a process. The bar is coded to be flexibly sized through CSS and will scale to fit inside its parent container by default.
	 * </p><p>
	 * A determinate progress bar should only be used in situations where the system can accurately update the current status. A determinate progress bar should never fill from left to right, then loop back to empty for a single process — if the actual status cannot be calculated, an indeterminate progress bar should be used to provide user feedback.
	 * </p><h3>Dependencies</h3><ul><li><a href="/category/ui-core/">UI Core</a></li><li><a href="/jQuery.widget/">Widget Factory</a></li></ul>
	 */
	[JavaScript(export="false")]
	public class Progressbar {
		
		/**
		 * The maximum value of the progressbar.
		 */
		public var max:Number;
		
		/**
		 * The value of the progressbar.
		 */
		public var value:*;
		
		/**
		 * A value between <code>0</code> and the <a href="#option-max"><code>max</code></a>.
		 */
		public var valueNumber:Number;
		
		/**
		 * Value can be set to <code>false</code> to create an indeterminate progressbar.
		 */
		public var valueBoolean:Boolean;
		
		/**
		 * Disables the <code>Progressbar</code> if set to <code>true</code>.
		 */
		public var disabled:Boolean;
		
		/**
		 * Event:
		 * Triggered when the value of the progressbar changes.
		 */
		public var onchange:Function;
		
		/**
		 * Event:
		 * Triggered when the value of the progressbar reaches the maximum value.
		 */
		public var oncomplete:Function;
		
		/**
		 * Gets the current value of the progressbar.
		 */
		[JavaScriptMethod(name="value")]
		public function value_1():void {
		}
		
		/**
		 * Sets the current value of the progressbar.
		 */
		[JavaScriptMethod(name="value")]
		public function value_2(value:*):void {
		}
		
		/**
		 * Removes the <code>Progressbar</code> functionality completely. This will return the element back to its pre-init state.
		 */
		public function destroy():void {
		}
		
		/**
		 * Disables the <code>Progressbar</code>.
		 */
		public function disable():void {
		}
		
		/**
		 * Enables the <code>Progressbar</code>.
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
		 * Gets an object containing key/value pairs representing the current <code>Progressbar</code> options hash.
		 */
		[JavaScriptMethod(name="option")]
		public function option2():JQueryUI {
			return null;
		}
		
		/**
		 * Sets the value of the <code>Progressbar</code> option associated with the specified <code>optionName</code>.
		 */
		[JavaScriptMethod(name="option")]
		public function option3(optionName:String, value:Object):JQueryUI {
			return null;
		}
		
		/**
		 * Sets one or more options for the <code>Progressbar</code>.
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
		
		public function option(...params):* {
			return null;
		}
	}
}
