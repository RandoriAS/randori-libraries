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
	public class Deferred {
		
		/**
		 * Add handlers to be called when the Deferred object is either resolved or rejected.
		 * @since 1.6
		 * @param alwaysCallbacks1 A function, or array of functions, that is called when the Deferred is resolved or rejected.
		 * @param alwaysCallbacks2 Optional additional functions, or arrays of functions, that are called when the Deferred is resolved or rejected.
		 */
		public function always(alwaysCallbacks1:Function, alwaysCallbacks2:Function=null):Deferred {
			return null;
		}
		
		/**
		 * Add handlers to be called when the Deferred object is resolved.
		 * @since 1.5
		 * @param doneCallbacks1 A function, or array of functions, that are called when the Deferred is resolved.
		 * @param doneCallbacks2 Optional additional functions, or arrays of functions, that are called when the Deferred is resolved.
		 */
		public function done(doneCallbacks1:Function, doneCallbacks2:Function=null):Deferred {
			return null;
		}
		
		/**
		 * Add handlers to be called when the Deferred object is rejected.
		 * @since 1.5
		 * @param failCallbacks1 A function, or array of functions, that are called when the Deferred is rejected.
		 * @param failCallbacks2 Optional additional functions, or arrays of functions, that are called when the Deferred is rejected.
		 */
		public function fail(failCallbacks1:Function, failCallbacks2:Function=null):Deferred {
			return null;
		}
		
		/**
		 * Determine whether a Deferred object has been rejected.
		 * @since 1.5
		 */
		public function isRejected():Boolean {
			return false;
		}
		
		/**
		 * Determine whether a Deferred object has been resolved.
		 * @since 1.5
		 */
		public function isResolved():Boolean {
			return false;
		}
		
		/**
		 * Call the progressCallbacks on a Deferred object with the given args.
		 * @since 1.7
		 * @param args Optional arguments that are passed to the progressCallbacks.
		 */
		public function notify(args:Object):Deferred {
			return null;
		}
		
		/**
		 * Call the progressCallbacks on a Deferred object with the given context and args.
		 * @since 1.7
		 * @param context Context passed to the progressCallbacks as the this object.
		 * @param args Optional arguments that are passed to the progressCallbacks.
		 */
		public function notifyWith(context:Object, args:Object=null):Deferred {
			return null;
		}
		
		/**
		 * Utility method to filter and/or chain Deferreds.
		 * @since 1.6
		 * @param doneFilter An optional function that is called when the Deferred is resolved.
		 * @param failFilter An optional function that is called when the Deferred is rejected.
		 */
		[JavaScriptMethod(name="pipe")]
		public function pipe1(doneFilter:Function=null, failFilter:Function=null):Promise {
			return null;
		}
		
		/**
		 * Utility method to filter and/or chain Deferreds.
		 * @since 1.7
		 * @param doneFilter An optional function that is called when the Deferred is resolved.
		 * @param failFilter An optional function that is called when the Deferred is rejected.
		 * @param progressFilter An optional function that is called when progress notifications are sent to the Deferred.
		 */
		[JavaScriptMethod(name="pipe")]
		public function pipe2(doneFilter:Function=null, failFilter:Function=null, progressFilter:Function=null):Promise {
			return null;
		}
		
		/**
		 * Add handlers to be called when the Deferred object generates progress notifications.
		 * @since 1.7
		 * @param progressCallbacks A function, or array of functions, to be called when the Deferred generates progress notifications.
		 */
		public function progress(progressCallbacks:Object):Deferred {
			return null;
		}
		
		/**
		 * Return a Deferred's Promise object.
		 * @since 1.5
		 * @param target Object onto which the promise methods have to be attached
		 */
		public function promise(target:Object=null):Promise {
			return null;
		}
		
		/**
		 * Reject a Deferred object and call any failCallbacks with the given args.
		 * @since 1.5
		 * @param args Optional arguments that are passed to the failCallbacks.
		 */
		public function reject(args:*=null):Deferred {
			return null;
		}
		
		/**
		 * Reject a Deferred object and call any failCallbacks with the given context and args.
		 * @since 1.5
		 * @param context Context passed to the failCallbacks as the this object.
		 * @param args An optional array of arguments that are passed to the failCallbacks.
		 */
		public function rejectWith(context:Object, args:Array=null):Deferred {
			return null;
		}
		
		/**
		 * Resolve a Deferred object and call any doneCallbacks with the given args.
		 * @since 1.5
		 * @param args Optional arguments that are passed to the doneCallbacks.
		 */
		public function resolve(args:*=null):Deferred {
			return null;
		}
		
		/**
		 * Resolve a Deferred object and call any doneCallbacks with the given context and args.
		 * @since 1.5
		 * @param context Context passed to the doneCallbacks as the this object.
		 * @param args An optional array of arguments that are passed to the doneCallbacks.
		 */
		public function resolveWith(context:Object, args:Array=null):Deferred {
			return null;
		}
		
		/**
		 * Determine the current state of a Deferred object.
		 * @since 1.7
		 */
		public function state():String {
			return '';
		}
		
		/**
		 * Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		 * @since 1.8
		 * @param doneFilter A function that is called when the Deferred is resolved.
		 * @param failFilter An optional function that is called when the Deferred is rejected.
		 * @param progressFilter An optional function that is called when progress notifications are sent to the Deferred.
		 */
		[JavaScriptMethod(name="then")]
		public function then1(doneFilter:Function, failFilter:Function=null, progressFilter:Function=null):Promise {
			return null;
		}
		
		/**
		 * Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		 * @since 1.5
		 * @param doneCallbacks A function, or array of functions, called when the Deferred is resolved.
		 * @param failCallbacks A function, or array of functions, called when the Deferred is rejected.
		 */
		[JavaScriptMethod(name="then")]
		public function then2(doneCallbacks:Function, failCallbacks:Function):Promise {
			return null;
		}
		
		/**
		 * Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		 * @since 1.7
		 * @param doneCallbacks A function, or array of functions, called when the Deferred is resolved.
		 * @param failCallbacks A function, or array of functions, called when the Deferred is rejected.
		 * @param progressCallbacks A function, or array of functions, called when the Deferred notifies progress.
		 */
		[JavaScriptMethod(name="then")]
		public function then3(doneCallbacks:Function, failCallbacks:Function, progressCallbacks:Function=null):Promise {
			return null;
		}
		
		public function pipe(...params):* {
			return null;
		}
		
		public function then(...params):* {
			return null;
		}
	}
}
