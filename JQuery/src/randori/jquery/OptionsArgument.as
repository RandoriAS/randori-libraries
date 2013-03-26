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
 * The XML files at this location: https://github.com/jquery/api.jquery.com were
 * used to generate this class
 * @author Randori JQuery generator
*/
package randori.jquery {
	
	
	[JavaScript(export="false")]
	public class OptionsArgument {
		
		/**
		 * A string or number determining how long the animation will run.
		 */
		public var duration:*;
		
		/**
		 * A string indicating which easing function to use for the transition.
		 */
		public var easing:String;
		
		/**
		 * A function to call once the animation is complete.
		 */
		public var complete:Function;
		
		/**
		 * A function to be called after each step of the animation.
		 * <br/>The signature of this function needs to be as follows:<br/>
		 * Function(now:Number, fx:FxObject):void;
		 * <ul>
		 * <li>now:Number - The numeric value of the property being animated at each step<li/>
		 * <li>fx:FxObject - A map of properties related to the animation and the element being animated<li/>
		 * </ul>
		 * @see randori.jquery.FxObject
		 */
		public var step:Function;
		
		/**
		 * A Boolean indicating whether to place the animation in the effects queue. If false, the animation will begin immediately. As of jQuery 1.7, the queue option can also accept a string, in which case the animation is added to the queue represented by that string.
		 */
		public var queue:Boolean;
		
		/**
		 * A map of one or more of the CSS properties defined by the properties argument and their corresponding easing functions.
		 */
		public var specialEasing:Object;
	}
}
