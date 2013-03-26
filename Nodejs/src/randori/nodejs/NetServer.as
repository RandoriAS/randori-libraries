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
	 * Generated from file: net.json
	 */
	[JavaScript(export="false", name="net.Server")]
	public class NetServer extends EventsEventEmitter {
		
		/**
		 * <p>Emitted when the server has been bound after calling <code>server.listen</code>.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="listening")]
		public var onlistening:Function;
		
		/**
		 * <p>Emitted when a new connection is made. <code>socket</code> is an instance of
		 * <code>net.Socket</code>.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="connection")]
		public var onconnection:Function;
		
		/**
		 * <p>Emitted when the server closes. Note that if connections exist, this
		 * event is not emitted until all connections are ended.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="close")]
		public var onclose:Function;
		
		/**
		 * <p>Emitted when an error occurs.  The <code>&#39;close&#39;</code> event will be called directly
		 * following this event.  See example in discussion of <code>server.listen</code>.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="error")]
		public var onerror:Function;
		
		/**
		 * <p>Set this property to reject connections when the server&#39;s connection count gets
		 * high.
		 * </p>
		 * <p>It is not recommended to use this option once a socket has been sent to a child
		 * with <code>child_process.fork()</code>.
		 * </p>
		 * 
		 */
		public var maxConnections:int;
		
		/**
		 * <p>The number of concurrent connections on the server.
		 * </p>
		 * <p>This becomes <code>null</code> when sending a socket to a child with <code>child_process.fork()</code>.
		 * </p>
		 * <p><code>net.Server</code> is an [EventEmitter][] with the following events:
		 * </p>
		 * 
		 */
		public var connections:int;
		
		/**
		 * <p>Begin accepting connections on the specified <code>port</code> and <code>host</code>.  If the
		 * <code>host</code> is omitted, the server will accept connections directed to any
		 * IPv4 address (<code>INADDR_ANY</code>). A port value of zero will assign a random port.
		 * </p>
		 * <p>Backlog is the maximum length of the queue of pending connections.
		 * The actual length will be determined by your OS through sysctl settings such as
		 * <code>tcp_max_syn_backlog</code> and <code>somaxconn</code> on linux. The default value of this
		 * parameter is 511 (not 512).
		 * </p>
		 * <p>This function is asynchronous.  When the server has been bound,
		 * [&#39;listening&#39;][] event will be emitted.  The last parameter <code>callback</code>
		 * will be added as an listener for the [&#39;listening&#39;][] event.
		 * </p>
		 * <p>One issue some users run into is getting <code>EADDRINUSE</code> errors. This means that
		 * another server is already running on the requested port. One way of handling this
		 * would be to wait a second and then try again. This can be done with
		 * </p>
		 * <pre><code>server.on(&#39;error&#39;, function (e) {
		 * if (e.code == &#39;EADDRINUSE&#39;) {
		 * console.log(&#39;Address in use, retrying...&#39;);
		 * setTimeout(function () {
		 * server.close();
		 * server.listen(PORT, HOST);
		 * }, 1000);
		 * }
		 * });</code></pre>
		 * <p>(Note: All sockets in Node set <code>SO_REUSEADDR</code> already)
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="listen")]
		public static function listen1(port:*, host:*, backlog:*, callback:*):void {
		}
		
		/**
		 * <p>Start a UNIX socket server listening for connections on the given <code>path</code>.
		 * </p>
		 * <p>This function is asynchronous.  When the server has been bound,
		 * [&#39;listening&#39;][] event will be emitted.  The last parameter <code>callback</code>
		 * will be added as an listener for the [&#39;listening&#39;][] event.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="listen")]
		public static function listen2(path:*, callback:*):void {
		}
		
		/**
		 * <p>The <code>handle</code> object can be set to either a server or socket (anything
		 * with an underlying <code>_handle</code> member), or a <code>{fd: &lt;n&gt;}</code> object.
		 * </p>
		 * <p>This will cause the server to accept connections on the specified
		 * handle, but it is presumed that the file descriptor or handle has
		 * already been bound to a port or domain socket.
		 * </p>
		 * <p>Listening on a file descriptor is not supported on Windows.
		 * </p>
		 * <p>This function is asynchronous.  When the server has been bound,
		 * <a href="#event_listening_">&#39;listening&#39;</a> event will be emitted.
		 * the last parameter <code>callback</code> will be added as an listener for the
		 * <a href="#event_listening_">&#39;listening&#39;</a> event.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="listen")]
		public static function listen3(handle:Object, callback:Function):void {
		}
		
		/**
		 * <p>The <code>handle</code> object can be set to either a server or socket (anything
		 * with an underlying <code>_handle</code> member), or a <code>{fd: &lt;n&gt;}</code> object.
		 * </p>
		 * <p>This will cause the server to accept connections on the specified
		 * handle, but it is presumed that the file descriptor or handle has
		 * already been bound to a port or domain socket.
		 * </p>
		 * <p>Listening on a file descriptor is not supported on Windows.
		 * </p>
		 * <p>This function is asynchronous.  When the server has been bound,
		 * <a href="#event_listening_">&#39;listening&#39;</a> event will be emitted.
		 * the last parameter <code>callback</code> will be added as an listener for the
		 * <a href="#event_listening_">&#39;listening&#39;</a> event.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="listen")]
		public static function listen4(handle:*, callback:*):void {
		}
		
		/**
		 * <p>Stops the server from accepting new connections and keeps existing
		 * connections. This function is asynchronous, the server is finally
		 * closed when all connections are ended and the server emits a <code>&#39;close&#39;</code>
		 * event. Optionally, you can pass a callback to listen for the <code>&#39;close&#39;</code>
		 * event.
		 * </p>
		 * 
		 */
		public static function close(callback:*):void {
		}
		
		/**
		 * <p>Returns the bound address, the address family name and port of the server
		 * as reported by the operating system.
		 * Useful to find which port was assigned when giving getting an OS-assigned address.
		 * Returns an object with three properties, e.g.
		 * <code>{ port: 12346, family: &#39;IPv4&#39;, address: &#39;127.0.0.1&#39; }</code>
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var server = net.createServer(function (socket) {
		 * socket.end(&quot;goodbye\n&quot;);
		 * });
		 * // grab a random port.
		 * server.listen(function() {
		 * address = server.address();
		 * console.log(&quot;opened server on %j&quot;, address);
		 * });</code></pre>
		 * <p>Don&#39;t call <code>server.address()</code> until the <code>&#39;listening&#39;</code> event has been emitted.
		 * </p>
		 * 
		 */
		public static function address():void {
		}
		
		public function listen(...params):* {
			return null;
		}
	}
}
