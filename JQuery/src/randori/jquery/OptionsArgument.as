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
		 * A Boolean indicating whether to place the animation in the effects queue. If false, the animation will begin immediately. As of jQuery 1.7, the queue option can also accept a string, in which case the animation is added to the queue represented by that string.
		 */
		public var queue:Boolean;
		
		/**
		 * A map of one or more of the CSS properties defined by the properties argument and their corresponding easing functions.
		 */
		public var specialEasing:Object;
		
		/**
		 * A function to be called for each animated property of each animated element. This function provides an opportunity to modify the Tween object to change the value of the property before it is set.
		 * <br/>The signature of this function needs to be as follows:<br/>
		 * Function(now:Number, tween:Tween):void;
		 * <ul>
		 * <li>now:Number - The numeric value of the property being animated at each step<li/>
		 * <li>tween:Tween - An object of properties related to the animation and the element being animated. For information about the tween object and its properties, see jQuery.Tween<li/>
		 * </ul>
		 */
		public var step:Function;
		
		/**
		 * A function to be called after each step of the animation, only once per animated element regardless of the number of animated properties.
		 * <br/>The signature of this function needs to be as follows:<br/>
		 * Function(animation:Promise, progress:Number, remainingMs:Number):void;
		 * <ul>
		 * <li>animation:Promise - An enhanced Promise oject with additional properties for the animation<li/>
		 * <li>progress:Number - A number from 0 to 1 indicating the progress of the animation<li/>
		 * <li>remainingMs:Number - A number indicating the remaining number of milliseconds until the scheduled end of the animation<li/>
		 * </ul>
		 */
		public var progress:Function;
		
		/**
		 * A function to call once the animation is complete.
		 */
		public var complete:Function;
		
		/**
		 * A function to be called when the animation completes (its Promise object is resolved).
		 * <br/>The signature of this function needs to be as follows:<br/>
		 * Function(animation:Promise, jumpedToEnd:Boolean):void;
		 * <ul>
		 * <li>animation:Promise - An enhanced Promise oject with additional properties for the animation<li/>
		 * <li>jumpedToEnd:Boolean - Indicates whether the animation jumped to the end<li/>
		 * </ul>
		 */
		public var done:Function;
		
		/**
		 * A function to be called when the animation fails to complete (its Promise object is rejected).
		 * <br/>The signature of this function needs to be as follows:<br/>
		 * Function(animation:Promise, jumpedToEnd:Boolean):void;
		 * <ul>
		 * <li>animation:Promise - An enhanced Promise oject with additional properties for the animation<li/>
		 * <li>jumpedToEnd:Boolean - Indicates whether the animation jumped to the end<li/>
		 * </ul>
		 */
		public var fail:Function;
		
		/**
		 * A function to be called when the animation completes or stops without completing (its Promise object is either resolved or rejected).
		 * <br/>The signature of this function needs to be as follows:<br/>
		 * Function(animation:Promise, jumpedToEnd:Boolean):void;
		 * <ul>
		 * <li>animation:Promise - An enhanced Promise oject with additional properties for the animation<li/>
		 * <li>jumpedToEnd:Boolean - Indicates whether the animation jumped to the end<li/>
		 * </ul>
		 */
		public var always:Function;
	}
}
