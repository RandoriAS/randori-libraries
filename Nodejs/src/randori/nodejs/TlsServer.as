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
	 * Generated from file: tls.json
	 */
	[JavaScript(export="false", name="tls.Server")]
	public class TlsServer extends EventsEventEmitter {
		
		/**
		 * <p><code>function (cleartextStream) {}</code>
		 * </p>
		 * <p>This event is emitted after a new connection has been successfully
		 * handshaked. The argument is a instance of [CleartextStream][]. It has all the
		 * common stream methods and events.
		 * </p>
		 * <p><code>cleartextStream.authorized</code> is a boolean value which indicates if the
		 * client has verified by one of the supplied certificate authorities for the
		 * server. If <code>cleartextStream.authorized</code> is false, then
		 * <code>cleartextStream.authorizationError</code> is set to describe how authorization
		 * failed. Implied but worth mentioning: depending on the settings of the TLS
		 * server, you unauthorized connections may be accepted.
		 * <code>cleartextStream.npnProtocol</code> is a string containing selected NPN protocol.
		 * <code>cleartextStream.servername</code> is a string containing servername requested with
		 * SNI.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="secureConnection")]
		public var onsecureConnection:Function;
		
		/**
		 * <p><code>function (exception) { }</code>
		 * </p>
		 * <p>When a client connection emits an &#39;error&#39; event before secure connection is
		 * established - it will be forwarded here.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="clientError")]
		public var onclientError:Function;
		
		/**
		 * <p>Set this property to reject connections when the server&#39;s connection count
		 * gets high.
		 * </p>
		 * 
		 */
		public var maxConnections:int;
		
		/**
		 * <p>The number of concurrent connections on the server.
		 * </p>
		 * 
		 */
		public var connections:int;
		
		/**
		 * <p>Begin accepting connections on the specified <code>port</code> and <code>host</code>.  If the
		 * <code>host</code> is omitted, the server will accept connections directed to any
		 * IPv4 address (<code>INADDR_ANY</code>).
		 * </p>
		 * <p>This function is asynchronous. The last parameter <code>callback</code> will be called
		 * when the server has been bound.
		 * </p>
		 * <p>See <code>net.Server</code> for more information.
		 * </p>
		 * 
		 */
		public static function listen(port:*, host:*, callback:*):void {
		}
		
		/**
		 * <p>Stops the server from accepting new connections. This function is
		 * asynchronous, the server is finally closed when the server emits a <code>&#39;close&#39;</code>
		 * event.
		 * </p>
		 * 
		 */
		public static function close():void {
		}
		
		/**
		 * <p>Returns the bound address, the address family name and port of the
		 * server as reported by the operating system.  See [net.Server.address()][] for
		 * more information.
		 * </p>
		 * 
		 */
		public static function address():void {
		}
		
		/**
		 * <p>Add secure context that will be used if client request&#39;s SNI hostname is
		 * matching passed <code>hostname</code> (wildcards can be used). <code>credentials</code> can contain
		 * <code>key</code>, <code>cert</code> and <code>ca</code>.
		 * </p>
		 * 
		 */
		public static function addContext(hostname:*, credentials:*):void {
		}
	}
}
