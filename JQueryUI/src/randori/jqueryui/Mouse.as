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
	 * The base interaction layer.
	 * <p>Similar to <a href="/jQuery.Widget#jQuery-Widget2"><code>jQuery.Widget</code></a>, the mouse interaction is not intended to be used directly. It is purely a base layer for other widgets to inherit from. This page only documents what is added to <code>jQuery.Widget</code>, but it does include internal methods that are not intended to be overwritten. The intended public API is <a href="#method-_mouseStart"><code>_mouseStart()</code></a>, <a href="#method-_mouseDrag"><code>_mouseDrag()</code></a>, <a href="#method-_mouseStop"><code>_mouseStop()</code></a>, and <a href="#method-_mouseCapture"><code>_mouseCapture()</code></a>.</p><h3>Dependencies</h3><ul><li><a href="/jQuery.widget/">Widget Factory</a></li></ul>
	 */
	[JavaScript(export="false")]
	public class Mouse {
		
		/**
		 * Prevents interactions from starting on specified elements.
		 */
		public var cancel:String;
		
		/**
		 * Time in milliseconds after mousedown until the interaction should start. This option can be used to prevent unwanted interactions when clicking on an element.
		 */
		public var delay:Number;
		
		/**
		 * Distance in pixels after mousedown the mouse must move before the interaction should start. This option can be used to prevent unwanted interactions when clicking on an element.
		 */
		public var distance:Number;
		
		/**
		 * Initializes the interaction event handlers. This must be called from the extending widget's <code>_create()</code> method.
		 */
		public function _mouseInit():void {
		}
		
		/**
		 * Destroys the interaction event handlers. This must be called from the extending widget's <code>_destroy()</code> method.
		 */
		public function _mouseDestroy():void {
		}
		
		/**
		 * Handles the beginning of an interaction. Verifies that the event is associated with the primary mouse button and ensures that the <a href="#option-delay"><code>delay</code></a> and <a href="#option-distance"><code>distance</code></a> options are met prior to starting the interaction. When the interaction is ready to start, invokes the <a href="#method-_mouseStart"><code>_mouseStart()</code></a> method for the extending widget to handle.
		 */
		public function _mouseDown():void {
		}
		
		/**
		 * Handles each movement of the interaction. Invokes the <a href="#method-_mouseDrag"><code>mouseDrag()</code></a> method for the extending widget to handle.
		 */
		public function _mouseMove():void {
		}
		
		/**
		 * Handles the end of the interaction. Invokes the <a href="#method-_mouseStop"><code>mouseStop()</code></a> method for the extending widget to handle.
		 */
		public function _mouseUp():void {
		}
		
		/**
		 * Determines whether the <a href="#option-distance"><code>distance</code></a> option has been met for the current interaction.
		 */
		public function _mouseDistanceMet():Boolean {
			return false;
		}
		
		/**
		 * Determines whether the <a href="#option-delay"><code>delay</code></a> option has been met for the current interaction.
		 */
		public function _mouseDelayMet():Boolean {
			return false;
		}
		
		/**
		 * The extending widget should implement a <code>_mouseStart()</code> method to handle the beginning of an interaction. This method will receive the mouse event associated with the start of the interaction.
		 */
		public function _mouseStart():void {
		}
		
		/**
		 * The extending widget should implement a <code>_mouseDrag()</code> method to handle each movement of an interaction. This method will receive the mouse event associated with the movement.
		 */
		public function _mouseDrag():void {
		}
		
		/**
		 * The extending widget should implement a <code>_mouseStop()</code> method to handle the end of an interaction. This method will receive the mouse event associated with the end of the interaction.
		 */
		public function _mouseStop():void {
		}
		
		/**
		 * Determines whether an interaction should start based on event target of the interaction. The default implementation always returns <code>true</code>.
		 */
		public function _mouseCapture():Boolean {
			return false;
		}
	}
}
