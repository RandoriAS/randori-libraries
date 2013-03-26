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
	 * Generated from file: cluster.json
	 */
	[JavaScript(export="false", name="cluster")]
	public class Cluster extends EventsEventEmitter {
		
		/**
		 * <p>When a new worker is forked the cluster module will emit a &#39;fork&#39; event.
		 * This can be used to log worker activity, and create you own timeout.
		 * </p>
		 * <pre><code>var timeouts = [];
		 * function errorMsg() {
		 * console.error(&quot;Something must be wrong with the connection ...&quot;);
		 * }
		 * cluster.on(&#39;fork&#39;, function(worker) {
		 * timeouts[worker.id] = setTimeout(errorMsg, 2000);
		 * });
		 * cluster.on(&#39;listening&#39;, function(worker, address) {
		 * clearTimeout(timeouts[worker.id]);
		 * });
		 * cluster.on(&#39;exit&#39;, function(worker, code, signal) {
		 * clearTimeout(timeouts[worker.id]);
		 * errorMsg();
		 * });</code></pre>
		 * 
		 */
		[JavaScriptProperty(name="fork")]
		public static var onfork:Function;
		
		/**
		 * <p>After forking a new worker, the worker should respond with a online message.
		 * When the master receives a online message it will emit such event.
		 * The difference between &#39;fork&#39; and &#39;online&#39; is that fork is emitted when the
		 * master tries to fork a worker, and &#39;online&#39; is emitted when the worker is
		 * being executed.
		 * </p>
		 * <pre><code>cluster.on(&#39;online&#39;, function(worker) {
		 * console.log(&quot;Yay, the worker responded after it was forked&quot;);
		 * });</code></pre>
		 * 
		 */
		[JavaScriptProperty(name="online")]
		public static var ononline:Function;
		
		/**
		 * <p>When calling <code>listen()</code> from a worker, a &#39;listening&#39; event is automatically assigned
		 * to the server instance. When the server is listening a message is send to the master
		 * where the &#39;listening&#39; event is emitted.
		 * </p>
		 * <p>The event handler is executed with two arguments, the <code>worker</code> contains the worker
		 * object and the <code>address</code> object contains the following connection properties:
		 * <code>address</code>, <code>port</code> and <code>addressType</code>. This is very useful if the worker is listening
		 * on more than one address.
		 * </p>
		 * <pre><code>cluster.on(&#39;listening&#39;, function(worker, address) {
		 * console.log(&quot;A worker is now connected to &quot; + address.address + &quot;:&quot; + address.port);
		 * });</code></pre>
		 * 
		 */
		[JavaScriptProperty(name="listening")]
		public static var onlistening:Function;
		
		/**
		 * <p>When a workers IPC channel has disconnected this event is emitted. This will happen
		 * when the worker dies, usually after calling <code>.destroy()</code>.
		 * </p>
		 * <p>When calling <code>.disconnect()</code>, there may be a delay between the
		 * <code>disconnect</code> and <code>exit</code> events.  This event can be used to detect if
		 * the process is stuck in a cleanup or if there are long-living
		 * connections.
		 * </p>
		 * <pre><code>cluster.on(&#39;disconnect&#39;, function(worker) {
		 * console.log(&#39;The worker #&#39; + worker.id + &#39; has disconnected&#39;);
		 * });</code></pre>
		 * 
		 */
		[JavaScriptProperty(name="disconnect")]
		public static var ondisconnect:Function;
		
		/**
		 * <p>When any of the workers die the cluster module will emit the &#39;exit&#39; event.
		 * This can be used to restart the worker by calling <code>fork()</code> again.
		 * </p>
		 * <pre><code>cluster.on(&#39;exit&#39;, function(worker, code, signal) {
		 * var exitCode = worker.process.exitCode;
		 * console.log(&#39;worker &#39; + worker.process.pid + &#39; died (&#39;+exitCode+&#39;). restarting...&#39;);
		 * cluster.fork();
		 * });</code></pre>
		 * 
		 */
		[JavaScriptProperty(name="exit")]
		public static var onexit:Function;
		
		/**
		 * <p>When the <code>.setupMaster()</code> function has been executed this event emits.
		 * If <code>.setupMaster()</code> was not executed before <code>fork()</code> this function will
		 * call <code>.setupMaster()</code> with no arguments.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="setup")]
		public static var onsetup:Function;
		
		/**
		 * <p>All settings set by the <code>.setupMaster</code> is stored in this settings object.
		 * This object is not supposed to be changed or set manually, by you.
		 * </p>
		 * 
		 */
		public static var settings:Object;
		
		/**
		 * <p>True if the process is a master. This is determined
		 * by the <code>process.env.NODE_UNIQUE_ID</code>. If <code>process.env.NODE_UNIQUE_ID</code> is
		 * undefined, then <code>isMaster</code> is <code>true</code>.
		 * </p>
		 * 
		 */
		public static var isMaster:Boolean;
		
		/**
		 * <p>This boolean flag is true if the process is a worker forked from a master.
		 * If the <code>process.env.NODE_UNIQUE_ID</code> is set to a value, then
		 * <code>isWorker</code> is <code>true</code>.
		 * </p>
		 * 
		 */
		public static var isWorker:Boolean;
		
		/**
		 * <p>A reference to the current worker object. Not available in the master process.
		 * </p>
		 * <pre><code>var cluster = require(&#39;cluster&#39;);
		 * if (cluster.isMaster) {
		 * console.log(&#39;I am master&#39;);
		 * cluster.fork();
		 * cluster.fork();
		 * } else if (cluster.isWorker) {
		 * console.log(&#39;I am worker #&#39; + cluster.worker.id);
		 * }</code></pre>
		 * 
		 */
		public static var worker:Object;
		
		/**
		 * <p>A hash that stores the active worker objects, keyed by <code>id</code> field. Makes it
		 * easy to loop through all the workers. It is only available in the master
		 * process.
		 * </p>
		 * <pre><code>// Go through all workers
		 * function eachWorker(callback) {
		 * for (var id in cluster.workers) {
		 * callback(cluster.workers[id]);
		 * }
		 * }
		 * eachWorker(function(worker) {
		 * worker.send(&#39;big announcement to all workers&#39;);
		 * });</code></pre>
		 * <p>Should you wish to reference a worker over a communication channel, using
		 * the worker&#39;s unique id is the easiest way to find the worker.
		 * </p>
		 * <pre><code>socket.on(&#39;data&#39;, function(id) {
		 * var worker = cluster.workers[id];
		 * });</code></pre>
		 * 
		 */
		public static var workers:Object;
		
		/**
		 * <p><code>setupMaster</code> is used to change the default &#39;fork&#39; behavior. The new settings
		 * are effective immediately and permanently, they cannot be changed later on.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var cluster = require(&quot;cluster&quot;);
		 * cluster.setupMaster({
		 * exec : &quot;worker.js&quot;,
		 * args : [&quot;--use&quot;, &quot;https&quot;],
		 * silent : true
		 * });
		 * cluster.fork();</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="setupMaster")]
		public static function setupMaster1(settings:Object):void {
		}
		
		/**
		 * <p><code>setupMaster</code> is used to change the default &#39;fork&#39; behavior. The new settings
		 * are effective immediately and permanently, they cannot be changed later on.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var cluster = require(&quot;cluster&quot;);
		 * cluster.setupMaster({
		 * exec : &quot;worker.js&quot;,
		 * args : [&quot;--use&quot;, &quot;https&quot;],
		 * silent : true
		 * });
		 * cluster.fork();</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="setupMaster")]
		public static function setupMaster2(settings:*):void {
		}
		
		/**
		 * <p>Spawn a new worker process. This can only be called from the master process.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="fork")]
		public static function fork1(env:Object):void {
		}
		
		/**
		 * <p>Spawn a new worker process. This can only be called from the master process.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="fork")]
		public static function fork2(env:*):void {
		}
		
		/**
		 * <p>When calling this method, all workers will commit a graceful suicide. When they are
		 * disconnected all internal handlers will be closed, allowing the master process to
		 * die graceful if no other event is waiting.
		 * </p>
		 * <p>The method takes an optional callback argument which will be called when finished.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="disconnect")]
		public static function disconnect1(callback:Function):void {
		}
		
		/**
		 * <p>When calling this method, all workers will commit a graceful suicide. When they are
		 * disconnected all internal handlers will be closed, allowing the master process to
		 * die graceful if no other event is waiting.
		 * </p>
		 * <p>The method takes an optional callback argument which will be called when finished.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="disconnect")]
		public static function disconnect2(callback:*):void {
		}
		
		public function setupMaster(...params):* {
			return null;
		}
		
		public function fork(...params):* {
			return null;
		}
		
		public function disconnect(...params):* {
			return null;
		}
	}
}
