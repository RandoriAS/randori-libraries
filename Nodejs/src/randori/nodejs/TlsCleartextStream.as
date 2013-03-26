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
	[JavaScript(export="false", name="tls.CleartextStream")]
	public class TlsCleartextStream extends EventsEventEmitter {
		
		/**
		 * <p>This event is emitted after a new connection has been successfully handshaked.
		 * The listener will be called no matter if the server&#39;s certificate was
		 * authorized or not. It is up to the user to test <code>cleartextStream.authorized</code>
		 * to see if the server certificate was signed by one of the specified CAs.
		 * If <code>cleartextStream.authorized === false</code> then the error can be found in
		 * <code>cleartextStream.authorizationError</code>. Also if NPN was used - you can check
		 * <code>cleartextStream.npnProtocol</code> for negotiated protocol.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="secureConnect")]
		public var onsecureConnect:Function;
		
		/**
		 * <p>A boolean that is <code>true</code> if the peer certificate was signed by one of the
		 * specified CAs, otherwise <code>false</code>
		 * </p>
		 * 
		 */
		public var authorized:Boolean;
		
		/**
		 * <p>The reason why the peer&#39;s certificate has not been verified. This property
		 * becomes available only when <code>cleartextStream.authorized === false</code>.
		 * </p>
		 * 
		 */
		public var authorizationError:String;
		
		/**
		 * <p>The string representation of the remote IP address. For example,
		 * <code>&#39;74.125.127.100&#39;</code> or <code>&#39;2001:4860:a005::68&#39;</code>.
		 * </p>
		 * 
		 */
		public var remoteAddress:String;
		
		/**
		 * <p>The numeric representation of the remote port. For example, <code>443</code>.
		 * </p>
		 * 
		 */
		public var remotePort:int;
		
		/**
		 * <p>Returns an object representing the peer&#39;s certificate. The returned object has
		 * some properties corresponding to the field of the certificate.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>{ subject:
		 * { C: &#39;UK&#39;,
		 * ST: &#39;Acknack Ltd&#39;,
		 * L: &#39;Rhys Jones&#39;,
		 * O: &#39;node.js&#39;,
		 * OU: &#39;Test TLS Certificate&#39;,
		 * CN: &#39;localhost&#39; },
		 * issuer:
		 * { C: &#39;UK&#39;,
		 * ST: &#39;Acknack Ltd&#39;,
		 * L: &#39;Rhys Jones&#39;,
		 * O: &#39;node.js&#39;,
		 * OU: &#39;Test TLS Certificate&#39;,
		 * CN: &#39;localhost&#39; },
		 * valid_from: &#39;Nov 11 09:52:22 2009 GMT&#39;,
		 * valid_to: &#39;Nov  6 09:52:22 2029 GMT&#39;,
		 * fingerprint: &#39;2A:7A:C2:DD:E5:F9:CC:53:72:35:99:7A:02:5A:71:38:52:EC:8A:DF&#39; }</code></pre>
		 * <p>If the peer does not provide a certificate, it returns <code>null</code> or an empty
		 * object.
		 * </p>
		 * 
		 */
		public static function getPeerCertificate():void {
		}
		
		/**
		 * <p>Returns an object representing the cipher name and the SSL/TLS
		 * protocol version of the current connection.
		 * </p>
		 * <p>Example:
		 * { name: &#39;AES256-SHA&#39;, version: &#39;TLSv1/SSLv3&#39; }
		 * </p>
		 * <p>See SSL_CIPHER_get_name() and SSL_CIPHER_get_version() in
		 * <a href="http://www.openssl.org/docs/ssl/ssl.html#DEALING_WITH_CIPHERS">http://www.openssl.org/docs/ssl/ssl.html#DEALING_WITH_CIPHERS</a> for more
		 * information.
		 * </p>
		 * 
		 */
		public static function getCipher():void {
		}
		
		/**
		 * <p>Returns the bound address, the address family name and port of the
		 * underlying socket as reported by the operating system. Returns an
		 * object with three properties, e.g.
		 * <code>{ port: 12346, family: &#39;IPv4&#39;, address: &#39;127.0.0.1&#39; }</code>
		 * </p>
		 * 
		 */
		public static function address():void {
		}
	}
}
