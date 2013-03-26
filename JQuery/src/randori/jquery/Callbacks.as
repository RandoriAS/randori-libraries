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
	public class Callbacks {
		
		/**
		 * Add a callback or a collection of callbacks to a callback list.
		 * @since 1.7
		 * @param callbacks A function, or array of functions, that are to be added to the callback list.
		 */
		public function add(callbacks:*):Callbacks {
			return null;
		}
		
		/**
		 * Disable a callback list from doing anything more.
		 * @since 1.7
		 */
		public function disable():Callbacks {
			return null;
		}
		
		/**
		 * Determine if the callbacks list has been disabled.
		 * @since 1.7
		 */
		public function disabled():Boolean {
			return false;
		}
		
		/**
		 * Remove all of the callbacks from a list.
		 * @since 1.7
		 */
		public function empty():Callbacks {
			return null;
		}
		
		/**
		 * Call all of the callbacks with the given arguments
		 * @since 1.7
		 * @param arguments The argument or list of arguments to pass back to the callback list.
		 */
		public function fire(arguments:*):Callbacks {
			return null;
		}
		
		/**
		 * Determine if the callbacks have already been called at least once.
		 * @since 1.7
		 */
		public function fired():Boolean {
			return false;
		}
		
		/**
		 * Call all callbacks in a list with the given context and arguments.
		 * @since 1.7
		 * @param context A reference to the context in which the callbacks in the list should be fired.
		 * @param args An argument, or array of arguments, to pass to the callbacks in the list.
		 */
		public function fireWith(context:Object=null, args:Object=null):Callbacks {
			return null;
		}
		
		/**
		 * Determine whether a supplied callback is in a list
		 * @since 1.7
		 * @param callback The callback to search for.
		 */
		public function has(callback:Function):Boolean {
			return false;
		}
		
		/**
		 * Lock a callback list in its current state.
		 * @since 1.7
		 */
		public function lock():Callbacks {
			return null;
		}
		
		/**
		 * Determine if the callbacks list has been locked.
		 * @since 1.7
		 */
		public function locked():Boolean {
			return false;
		}
		
		/**
		 * Remove a callback or a collection of callbacks from a callback list.
		 * @since 1.7
		 * @param callbacks A function, or array of functions, that are to be removed from the callback list.
		 */
		public function remove(callbacks:*):Callbacks {
			return null;
		}
	}
}
