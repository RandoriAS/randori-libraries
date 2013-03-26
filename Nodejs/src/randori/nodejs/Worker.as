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
	[JavaScript(export="false")]
	public class Worker extends EventsEventEmitter {
		
		/**
		 * <p>This event is the same as the one provided by <code>child_process.fork()</code>.
		 * In the master you should use this event, however in a worker you can also use
		 * <code>process.on(&#39;message&#39;)</code>
		 * </p>
		 * <p>As an example, here is a cluster that keeps count of the number of requests
		 * in the master process using the message system:
		 * </p>
		 * <pre><code>var cluster = require(&#39;cluster&#39;);
		 * var http = require(&#39;http&#39;);
		 * if (cluster.isMaster) {
		 * // Keep track of http requests
		 * var numReqs = 0;
		 * setInterval(function() {
		 * console.log(&quot;numReqs =&quot;, numReqs);
		 * }, 1000);
		 * // Count requestes
		 * function messageHandler(msg) {
		 * if (msg.cmd &amp;&amp; msg.cmd == &#39;notifyRequest&#39;) {
		 * numReqs += 1;
		 * }
		 * }
		 * // Start workers and listen for messages containing notifyRequest
		 * var numCPUs = require(&#39;os&#39;).cpus().length;
		 * for (var i = 0; i &lt; numCPUs; i++) {
		 * cluster.fork();
		 * }
		 * Object.keys(cluster.workers).forEach(function(id) {
		 * cluster.workers[id].on(&#39;message&#39;, messageHandler);
		 * });
		 * } else {
		 * // Worker processes have a http server.
		 * http.Server(function(req, res) {
		 * res.writeHead(200);
		 * res.end(&quot;hello world\n&quot;);
		 * // notify master about the request
		 * process.send({ cmd: &#39;notifyRequest&#39; });
		 * }).listen(8000);
		 * }</code></pre>
		 * 
		 */
		[JavaScriptProperty(name="message")]
		public var onmessage:Function;
		
		/**
		 * <p>Same as the <code>cluster.on(&#39;online&#39;)</code> event, but emits only when the state change
		 * on the specified worker.
		 * </p>
		 * <pre><code>cluster.fork().on(&#39;online&#39;, function() {
		 * // Worker is online
		 * };</code></pre>
		 * 
		 */
		[JavaScriptProperty(name="online")]
		public var ononline:Function;
		
		/**
		 * <p>Same as the <code>cluster.on(&#39;listening&#39;)</code> event, but emits only when the state change
		 * on the specified worker.
		 * </p>
		 * <pre><code>cluster.fork().on(&#39;listening&#39;, function(address) {
		 * // Worker is listening
		 * };</code></pre>
		 * 
		 */
		[JavaScriptProperty(name="listening")]
		public var onlistening:Function;
		
		/**
		 * <p>Same as the <code>cluster.on(&#39;disconnect&#39;)</code> event, but emits only when the state change
		 * on the specified worker.
		 * </p>
		 * <pre><code>cluster.fork().on(&#39;disconnect&#39;, function() {
		 * // Worker has disconnected
		 * };</code></pre>
		 * 
		 */
		[JavaScriptProperty(name="disconnect")]
		public var ondisconnect:Function;
		
		/**
		 * <p>Emitted by the individual worker instance, when the underlying child process
		 * is terminated.  See <a href="child_process.html#child_process_event_exit">child_process event: &#39;exit&#39;</a>.
		 * </p>
		 * <pre><code>var worker = cluster.fork();
		 * worker.on(&#39;exit&#39;, function(code, signal) {
		 * if( signal ) {
		 * console.log(&quot;worker was killed by signal: &quot;+signal);
		 * } else if( code !== 0 ) {
		 * console.log(&quot;worker exited with error code: &quot;+code);
		 * } else {
		 * console.log(&quot;worker success!&quot;);
		 * }
		 * };</code></pre>
		 * 
		 */
		[JavaScriptProperty(name="exit")]
		public var onexit:Function;
		
		/**
		 * <p>Each new worker is given its own unique id, this id is stored in the
		 * <code>id</code>.
		 * </p>
		 * <p>While a worker is alive, this is the key that indexes it in
		 * cluster.workers
		 * </p>
		 * 
		 */
		public var id:String;
		
		/**
		 * <p>All workers are created using <code>child_process.fork()</code>, the returned object
		 * from this function is stored in process.
		 * </p>
		 * <p>See: <a href="child_process.html">Child Process module</a>
		 * </p>
		 * 
		 */
		public var process:Object;
		
		/**
		 * <p>This property is a boolean. It is set when a worker dies after calling <code>.destroy()</code>
		 * or immediately after calling the <code>.disconnect()</code> method. Until then it is <code>undefined</code>.
		 * </p>
		 * 
		 */
		public var suicide:Boolean;
		
		/**
		 * <p>This function is equal to the send methods provided by
		 * <code>child_process.fork()</code>.  In the master you should use this function to
		 * send a message to a specific worker.  However in a worker you can also use
		 * <code>process.send(message)</code>, since this is the same function.
		 * </p>
		 * <p>This example will echo back all messages from the master:
		 * </p>
		 * <pre><code>if (cluster.isMaster) {
		 * var worker = cluster.fork();
		 * worker.send(&#39;hi there&#39;);
		 * } else if (cluster.isWorker) {
		 * process.on(&#39;message&#39;, function(msg) {
		 * process.send(msg);
		 * });
		 * }</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="send")]
		public static function send1(message:Object, sendHandle:Object):void {
		}
		
		/**
		 * <p>This function is equal to the send methods provided by
		 * <code>child_process.fork()</code>.  In the master you should use this function to
		 * send a message to a specific worker.  However in a worker you can also use
		 * <code>process.send(message)</code>, since this is the same function.
		 * </p>
		 * <p>This example will echo back all messages from the master:
		 * </p>
		 * <pre><code>if (cluster.isMaster) {
		 * var worker = cluster.fork();
		 * worker.send(&#39;hi there&#39;);
		 * } else if (cluster.isWorker) {
		 * process.on(&#39;message&#39;, function(msg) {
		 * process.send(msg);
		 * });
		 * }</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="send")]
		public static function send2(message:*, sendHandle:*):void {
		}
		
		/**
		 * <p>This function will kill the worker, and inform the master to not spawn a
		 * new worker.  The boolean <code>suicide</code> lets you distinguish between voluntary
		 * and accidental exit.
		 * </p>
		 * <pre><code>cluster.on(&#39;exit&#39;, function(worker, code, signal) {
		 * if (worker.suicide === true) {
		 * console.log(&#39;Oh, it was just suicide\&#39; – no need to worry&#39;).
		 * }
		 * });
		 * // destroy worker
		 * worker.destroy();</code></pre>
		 * 
		 */
		public static function destroy():void {
		}
		
		/**
		 * <p>When calling this function the worker will no longer accept new connections, but
		 * they will be handled by any other listening worker. Existing connection will be
		 * allowed to exit as usual. When no more connections exist, the IPC channel to the worker
		 * will close allowing it to die graceful. When the IPC channel is closed the <code>disconnect</code>
		 * event will emit, this is then followed by the <code>exit</code> event, there is emitted when
		 * the worker finally die.
		 * </p>
		 * <p>Because there might be long living connections, it is useful to implement a timeout.
		 * This example ask the worker to disconnect and after 2 seconds it will destroy the
		 * server. An alternative would be to execute <code>worker.destroy()</code> after 2 seconds, but
		 * that would normally not allow the worker to do any cleanup if needed.
		 * </p>
		 * <pre><code>if (cluster.isMaster) {
		 * var worker = cluster.fork();
		 * var timeout;
		 * worker.on(&#39;listening&#39;, function(address) {
		 * worker.disconnect();
		 * timeout = setTimeout(function() {
		 * worker.send(&#39;force kill&#39;);
		 * }, 2000);
		 * });
		 * worker.on(&#39;disconnect&#39;, function() {
		 * clearTimeout(timeout);
		 * });
		 * } else if (cluster.isWorker) {
		 * var net = require(&#39;net&#39;);
		 * var server = net.createServer(function(socket) {
		 * // connection never end
		 * });
		 * server.listen(8000);
		 * server.on(&#39;close&#39;, function() {
		 * // cleanup
		 * });
		 * process.on(&#39;message&#39;, function(msg) {
		 * if (msg === &#39;force kill&#39;) {
		 * server.destroy();
		 * }
		 * });
		 * }</code></pre>
		 * 
		 */
		public static function disconnect():void {
		}
		
		public function send(...params):* {
			return null;
		}
	}
}
