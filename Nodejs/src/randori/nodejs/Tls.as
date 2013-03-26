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
	[JavaScript(export="false", name="tls_(ssl)")]
	public class Tls {
		
		/**
		 * <p>Creates a new [tls.Server][].  The <code>connectionListener</code> argument is
		 * automatically set as a listener for the [secureConnection][] event.  The
		 * <code>options</code> object has these possibilities:
		 * </p>
		 * <ul>
		 * <li><p><code>pfx</code>: A string or <code>Buffer</code> containing the private key, certificate and
		 * CA certs of the server in PFX or PKCS12 format. (Mutually exclusive with
		 * the <code>key</code>, <code>cert</code> and <code>ca</code> options.)</p>
		 * </li>
		 * <li><p><code>key</code>: A string or <code>Buffer</code> containing the private key of the server in
		 * PEM format. (Required)</p>
		 * </li>
		 * <li><p><code>passphrase</code>: A string of passphrase for the private key or pfx.</p>
		 * </li>
		 * <li><p><code>cert</code>: A string or <code>Buffer</code> containing the certificate key of the server in
		 * PEM format. (Required)</p>
		 * </li>
		 * <li><p><code>ca</code>: An array of strings or <code>Buffer</code>s of trusted certificates. If this is
		 * omitted several well known &quot;root&quot; CAs will be used, like VeriSign.
		 * These are used to authorize connections.</p>
		 * </li>
		 * <li><p><code>crl</code> : Either a string or list of strings of PEM encoded CRLs (Certificate
		 * Revocation List)</p>
		 * </li>
		 * <li><p><code>ciphers</code>: A string describing the ciphers to use or exclude.</p>
		 * <p>To mitigate [BEAST attacks] it is recommended that you use this option in
		 * conjunction with the <code>honorCipherOrder</code> option described below to
		 * prioritize the non-CBC cipher.</p>
		 * <p>Defaults to
		 * <code>ECDHE-RSA-AES128-SHA256:AES128-GCM-SHA256:RC4:HIGH:!MD5:!aNULL:!EDH</code>.
		 * Consult the [OpenSSL cipher list format documentation] for details on the
		 * format.</p>
		 * <p><code>ECDHE-RSA-AES128-SHA256</code> and <code>AES128-GCM-SHA256</code> are used when node.js is
		 * linked against OpenSSL 1.0.1 or newer and the client speaks TLS 1.2, RC4 is
		 * used as a secure fallback.</p>
		 * <p><strong>NOTE</strong>: Previous revisions of this section suggested <code>AES256-SHA</code> as an
		 * acceptable cipher. Unfortunately, <code>AES256-SHA</code> is a CBC cipher and therefore
		 * susceptible to BEAST attacks. Do <em>not</em> use it.</p>
		 * </li>
		 * <li><p><code>honorCipherOrder</code> : When choosing a cipher, use the server&#39;s preferences
		 * instead of the client preferences.</p>
		 * <p>Note that if SSLv2 is used, the server will send its list of preferences
		 * to the client, and the client chooses the cipher.</p>
		 * <p>Although, this option is disabled by default, it is <em>recommended</em> that you
		 * use this option in conjunction with the <code>ciphers</code> option to mitigate
		 * BEAST attacks.</p>
		 * </li>
		 * <li><p><code>requestCert</code>: If <code>true</code> the server will request a certificate from
		 * clients that connect and attempt to verify that certificate. Default:
		 * <code>false</code>.</p>
		 * </li>
		 * <li><p><code>rejectUnauthorized</code>: If <code>true</code> the server will reject any connection
		 * which is not authorized with the list of supplied CAs. This option only
		 * has an effect if <code>requestCert</code> is <code>true</code>. Default: <code>false</code>.</p>
		 * </li>
		 * <li><p><code>NPNProtocols</code>: An array or <code>Buffer</code> of possible NPN protocols. (Protocols
		 * should be ordered by their priority).</p>
		 * </li>
		 * <li><p><code>SNICallback</code>: A function that will be called if client supports SNI TLS
		 * extension. Only one argument will be passed to it: <code>servername</code>. And
		 * <code>SNICallback</code> should return SecureContext instance.
		 * (You can use <code>crypto.createCredentials(...).context</code> to get proper
		 * SecureContext). If <code>SNICallback</code> wasn&#39;t provided - default callback with
		 * high-level API will be used (see below).</p>
		 * </li>
		 * <li><p><code>sessionIdContext</code>: A string containing a opaque identifier for session
		 * resumption. If <code>requestCert</code> is <code>true</code>, the default is MD5 hash value
		 * generated from command-line. Otherwise, the default is not provided.</p>
		 * </li>
		 * </ul>
		 * <p>Here is a simple example echo server:
		 * </p>
		 * <pre><code>var tls = require(&#39;tls&#39;);
		 * var fs = require(&#39;fs&#39;);
		 * var options = {
		 * key: fs.readFileSync(&#39;server-key.pem&#39;),
		 * cert: fs.readFileSync(&#39;server-cert.pem&#39;),
		 * // This is necessary only if using the client certificate authentication.
		 * requestCert: true,
		 * // This is necessary only if the client uses the self-signed certificate.
		 * ca: [ fs.readFileSync(&#39;client-cert.pem&#39;) ]
		 * };
		 * var server = tls.createServer(options, function(cleartextStream) {
		 * console.log(&#39;server connected&#39;,
		 * cleartextStream.authorized ? &#39;authorized&#39; : &#39;unauthorized&#39;);
		 * cleartextStream.write(&quot;welcome!\n&quot;);
		 * cleartextStream.setEncoding(&#39;utf8&#39;);
		 * cleartextStream.pipe(cleartextStream);
		 * });
		 * server.listen(8000, function() {
		 * console.log(&#39;server bound&#39;);
		 * });</code></pre>
		 * <p>Or
		 * </p>
		 * <pre><code>var tls = require(&#39;tls&#39;);
		 * var fs = require(&#39;fs&#39;);
		 * var options = {
		 * pfx: fs.readFileSync(&#39;server.pfx&#39;),
		 * // This is necessary only if using the client certificate authentication.
		 * requestCert: true,
		 * };
		 * var server = tls.createServer(options, function(cleartextStream) {
		 * console.log(&#39;server connected&#39;,
		 * cleartextStream.authorized ? &#39;authorized&#39; : &#39;unauthorized&#39;);
		 * cleartextStream.write(&quot;welcome!\n&quot;);
		 * cleartextStream.setEncoding(&#39;utf8&#39;);
		 * cleartextStream.pipe(cleartextStream);
		 * });
		 * server.listen(8000, function() {
		 * console.log(&#39;server bound&#39;);
		 * });</code></pre>
		 * <p>You can test this server by connecting to it with <code>openssl s_client</code>:
		 * </p>
		 * <pre><code>openssl s_client -connect 127.0.0.1:8000</code></pre>
		 * 
		 */
		public static function createServer(options:*, secureConnectionListener:*):void {
		}
		
		/**
		 * <p>Creates a new client connection to the given <code>port</code> and <code>host</code> (old API) or
		 * <code>options.port</code> and <code>options.host</code>. (If <code>host</code> is omitted, it defaults to
		 * <code>localhost</code>.) <code>options</code> should be an object which specifies:
		 * </p>
		 * <ul>
		 * <li><p><code>host</code>: Host the client should connect to</p>
		 * </li>
		 * <li><p><code>port</code>: Port the client should connect to</p>
		 * </li>
		 * <li><p><code>socket</code>: Establish secure connection on a given socket rather than
		 * creating a new socket. If this option is specified, <code>host</code> and <code>port</code>
		 * are ignored.</p>
		 * </li>
		 * <li><p><code>pfx</code>: A string or <code>Buffer</code> containing the private key, certificate and
		 * CA certs of the server in PFX or PKCS12 format.</p>
		 * </li>
		 * <li><p><code>key</code>: A string or <code>Buffer</code> containing the private key of the client in
		 * PEM format.</p>
		 * </li>
		 * <li><p><code>passphrase</code>: A string of passphrase for the private key or pfx.</p>
		 * </li>
		 * <li><p><code>cert</code>: A string or <code>Buffer</code> containing the certificate key of the client in
		 * PEM format.</p>
		 * </li>
		 * <li><p><code>ca</code>: An array of strings or <code>Buffer</code>s of trusted certificates. If this is
		 * omitted several well known &quot;root&quot; CAs will be used, like VeriSign.
		 * These are used to authorize connections.</p>
		 * </li>
		 * <li><p><code>rejectUnauthorized</code>: If <code>true</code>, the server certificate is verified against
		 * the list of supplied CAs. An <code>&#39;error&#39;</code> event is emitted if verification
		 * fails. Default: <code>false</code>.</p>
		 * </li>
		 * <li><p><code>NPNProtocols</code>: An array of string or <code>Buffer</code> containing supported NPN
		 * protocols. <code>Buffer</code> should have following format: <code>0x05hello0x05world</code>,
		 * where first byte is next protocol name&#39;s length. (Passing array should
		 * usually be much simpler: <code>[&#39;hello&#39;, &#39;world&#39;]</code>.)</p>
		 * </li>
		 * <li><p><code>servername</code>: Servername for SNI (Server Name Indication) TLS extension.</p>
		 * </li>
		 * </ul>
		 * <p>The <code>callback</code> parameter will be added as a listener for the
		 * [&#39;secureConnect&#39;][] event.
		 * </p>
		 * <p><code>tls.connect()</code> returns a [CleartextStream][] object.
		 * </p>
		 * <p>Here is an example of a client of echo server as described previously:
		 * </p>
		 * <pre><code>var tls = require(&#39;tls&#39;);
		 * var fs = require(&#39;fs&#39;);
		 * var options = {
		 * // These are necessary only if using the client certificate authentication
		 * key: fs.readFileSync(&#39;client-key.pem&#39;),
		 * cert: fs.readFileSync(&#39;client-cert.pem&#39;),
		 * // This is necessary only if the server uses the self-signed certificate
		 * ca: [ fs.readFileSync(&#39;server-cert.pem&#39;) ]
		 * };
		 * var cleartextStream = tls.connect(8000, options, function() {
		 * console.log(&#39;client connected&#39;,
		 * cleartextStream.authorized ? &#39;authorized&#39; : &#39;unauthorized&#39;);
		 * process.stdin.pipe(cleartextStream);
		 * process.stdin.resume();
		 * });
		 * cleartextStream.setEncoding(&#39;utf8&#39;);
		 * cleartextStream.on(&#39;data&#39;, function(data) {
		 * console.log(data);
		 * });
		 * cleartextStream.on(&#39;end&#39;, function() {
		 * server.close();
		 * });</code></pre>
		 * <p>Or
		 * </p>
		 * <pre><code>var tls = require(&#39;tls&#39;);
		 * var fs = require(&#39;fs&#39;);
		 * var options = {
		 * pfx: fs.readFileSync(&#39;client.pfx&#39;)
		 * };
		 * var cleartextStream = tls.connect(8000, options, function() {
		 * console.log(&#39;client connected&#39;,
		 * cleartextStream.authorized ? &#39;authorized&#39; : &#39;unauthorized&#39;);
		 * process.stdin.pipe(cleartextStream);
		 * process.stdin.resume();
		 * });
		 * cleartextStream.setEncoding(&#39;utf8&#39;);
		 * cleartextStream.on(&#39;data&#39;, function(data) {
		 * console.log(data);
		 * });
		 * cleartextStream.on(&#39;end&#39;, function() {
		 * server.close();
		 * });</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="connect")]
		public static function connect1(port:*, host:*, options:*, callback:*):void {
		}
		
		/**
		 * <p>Creates a new client connection to the given <code>port</code> and <code>host</code> (old API) or
		 * <code>options.port</code> and <code>options.host</code>. (If <code>host</code> is omitted, it defaults to
		 * <code>localhost</code>.) <code>options</code> should be an object which specifies:
		 * </p>
		 * <ul>
		 * <li><p><code>host</code>: Host the client should connect to</p>
		 * </li>
		 * <li><p><code>port</code>: Port the client should connect to</p>
		 * </li>
		 * <li><p><code>socket</code>: Establish secure connection on a given socket rather than
		 * creating a new socket. If this option is specified, <code>host</code> and <code>port</code>
		 * are ignored.</p>
		 * </li>
		 * <li><p><code>pfx</code>: A string or <code>Buffer</code> containing the private key, certificate and
		 * CA certs of the server in PFX or PKCS12 format.</p>
		 * </li>
		 * <li><p><code>key</code>: A string or <code>Buffer</code> containing the private key of the client in
		 * PEM format.</p>
		 * </li>
		 * <li><p><code>passphrase</code>: A string of passphrase for the private key or pfx.</p>
		 * </li>
		 * <li><p><code>cert</code>: A string or <code>Buffer</code> containing the certificate key of the client in
		 * PEM format.</p>
		 * </li>
		 * <li><p><code>ca</code>: An array of strings or <code>Buffer</code>s of trusted certificates. If this is
		 * omitted several well known &quot;root&quot; CAs will be used, like VeriSign.
		 * These are used to authorize connections.</p>
		 * </li>
		 * <li><p><code>rejectUnauthorized</code>: If <code>true</code>, the server certificate is verified against
		 * the list of supplied CAs. An <code>&#39;error&#39;</code> event is emitted if verification
		 * fails. Default: <code>false</code>.</p>
		 * </li>
		 * <li><p><code>NPNProtocols</code>: An array of string or <code>Buffer</code> containing supported NPN
		 * protocols. <code>Buffer</code> should have following format: <code>0x05hello0x05world</code>,
		 * where first byte is next protocol name&#39;s length. (Passing array should
		 * usually be much simpler: <code>[&#39;hello&#39;, &#39;world&#39;]</code>.)</p>
		 * </li>
		 * <li><p><code>servername</code>: Servername for SNI (Server Name Indication) TLS extension.</p>
		 * </li>
		 * </ul>
		 * <p>The <code>callback</code> parameter will be added as a listener for the
		 * [&#39;secureConnect&#39;][] event.
		 * </p>
		 * <p><code>tls.connect()</code> returns a [CleartextStream][] object.
		 * </p>
		 * <p>Here is an example of a client of echo server as described previously:
		 * </p>
		 * <pre><code>var tls = require(&#39;tls&#39;);
		 * var fs = require(&#39;fs&#39;);
		 * var options = {
		 * // These are necessary only if using the client certificate authentication
		 * key: fs.readFileSync(&#39;client-key.pem&#39;),
		 * cert: fs.readFileSync(&#39;client-cert.pem&#39;),
		 * // This is necessary only if the server uses the self-signed certificate
		 * ca: [ fs.readFileSync(&#39;server-cert.pem&#39;) ]
		 * };
		 * var cleartextStream = tls.connect(8000, options, function() {
		 * console.log(&#39;client connected&#39;,
		 * cleartextStream.authorized ? &#39;authorized&#39; : &#39;unauthorized&#39;);
		 * process.stdin.pipe(cleartextStream);
		 * process.stdin.resume();
		 * });
		 * cleartextStream.setEncoding(&#39;utf8&#39;);
		 * cleartextStream.on(&#39;data&#39;, function(data) {
		 * console.log(data);
		 * });
		 * cleartextStream.on(&#39;end&#39;, function() {
		 * server.close();
		 * });</code></pre>
		 * <p>Or
		 * </p>
		 * <pre><code>var tls = require(&#39;tls&#39;);
		 * var fs = require(&#39;fs&#39;);
		 * var options = {
		 * pfx: fs.readFileSync(&#39;client.pfx&#39;)
		 * };
		 * var cleartextStream = tls.connect(8000, options, function() {
		 * console.log(&#39;client connected&#39;,
		 * cleartextStream.authorized ? &#39;authorized&#39; : &#39;unauthorized&#39;);
		 * process.stdin.pipe(cleartextStream);
		 * process.stdin.resume();
		 * });
		 * cleartextStream.setEncoding(&#39;utf8&#39;);
		 * cleartextStream.on(&#39;data&#39;, function(data) {
		 * console.log(data);
		 * });
		 * cleartextStream.on(&#39;end&#39;, function() {
		 * server.close();
		 * });</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="connect")]
		public static function connect2(options:*, callback:*):void {
		}
		
		/**
		 * <p>Creates a new client connection to the given <code>port</code> and <code>host</code> (old API) or
		 * <code>options.port</code> and <code>options.host</code>. (If <code>host</code> is omitted, it defaults to
		 * <code>localhost</code>.) <code>options</code> should be an object which specifies:
		 * </p>
		 * <ul>
		 * <li><p><code>host</code>: Host the client should connect to</p>
		 * </li>
		 * <li><p><code>port</code>: Port the client should connect to</p>
		 * </li>
		 * <li><p><code>socket</code>: Establish secure connection on a given socket rather than
		 * creating a new socket. If this option is specified, <code>host</code> and <code>port</code>
		 * are ignored.</p>
		 * </li>
		 * <li><p><code>pfx</code>: A string or <code>Buffer</code> containing the private key, certificate and
		 * CA certs of the server in PFX or PKCS12 format.</p>
		 * </li>
		 * <li><p><code>key</code>: A string or <code>Buffer</code> containing the private key of the client in
		 * PEM format.</p>
		 * </li>
		 * <li><p><code>passphrase</code>: A string of passphrase for the private key or pfx.</p>
		 * </li>
		 * <li><p><code>cert</code>: A string or <code>Buffer</code> containing the certificate key of the client in
		 * PEM format.</p>
		 * </li>
		 * <li><p><code>ca</code>: An array of strings or <code>Buffer</code>s of trusted certificates. If this is
		 * omitted several well known &quot;root&quot; CAs will be used, like VeriSign.
		 * These are used to authorize connections.</p>
		 * </li>
		 * <li><p><code>rejectUnauthorized</code>: If <code>true</code>, the server certificate is verified against
		 * the list of supplied CAs. An <code>&#39;error&#39;</code> event is emitted if verification
		 * fails. Default: <code>false</code>.</p>
		 * </li>
		 * <li><p><code>NPNProtocols</code>: An array of string or <code>Buffer</code> containing supported NPN
		 * protocols. <code>Buffer</code> should have following format: <code>0x05hello0x05world</code>,
		 * where first byte is next protocol name&#39;s length. (Passing array should
		 * usually be much simpler: <code>[&#39;hello&#39;, &#39;world&#39;]</code>.)</p>
		 * </li>
		 * <li><p><code>servername</code>: Servername for SNI (Server Name Indication) TLS extension.</p>
		 * </li>
		 * </ul>
		 * <p>The <code>callback</code> parameter will be added as a listener for the
		 * [&#39;secureConnect&#39;][] event.
		 * </p>
		 * <p><code>tls.connect()</code> returns a [CleartextStream][] object.
		 * </p>
		 * <p>Here is an example of a client of echo server as described previously:
		 * </p>
		 * <pre><code>var tls = require(&#39;tls&#39;);
		 * var fs = require(&#39;fs&#39;);
		 * var options = {
		 * // These are necessary only if using the client certificate authentication
		 * key: fs.readFileSync(&#39;client-key.pem&#39;),
		 * cert: fs.readFileSync(&#39;client-cert.pem&#39;),
		 * // This is necessary only if the server uses the self-signed certificate
		 * ca: [ fs.readFileSync(&#39;server-cert.pem&#39;) ]
		 * };
		 * var cleartextStream = tls.connect(8000, options, function() {
		 * console.log(&#39;client connected&#39;,
		 * cleartextStream.authorized ? &#39;authorized&#39; : &#39;unauthorized&#39;);
		 * process.stdin.pipe(cleartextStream);
		 * process.stdin.resume();
		 * });
		 * cleartextStream.setEncoding(&#39;utf8&#39;);
		 * cleartextStream.on(&#39;data&#39;, function(data) {
		 * console.log(data);
		 * });
		 * cleartextStream.on(&#39;end&#39;, function() {
		 * server.close();
		 * });</code></pre>
		 * <p>Or
		 * </p>
		 * <pre><code>var tls = require(&#39;tls&#39;);
		 * var fs = require(&#39;fs&#39;);
		 * var options = {
		 * pfx: fs.readFileSync(&#39;client.pfx&#39;)
		 * };
		 * var cleartextStream = tls.connect(8000, options, function() {
		 * console.log(&#39;client connected&#39;,
		 * cleartextStream.authorized ? &#39;authorized&#39; : &#39;unauthorized&#39;);
		 * process.stdin.pipe(cleartextStream);
		 * process.stdin.resume();
		 * });
		 * cleartextStream.setEncoding(&#39;utf8&#39;);
		 * cleartextStream.on(&#39;data&#39;, function(data) {
		 * console.log(data);
		 * });
		 * cleartextStream.on(&#39;end&#39;, function() {
		 * server.close();
		 * });</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="connect")]
		public static function connect3(port:*, host:*, options:*, callback:*):void {
		}
		
		/**
		 * <p>Creates a new secure pair object with two streams, one of which reads/writes
		 * encrypted data, and one reads/writes cleartext data.
		 * Generally the encrypted one is piped to/from an incoming encrypted data stream,
		 * and the cleartext one is used as a replacement for the initial encrypted stream.
		 * </p>
		 * <ul>
		 * <li><p><code>credentials</code>: A credentials object from crypto.createCredentials( ... )</p>
		 * </li>
		 * <li><p><code>isServer</code>: A boolean indicating whether this tls connection should be
		 * opened as a server or a client.</p>
		 * </li>
		 * <li><p><code>requestCert</code>: A boolean indicating whether a server should request a
		 * certificate from a connecting client. Only applies to server connections.</p>
		 * </li>
		 * <li><p><code>rejectUnauthorized</code>: A boolean indicating whether a server should
		 * automatically reject clients with invalid certificates. Only applies to
		 * servers with <code>requestCert</code> enabled.</p>
		 * </li>
		 * </ul>
		 * <p><code>tls.createSecurePair()</code> returns a SecurePair object with [cleartext][] and
		 * <code>encrypted</code> stream properties.
		 * </p>
		 * 
		 */
		public static function createSecurePair(credentials:*, isServer:*, requestCert:*, rejectUnauthorized:*):void {
		}
		
		public function connect(...params):* {
			return null;
		}
	}
}
