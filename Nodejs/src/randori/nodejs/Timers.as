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
 * @author Randori Nodejs generator
*/
package randori.nodejs {
	
	
	/**
	 * Generated from file: timers.json
	 */
	[JavaScript(export="false", name="timers")]
	public class Timers {
		
		/**
		 * <p>To schedule execution of a one-time <code>callback</code> after <code>delay</code> milliseconds. Returns a
		 * <code>timeoutId</code> for possible use with <code>clearTimeout()</code>. Optionally you can
		 * also pass arguments to the callback.
		 * </p>
		 * <p>It is important to note that your callback will probably not be called in exactly
		 * <code>delay</code> milliseconds - Node.js makes no guarantees about the exact timing of when
		 * the callback will fire, nor of the ordering things will fire in. The callback will
		 * be called as close as possible to the time specified.
		 * </p>
		 * 
		 */
		public static function setTimeout(callback:*, delay:*, arg:*, ...params):void {
		}
		
		/**
		 * <p>Prevents a timeout from triggering.
		 * </p>
		 * 
		 */
		public static function clearTimeout(timeoutId:*):void {
		}
		
		/**
		 * <p>To schedule the repeated execution of <code>callback</code> every <code>delay</code> milliseconds.
		 * Returns a <code>intervalId</code> for possible use with <code>clearInterval()</code>. Optionally
		 * you can also pass arguments to the callback.
		 * </p>
		 * 
		 */
		public static function setInterval(callback:*, delay:*, arg:*, ...params):void {
		}
		
		/**
		 * <p>Stops a interval from triggering.
		 * </p>
		 * 
		 */
		public static function clearInterval(intervalId:*):void {
		}
	}
}
