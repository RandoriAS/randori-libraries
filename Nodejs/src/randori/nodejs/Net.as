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
	[JavaScript(export="false", name="net")]
	public class Net {
		
		/**
		 * <p>Creates a new TCP server. The <code>connectionListener</code> argument is
		 * automatically set as a listener for the [&#39;connection&#39;][] event.
		 * </p>
		 * <p><code>options</code> is an object with the following defaults:
		 * </p>
		 * <pre><code>{ allowHalfOpen: false
		 * }</code></pre>
		 * <p>If <code>allowHalfOpen</code> is <code>true</code>, then the socket won&#39;t automatically send a FIN
		 * packet when the other end of the socket sends a FIN packet. The socket becomes
		 * non-readable, but still writable. You should call the <code>end()</code> method explicitly.
		 * See [&#39;end&#39;][] event for more information.
		 * </p>
		 * <p>Here is an example of an echo server which listens for connections
		 * on port 8124:
		 * </p>
		 * <pre><code>var net = require(&#39;net&#39;);
		 * var server = net.createServer(function(c) { //&#39;connection&#39; listener
		 * console.log(&#39;server connected&#39;);
		 * c.on(&#39;end&#39;, function() {
		 * console.log(&#39;server disconnected&#39;);
		 * });
		 * c.write(&#39;hello\r\n&#39;);
		 * c.pipe(c);
		 * });
		 * server.listen(8124, function() { //&#39;listening&#39; listener
		 * console.log(&#39;server bound&#39;);
		 * });</code></pre>
		 * <p>Test this by using <code>telnet</code>:
		 * </p>
		 * <pre><code>telnet localhost 8124</code></pre>
		 * <p>To listen on the socket <code>/tmp/echo.sock</code> the third line from the last would
		 * just be changed to
		 * </p>
		 * <pre><code>server.listen(&#39;/tmp/echo.sock&#39;, function() { //&#39;listening&#39; listener</code></pre>
		 * <p>Use <code>nc</code> to connect to a UNIX domain socket server:
		 * </p>
		 * <pre><code>nc -U /tmp/echo.sock</code></pre>
		 * 
		 */
		public static function createServer(options:*, connectionListener:*):void {
		}
		
		/**
		 * <p>Constructs a new socket object and opens the socket to the given location.
		 * When the socket is established, the [&#39;connect&#39;][] event will be emitted.
		 * </p>
		 * <p>For TCP sockets, <code>options</code> argument should be an object which specifies:
		 * </p>
		 * <ul>
		 * <li><p><code>port</code>: Port the client should connect to (Required).</p>
		 * </li>
		 * <li><p><code>host</code>: Host the client should connect to. Defaults to <code>&#39;localhost&#39;</code>.</p>
		 * </li>
		 * <li><p><code>localAddress</code>: Local interface to bind to for network connections.</p>
		 * </li>
		 * </ul>
		 * <p>For UNIX domain sockets, <code>options</code> argument should be an object which specifies:
		 * </p>
		 * <ul>
		 * <li><code>path</code>: Path the client should connect to (Required).</li>
		 * </ul>
		 * <p>Common options are:
		 * </p>
		 * <ul>
		 * <li><code>allowHalfOpen</code>: if <code>true</code>, the socket won&#39;t automatically send
		 * a FIN packet when the other end of the socket sends a FIN packet.
		 * Defaults to <code>false</code>.  See [&#39;end&#39;][] event for more information.</li>
		 * </ul>
		 * <p>The <code>connectListener</code> parameter will be added as an listener for the
		 * [&#39;connect&#39;][] event.
		 * </p>
		 * <p>Here is an example of a client of echo server as described previously:
		 * </p>
		 * <pre><code>var net = require(&#39;net&#39;);
		 * var client = net.connect({port: 8124},
		 * function() { //&#39;connect&#39; listener
		 * console.log(&#39;client connected&#39;);
		 * client.write(&#39;world!\r\n&#39;);
		 * });
		 * client.on(&#39;data&#39;, function(data) {
		 * console.log(data.toString());
		 * client.end();
		 * });
		 * client.on(&#39;end&#39;, function() {
		 * console.log(&#39;client disconnected&#39;);
		 * });</code></pre>
		 * <p>To connect on the socket <code>/tmp/echo.sock</code> the second line would just be
		 * changed to
		 * </p>
		 * <pre><code>var client = net.connect({path: &#39;/tmp/echo.sock&#39;},</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="connect")]
		public static function connect1(options:*, connectionListener:*):void {
		}
		
		/**
		 * <p>Constructs a new socket object and opens the socket to the given location.
		 * When the socket is established, the [&#39;connect&#39;][] event will be emitted.
		 * </p>
		 * <p>For TCP sockets, <code>options</code> argument should be an object which specifies:
		 * </p>
		 * <ul>
		 * <li><p><code>port</code>: Port the client should connect to (Required).</p>
		 * </li>
		 * <li><p><code>host</code>: Host the client should connect to. Defaults to <code>&#39;localhost&#39;</code>.</p>
		 * </li>
		 * <li><p><code>localAddress</code>: Local interface to bind to for network connections.</p>
		 * </li>
		 * </ul>
		 * <p>For UNIX domain sockets, <code>options</code> argument should be an object which specifies:
		 * </p>
		 * <ul>
		 * <li><code>path</code>: Path the client should connect to (Required).</li>
		 * </ul>
		 * <p>Common options are:
		 * </p>
		 * <ul>
		 * <li><code>allowHalfOpen</code>: if <code>true</code>, the socket won&#39;t automatically send
		 * a FIN packet when the other end of the socket sends a FIN packet.
		 * Defaults to <code>false</code>.  See [&#39;end&#39;][] event for more information.</li>
		 * </ul>
		 * <p>The <code>connectListener</code> parameter will be added as an listener for the
		 * [&#39;connect&#39;][] event.
		 * </p>
		 * <p>Here is an example of a client of echo server as described previously:
		 * </p>
		 * <pre><code>var net = require(&#39;net&#39;);
		 * var client = net.connect({port: 8124},
		 * function() { //&#39;connect&#39; listener
		 * console.log(&#39;client connected&#39;);
		 * client.write(&#39;world!\r\n&#39;);
		 * });
		 * client.on(&#39;data&#39;, function(data) {
		 * console.log(data.toString());
		 * client.end();
		 * });
		 * client.on(&#39;end&#39;, function() {
		 * console.log(&#39;client disconnected&#39;);
		 * });</code></pre>
		 * <p>To connect on the socket <code>/tmp/echo.sock</code> the second line would just be
		 * changed to
		 * </p>
		 * <pre><code>var client = net.connect({path: &#39;/tmp/echo.sock&#39;},</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="connect")]
		public static function connect2(options:*, connectionListener:*):void {
		}
		
		/**
		 * <p>Constructs a new socket object and opens the socket to the given location.
		 * When the socket is established, the [&#39;connect&#39;][] event will be emitted.
		 * </p>
		 * <p>For TCP sockets, <code>options</code> argument should be an object which specifies:
		 * </p>
		 * <ul>
		 * <li><p><code>port</code>: Port the client should connect to (Required).</p>
		 * </li>
		 * <li><p><code>host</code>: Host the client should connect to. Defaults to <code>&#39;localhost&#39;</code>.</p>
		 * </li>
		 * <li><p><code>localAddress</code>: Local interface to bind to for network connections.</p>
		 * </li>
		 * </ul>
		 * <p>For UNIX domain sockets, <code>options</code> argument should be an object which specifies:
		 * </p>
		 * <ul>
		 * <li><code>path</code>: Path the client should connect to (Required).</li>
		 * </ul>
		 * <p>Common options are:
		 * </p>
		 * <ul>
		 * <li><code>allowHalfOpen</code>: if <code>true</code>, the socket won&#39;t automatically send
		 * a FIN packet when the other end of the socket sends a FIN packet.
		 * Defaults to <code>false</code>.  See [&#39;end&#39;][] event for more information.</li>
		 * </ul>
		 * <p>The <code>connectListener</code> parameter will be added as an listener for the
		 * [&#39;connect&#39;][] event.
		 * </p>
		 * <p>Here is an example of a client of echo server as described previously:
		 * </p>
		 * <pre><code>var net = require(&#39;net&#39;);
		 * var client = net.connect({port: 8124},
		 * function() { //&#39;connect&#39; listener
		 * console.log(&#39;client connected&#39;);
		 * client.write(&#39;world!\r\n&#39;);
		 * });
		 * client.on(&#39;data&#39;, function(data) {
		 * console.log(data.toString());
		 * client.end();
		 * });
		 * client.on(&#39;end&#39;, function() {
		 * console.log(&#39;client disconnected&#39;);
		 * });</code></pre>
		 * <p>To connect on the socket <code>/tmp/echo.sock</code> the second line would just be
		 * changed to
		 * </p>
		 * <pre><code>var client = net.connect({path: &#39;/tmp/echo.sock&#39;},</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="createConnection")]
		public static function createConnection1(options:*, connectionListener:*):void {
		}
		
		/**
		 * <p>Creates a TCP connection to <code>port</code> on <code>host</code>. If <code>host</code> is omitted,
		 * <code>&#39;localhost&#39;</code> will be assumed.
		 * The <code>connectListener</code> parameter will be added as an listener for the
		 * [&#39;connect&#39;][] event.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="connect")]
		public static function connect3(port:*, host:*, connectListener:*):void {
		}
		
		/**
		 * <p>Creates a TCP connection to <code>port</code> on <code>host</code>. If <code>host</code> is omitted,
		 * <code>&#39;localhost&#39;</code> will be assumed.
		 * The <code>connectListener</code> parameter will be added as an listener for the
		 * [&#39;connect&#39;][] event.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="connect")]
		public static function connect4(port:*, host:*, connectListener:*):void {
		}
		
		/**
		 * <p>Creates a TCP connection to <code>port</code> on <code>host</code>. If <code>host</code> is omitted,
		 * <code>&#39;localhost&#39;</code> will be assumed.
		 * The <code>connectListener</code> parameter will be added as an listener for the
		 * [&#39;connect&#39;][] event.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="createConnection")]
		public static function createConnection2(port:*, host:*, connectListener:*):void {
		}
		
		/**
		 * <p>Creates unix socket connection to <code>path</code>.
		 * The <code>connectListener</code> parameter will be added as an listener for the
		 * [&#39;connect&#39;][] event.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="connect")]
		public static function connect5(path:*, connectListener:*):void {
		}
		
		/**
		 * <p>Creates unix socket connection to <code>path</code>.
		 * The <code>connectListener</code> parameter will be added as an listener for the
		 * [&#39;connect&#39;][] event.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="connect")]
		public static function connect6(path:*, connectListener:*):void {
		}
		
		/**
		 * <p>Creates unix socket connection to <code>path</code>.
		 * The <code>connectListener</code> parameter will be added as an listener for the
		 * [&#39;connect&#39;][] event.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="createConnection")]
		public static function createConnection3(path:*, connectListener:*):void {
		}
		
		/**
		 * <p>Tests if input is an IP address. Returns 0 for invalid strings,
		 * returns 4 for IP version 4 addresses, and returns 6 for IP version 6 addresses.
		 * </p>
		 * 
		 */
		public static function isIP(input:*):void {
		}
		
		/**
		 * <p>Returns true if input is a version 4 IP address, otherwise returns false.
		 * </p>
		 * 
		 */
		public static function isIPv4(input:*):void {
		}
		
		/**
		 * <p>Returns true if input is a version 6 IP address, otherwise returns false.
		 * </p>
		 * 
		 */
		public static function isIPv6(input:*):void {
		}
		
		public function connect(...params):* {
			return null;
		}
		
		public function createConnection(...params):* {
			return null;
		}
	}
}
