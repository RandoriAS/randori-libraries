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
	[JavaScript(export="false", name="http.ClientRequest")]
	public class HttpClientRequest extends EventsEventEmitter {
		
		/**
		 * <p><code>function (response) { }</code>
		 * </p>
		 * <p>Emitted when a response is received to this request. This event is emitted only
		 * once. The <code>response</code> argument will be an instance of <code>http.ClientResponse</code>.
		 * </p>
		 * <p>Options:
		 * </p>
		 * <ul>
		 * <li><code>host</code>: A domain name or IP address of the server to issue the request to.</li>
		 * <li><code>port</code>: Port of remote server.</li>
		 * <li><code>socketPath</code>: Unix Domain Socket (use one of host:port or socketPath)</li>
		 * </ul>
		 * 
		 */
		[JavaScriptProperty(name="response")]
		public var onresponse:Function;
		
		/**
		 * <p><code>function (socket) { }</code>
		 * </p>
		 * <p>Emitted after a socket is assigned to this request.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="socket")]
		public var onsocket:Function;
		
		/**
		 * <p><code>function (response, socket, head) { }</code>
		 * </p>
		 * <p>Emitted each time a server responds to a request with a CONNECT method. If this
		 * event isn&#39;t being listened for, clients receiving a CONNECT method will have
		 * their connections closed.
		 * </p>
		 * <p>A client server pair that show you how to listen for the <code>connect</code> event.
		 * </p>
		 * <pre><code>var http = require(&#39;http&#39;);
		 * var net = require(&#39;net&#39;);
		 * var url = require(&#39;url&#39;);
		 * // Create an HTTP tunneling proxy
		 * var proxy = http.createServer(function (req, res) {
		 * res.writeHead(200, {&#39;Content-Type&#39;: &#39;text/plain&#39;});
		 * res.end(&#39;okay&#39;);
		 * });
		 * proxy.on(&#39;connect&#39;, function(req, cltSocket, head) {
		 * // connect to an origin server
		 * var srvUrl = url.parse(&#39;http://&#39; + req.url);
		 * var srvSocket = net.connect(srvUrl.port, srvUrl.hostname, function() {
		 * cltSocket.write(&#39;HTTP/1.1 200 Connection Established\r\n&#39; +
		 * &#39;Proxy-agent: Node-Proxy\r\n&#39; +
		 * &#39;\r\n&#39;);
		 * srvSocket.write(head);
		 * srvSocket.pipe(cltSocket);
		 * cltSocket.pipe(srvSocket);
		 * });
		 * });
		 * // now that proxy is running
		 * proxy.listen(1337, &#39;127.0.0.1&#39;, function() {
		 * // make a request to a tunneling proxy
		 * var options = {
		 * port: 1337,
		 * hostname: &#39;127.0.0.1&#39;,
		 * method: &#39;CONNECT&#39;,
		 * path: &#39;www.google.com:80&#39;
		 * };
		 * var req = http.request(options);
		 * req.end();
		 * req.on(&#39;connect&#39;, function(res, socket, head) {
		 * console.log(&#39;got connected!&#39;);
		 * // make a request over an HTTP tunnel
		 * socket.write(&#39;GET / HTTP/1.1\r\n&#39; +
		 * &#39;Host: www.google.com:80\r\n&#39; +
		 * &#39;Connection: close\r\n&#39; +
		 * &#39;\r\n&#39;);
		 * socket.on(&#39;data&#39;, function(chunk) {
		 * console.log(chunk.toString());
		 * });
		 * socket.on(&#39;end&#39;, function() {
		 * proxy.close();
		 * });
		 * });
		 * });</code></pre>
		 * 
		 */
		[JavaScriptProperty(name="connect")]
		public var onconnect:Function;
		
		/**
		 * <p><code>function (response, socket, head) { }</code>
		 * </p>
		 * <p>Emitted each time a server responds to a request with an upgrade. If this
		 * event isn&#39;t being listened for, clients receiving an upgrade header will have
		 * their connections closed.
		 * </p>
		 * <p>A client server pair that show you how to listen for the <code>upgrade</code> event.
		 * </p>
		 * <pre><code>var http = require(&#39;http&#39;);
		 * // Create an HTTP server
		 * var srv = http.createServer(function (req, res) {
		 * res.writeHead(200, {&#39;Content-Type&#39;: &#39;text/plain&#39;});
		 * res.end(&#39;okay&#39;);
		 * });
		 * srv.on(&#39;upgrade&#39;, function(req, socket, head) {
		 * socket.write(&#39;HTTP/1.1 101 Web Socket Protocol Handshake\r\n&#39; +
		 * &#39;Upgrade: WebSocket\r\n&#39; +
		 * &#39;Connection: Upgrade\r\n&#39; +
		 * &#39;\r\n&#39;);
		 * socket.pipe(socket); // echo back
		 * });
		 * // now that server is running
		 * srv.listen(1337, &#39;127.0.0.1&#39;, function() {
		 * // make a request
		 * var options = {
		 * port: 1337,
		 * hostname: &#39;127.0.0.1&#39;,
		 * headers: {
		 * &#39;Connection&#39;: &#39;Upgrade&#39;,
		 * &#39;Upgrade&#39;: &#39;websocket&#39;
		 * }
		 * };
		 * var req = http.request(options);
		 * req.end();
		 * req.on(&#39;upgrade&#39;, function(res, socket, upgradeHead) {
		 * console.log(&#39;got upgraded!&#39;);
		 * socket.end();
		 * process.exit(0);
		 * });
		 * });</code></pre>
		 * 
		 */
		[JavaScriptProperty(name="upgrade")]
		public var onupgrade:Function;
		
		/**
		 * <p><code>function () { }</code>
		 * </p>
		 * <p>Emitted when the server sends a &#39;100 Continue&#39; HTTP response, usually because
		 * the request contained &#39;Expect: 100-continue&#39;. This is an instruction that
		 * the client should send the request body.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="continue")]
		public var oncontinue:Function;
		
		/**
		 * <p>Sends a chunk of the body.  By calling this method
		 * many times, the user can stream a request body to a
		 * server--in that case it is suggested to use the
		 * <code>[&#39;Transfer-Encoding&#39;, &#39;chunked&#39;]</code> header line when
		 * creating the request.
		 * </p>
		 * <p>The <code>chunk</code> argument should be a [Buffer][] or a string.
		 * </p>
		 * <p>The <code>encoding</code> argument is optional and only applies when <code>chunk</code> is a string.
		 * Defaults to <code>&#39;utf8&#39;</code>.
		 * </p>
		 * 
		 */
		public static function write(chunk:*, encoding:*):void {
		}
		
		/**
		 * <p>Finishes sending the request. If any parts of the body are
		 * unsent, it will flush them to the stream. If the request is
		 * chunked, this will send the terminating <code>&#39;0\r\n\r\n&#39;</code>.
		 * </p>
		 * <p>If <code>data</code> is specified, it is equivalent to calling
		 * <code>request.write(data, encoding)</code> followed by <code>request.end()</code>.
		 * </p>
		 * 
		 */
		public static function end(data:*, encoding:*):void {
		}
		
		/**
		 * <p>Aborts a request.  (New since v0.3.8.)
		 * </p>
		 * 
		 */
		public static function abort():void {
		}
		
		/**
		 * <p>Once a socket is assigned to this request and is connected
		 * [socket.setTimeout()][] will be called.
		 * </p>
		 * 
		 */
		public static function setTimeout(timeout:*, callback:*):void {
		}
		
		/**
		 * <p>Once a socket is assigned to this request and is connected
		 * [socket.setNoDelay()][] will be called.
		 * </p>
		 * 
		 */
		public static function setNoDelay(noDelay:*):void {
		}
		
		/**
		 * <p>Once a socket is assigned to this request and is connected
		 * [socket.setKeepAlive()][] will be called.
		 * </p>
		 * 
		 */
		public static function setSocketKeepAlive(enable:*, initialDelay:*):void {
		}
	}
}
