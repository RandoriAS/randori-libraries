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
	 * Generated from file: events.json
	 */
	[JavaScript(export="false", name="events.EventEmitter")]
	public class EventsEventEmitter {
		
		/**
		 * <p>This event is emitted any time someone adds a new listener.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="newListener")]
		public var onnewListener:Function;
		
		/**
		 * <p>Adds a listener to the end of the listeners array for the specified event.
		 * </p>
		 * <pre><code>server.on(&#39;connection&#39;, function (stream) {
		 * console.log(&#39;someone connected!&#39;);
		 * });</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="addListener")]
		public static function addListener1(event:*, listener:*):void {
		}
		
		/**
		 * <p>Adds a listener to the end of the listeners array for the specified event.
		 * </p>
		 * <pre><code>server.on(&#39;connection&#39;, function (stream) {
		 * console.log(&#39;someone connected!&#39;);
		 * });</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="addListener")]
		public static function addListener2(event:*, listener:*):void {
		}
		
		/**
		 * <p>Adds a listener to the end of the listeners array for the specified event.
		 * </p>
		 * <pre><code>server.on(&#39;connection&#39;, function (stream) {
		 * console.log(&#39;someone connected!&#39;);
		 * });</code></pre>
		 * 
		 */
		public static function on(event:*, listener:*):void {
		}
		
		/**
		 * <p>Adds a <strong>one time</strong> listener for the event. This listener is
		 * invoked only the next time the event is fired, after which
		 * it is removed.
		 * </p>
		 * <pre><code>server.once(&#39;connection&#39;, function (stream) {
		 * console.log(&#39;Ah, we have our first user!&#39;);
		 * });</code></pre>
		 * 
		 */
		public static function once(event:*, listener:*):void {
		}
		
		/**
		 * <p>Remove a listener from the listener array for the specified event.
		 * <strong>Caution</strong>: changes array indices in the listener array behind the listener.
		 * </p>
		 * <pre><code>var callback = function(stream) {
		 * console.log(&#39;someone connected!&#39;);
		 * };
		 * server.on(&#39;connection&#39;, callback);
		 * // ...
		 * server.removeListener(&#39;connection&#39;, callback);</code></pre>
		 * 
		 */
		public static function removeListener(event:*, listener:*):void {
		}
		
		/**
		 * <p>Removes all listeners, or those of the specified event.
		 * </p>
		 * <p>Note that this will <strong>invalidate</strong> any arrays that have previously been
		 * returned by <code>emitter.listeners(event)</code>.
		 * </p>
		 * 
		 */
		public static function removeAllListeners(event:*):void {
		}
		
		/**
		 * <p>By default EventEmitters will print a warning if more than 10 listeners are
		 * added for a particular event. This is a useful default which helps finding memory leaks.
		 * Obviously not all Emitters should be limited to 10. This function allows
		 * that to be increased. Set to zero for unlimited.
		 * </p>
		 * 
		 */
		public static function setMaxListeners(n:*):void {
		}
		
		/**
		 * <p>Returns an array of listeners for the specified event.
		 * </p>
		 * <pre><code>server.on(&#39;connection&#39;, function (stream) {
		 * console.log(&#39;someone connected!&#39;);
		 * });
		 * console.log(util.inspect(server.listeners(&#39;connection&#39;))); // [ [Function] ]</code></pre>
		 * <p>This array <strong>may</strong> be a mutable reference to the same underlying list of
		 * listeners that is used by the event subsystem.  However, certain
		 * actions (specifically, removeAllListeners) will invalidate this
		 * reference.
		 * </p>
		 * <p>If you would like to get a copy of the listeners at a specific point in
		 * time that is guaranteed not to change, make a copy, for example by doing
		 * <code>emitter.listeners(event).slice(0)</code>.
		 * </p>
		 * <p>In a future release of node, this behavior <strong>may</strong> change to always
		 * return a copy, for consistency.  In your programs, please do not rely on
		 * being able to modify the EventEmitter listeners using array methods.
		 * Always use the &#39;on&#39; method to add new listeners.
		 * </p>
		 * 
		 */
		public static function listeners(event:*):void {
		}
		
		/**
		 * <p>Execute each of the listeners in order with the supplied arguments.
		 * </p>
		 * 
		 */
		public static function emit(event:*, arg1:*, arg2:*, ...params):void {
		}
		
		public function addListener(...params):* {
			return null;
		}
	}
}
