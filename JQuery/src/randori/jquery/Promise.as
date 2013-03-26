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
	public class Promise {
		
		/**
		 * Return a Promise object to observe when all actions of a certain type bound to the collection, queued or not, have finished.
		 * @since 1.6
		 * @param type The type of queue that needs to be observed.
		 * @param target Object onto which the promise methods have to be attached
		 */
		public function promise(type:String='', target:Object=null):Promise {
			return null;
		}
		
		/**
		 * Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		 * @since 1.8
		 * @param doneFilter A function that is called when the Deferred is resolved.
		 * @param failFilter An optional function that is called when the Deferred is rejected.
		 * @param progressFilter An optional function that is called when progress notifications are sent to the Deferred.
		 */
		[JavaScriptMethod(name="then", name="then")]
		public function then11(doneFilter:Function, failFilter:Function=null, progressFilter:Function=null):Promise {
			return null;
		}
		
		/**
		 * Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		 * @since 1.5
		 * @param doneCallbacks A function, or array of functions, called when the Deferred is resolved.
		 * @param failCallbacks A function, or array of functions, called when the Deferred is rejected.
		 */
		[JavaScriptMethod(name="then", name="then")]
		public function then22(doneCallbacks:Function, failCallbacks:Function):Promise {
			return null;
		}
		
		/**
		 * Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		 * @since 1.7
		 * @param doneCallbacks A function, or array of functions, called when the Deferred is resolved.
		 * @param failCallbacks A function, or array of functions, called when the Deferred is rejected.
		 * @param progressCallbacks A function, or array of functions, called when the Deferred notifies progress.
		 */
		[JavaScriptMethod(name="then", name="then")]
		public function then33(doneCallbacks:Function, failCallbacks:Function, progressCallbacks:Function=null):Promise {
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
		 * Add handlers to be called when the Deferred object is either resolved or rejected.
		 * @since 1.6
		 * @param alwaysCallbacks1 A function, or array of functions, that is called when the Deferred is resolved or rejected.
		 * @param alwaysCallbacks2 Optional additional functions, or arrays of functions, that are called when the Deferred is resolved or rejected.
		 */
		public function always(alwaysCallbacks1:Function, alwaysCallbacks2:Function=null):Deferred {
			return null;
		}
		
		/**
		 * Utility method to filter and/or chain Deferreds.
		 * @since 1.6
		 * @param doneFilter An optional function that is called when the Deferred is resolved.
		 * @param failFilter An optional function that is called when the Deferred is rejected.
		 */
		[JavaScriptMethod(name="pipe", name="pipe")]
		public function pipe11(doneFilter:Function=null, failFilter:Function=null):Promise {
			return null;
		}
		
		/**
		 * Utility method to filter and/or chain Deferreds.
		 * @since 1.7
		 * @param doneFilter An optional function that is called when the Deferred is resolved.
		 * @param failFilter An optional function that is called when the Deferred is rejected.
		 * @param progressFilter An optional function that is called when progress notifications are sent to the Deferred.
		 */
		[JavaScriptMethod(name="pipe", name="pipe")]
		public function pipe22(doneFilter:Function=null, failFilter:Function=null, progressFilter:Function=null):Promise {
			return null;
		}
		
		/**
		 * Add handlers to be called when the Deferred object generates progress notifications.
		 * @since 1.7
		 * @param progressCallbacks A function, or array of functions, that is called when the Deferred generates progress notifications.
		 */
		public function progress(progressCallbacks:Function):Deferred {
			return null;
		}
		
		/**
		 * Determine the current state of a Deferred object.
		 * @since 1.7
		 */
		public function state():String {
			return '';
		}
		
		public function then(...params):* {
			return null;
		}
		
		public function pipe(...params):* {
			return null;
		}
	}
}
