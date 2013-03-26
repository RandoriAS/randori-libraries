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
	 * Generated from file: http.json
	 */
	[JavaScript(export="false", name="http.Server")]
	public class HttpServer extends EventsEventEmitter {
		
		/**
		 * <p><code>function (request, response) { }</code>
		 * </p>
		 * <p>Emitted each time there is a request. Note that there may be multiple requests
		 * per connection (in the case of keep-alive connections).
		 * <code>request</code> is an instance of <code>http.ServerRequest</code> and <code>response</code> is
		 * an instance of <code>http.ServerResponse</code>
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="request")]
		public var onrequest:Function;
		
		/**
		 * <p><code>function (socket) { }</code>
		 * </p>
		 * <p> When a new TCP stream is established. <code>socket</code> is an object of type
		 * <code>net.Socket</code>. Usually users will not want to access this event. The
		 * <code>socket</code> can also be accessed at <code>request.connection</code>.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="connection")]
		public var onconnection:Function;
		
		/**
		 * <p><code>function () { }</code>
		 * </p>
		 * <p> Emitted when the server closes.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="close")]
		public var onclose:Function;
		
		/**
		 * <p><code>function (request, response) { }</code>
		 * </p>
		 * <p>Emitted each time a request with an http Expect: 100-continue is received.
		 * If this event isn&#39;t listened for, the server will automatically respond
		 * with a 100 Continue as appropriate.
		 * </p>
		 * <p>Handling this event involves calling <code>response.writeContinue</code> if the client
		 * should continue to send the request body, or generating an appropriate HTTP
		 * response (e.g., 400 Bad Request) if the client should not continue to send the
		 * request body.
		 * </p>
		 * <p>Note that when this event is emitted and handled, the <code>request</code> event will
		 * not be emitted.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="checkContinue")]
		public var oncheckContinue:Function;
		
		/**
		 * <p><code>function (request, socket, head) { }</code>
		 * </p>
		 * <p>Emitted each time a client requests a http CONNECT method. If this event isn&#39;t
		 * listened for, then clients requesting a CONNECT method will have their
		 * connections closed.
		 * </p>
		 * <ul>
		 * <li><code>request</code> is the arguments for the http request, as it is in the request
		 * event.</li>
		 * <li><code>socket</code> is the network socket between the server and client.</li>
		 * <li><code>head</code> is an instance of Buffer, the first packet of the tunneling stream,
		 * this may be empty.</li>
		 * </ul>
		 * <p>After this event is emitted, the request&#39;s socket will not have a <code>data</code>
		 * event listener, meaning you will need to bind to it in order to handle data
		 * sent to the server on that socket.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="connect")]
		public var onconnect:Function;
		
		/**
		 * <p><code>function (request, socket, head) { }</code>
		 * </p>
		 * <p>Emitted each time a client requests a http upgrade. If this event isn&#39;t
		 * listened for, then clients requesting an upgrade will have their connections
		 * closed.
		 * </p>
		 * <ul>
		 * <li><code>request</code> is the arguments for the http request, as it is in the request
		 * event.</li>
		 * <li><code>socket</code> is the network socket between the server and client.</li>
		 * <li><code>head</code> is an instance of Buffer, the first packet of the upgraded stream,
		 * this may be empty.</li>
		 * </ul>
		 * <p>After this event is emitted, the request&#39;s socket will not have a <code>data</code>
		 * event listener, meaning you will need to bind to it in order to handle data
		 * sent to the server on that socket.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="upgrade")]
		public var onupgrade:Function;
		
		/**
		 * <p><code>function (exception) { }</code>
		 * </p>
		 * <p>If a client connection emits an &#39;error&#39; event - it will forwarded here.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="clientError")]
		public var onclientError:Function;
		
		/**
		 * <p>Limits maximum incoming headers count, equal to 1000 by default. If set to 0 -
		 * no limit will be applied.
		 * </p>
		 * 
		 */
		public var maxHeadersCount:int;
		
		/**
		 * <p>Begin accepting connections on the specified port and hostname.  If the
		 * hostname is omitted, the server will accept connections directed to any
		 * IPv4 address (<code>INADDR_ANY</code>).
		 * </p>
		 * <p>To listen to a unix socket, supply a filename instead of port and hostname.
		 * </p>
		 * <p>Backlog is the maximum length of the queue of pending connections.
		 * The actual length will be determined by your OS through sysctl settings such as
		 * <code>tcp_max_syn_backlog</code> and <code>somaxconn</code> on linux. The default value of this
		 * parameter is 511 (not 512).
		 * </p>
		 * <p>This function is asynchronous. The last parameter <code>callback</code> will be added as
		 * a listener for the [&#39;listening&#39;][] event.  See also [net.Server.listen(port)][].
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="listen")]
		public static function listen1(port:*, hostname:*, backlog:*, callback:*):void {
		}
		
		/**
		 * <p>Start a UNIX socket server listening for connections on the given <code>path</code>.
		 * </p>
		 * <p>This function is asynchronous. The last parameter <code>callback</code> will be added as
		 * a listener for the [&#39;listening&#39;][] event.  See also [net.Server.listen(path)][].
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
		 * <p>This function is asynchronous. The last parameter <code>callback</code> will be added as
		 * a listener for the <a href="net.html#event_listening_">&#39;listening&#39;</a> event.
		 * See also <a href="net.html#net_server_listen_handle_callback">net.Server.listen()</a>.
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
		 * <p>This function is asynchronous. The last parameter <code>callback</code> will be added as
		 * a listener for the <a href="net.html#event_listening_">&#39;listening&#39;</a> event.
		 * See also <a href="net.html#net_server_listen_handle_callback">net.Server.listen()</a>.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="listen")]
		public static function listen4(handle:*, callback:*):void {
		}
		
		/**
		 * <p>Stops the server from accepting new connections.  See [net.Server.close()][].
		 * </p>
		 * 
		 */
		public static function close(callback:*):void {
		}
		
		public function listen(...params):* {
			return null;
		}
	}
}
