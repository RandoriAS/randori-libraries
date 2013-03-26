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
	 * Generated from file: https.json
	 */
	[JavaScript(export="false", name="https")]
	public class Https {
		
		/**
		 * <p>Global instance of [https.Agent][] for all HTTPS client requests.
		 * </p>
		 * 
		 */
		public static var globalAgent:HttpAgent;
		
		/**
		 * <p>Returns a new HTTPS web server object. The <code>options</code> is similar to
		 * [tls.createServer()][].  The <code>requestListener</code> is a function which is
		 * automatically added to the <code>&#39;request&#39;</code> event.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>// curl -k https://localhost:8000/
		 * var https = require(&#39;https&#39;);
		 * var fs = require(&#39;fs&#39;);
		 * var options = {
		 * key: fs.readFileSync(&#39;test/fixtures/keys/agent2-key.pem&#39;),
		 * cert: fs.readFileSync(&#39;test/fixtures/keys/agent2-cert.pem&#39;)
		 * };
		 * https.createServer(options, function (req, res) {
		 * res.writeHead(200);
		 * res.end(&quot;hello world\n&quot;);
		 * }).listen(8000);</code></pre>
		 * <p>Or
		 * </p>
		 * <pre><code>var https = require(&#39;https&#39;);
		 * var fs = require(&#39;fs&#39;);
		 * var options = {
		 * pfx: fs.readFileSync(&#39;server.pfx&#39;)
		 * };
		 * https.createServer(options, function (req, res) {
		 * res.writeHead(200);
		 * res.end(&quot;hello world\n&quot;);
		 * }).listen(8000);</code></pre>
		 * 
		 */
		public static function createServer(options:*, requestListener:*):void {
		}
		
		/**
		 * <p>Makes a request to a secure web server.
		 * </p>
		 * <p><code>options</code> can be an object or a string. If <code>options</code> is a string, it is
		 * automatically parsed with <a href="url.html#url.parse">url.parse()</a>.
		 * </p>
		 * <p>All options from [http.request()][] are valid.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var https = require(&#39;https&#39;);
		 * var options = {
		 * hostname: &#39;encrypted.google.com&#39;,
		 * port: 443,
		 * path: &#39;/&#39;,
		 * method: &#39;GET&#39;
		 * };
		 * var req = https.request(options, function(res) {
		 * console.log(&quot;statusCode: &quot;, res.statusCode);
		 * console.log(&quot;headers: &quot;, res.headers);
		 * res.on(&#39;data&#39;, function(d) {
		 * process.stdout.write(d);
		 * });
		 * });
		 * req.end();
		 * req.on(&#39;error&#39;, function(e) {
		 * console.error(e);
		 * });</code></pre>
		 * <p>The options argument has the following options
		 * </p>
		 * <ul>
		 * <li><code>host</code>: A domain name or IP address of the server to issue the request to.
		 * Defaults to <code>&#39;localhost&#39;</code>.</li>
		 * <li><code>hostname</code>: To support <code>url.parse()</code> <code>hostname</code> is preferred over <code>host</code></li>
		 * <li><code>port</code>: Port of remote server. Defaults to 443.</li>
		 * <li><code>method</code>: A string specifying the HTTP request method. Defaults to <code>&#39;GET&#39;</code>.</li>
		 * <li><code>path</code>: Request path. Defaults to <code>&#39;/&#39;</code>. Should include query string if any.
		 * E.G. <code>&#39;/index.html?page=12&#39;</code></li>
		 * <li><code>headers</code>: An object containing request headers.</li>
		 * <li><code>auth</code>: Basic authentication i.e. <code>&#39;user:password&#39;</code> to compute an
		 * Authorization header.</li>
		 * <li><code>agent</code>: Controls [Agent][] behavior. When an Agent is used request will
		 * default to <code>Connection: keep-alive</code>. Possible values:<ul>
		 * <li><code>undefined</code> (default): use [globalAgent][] for this host and port.</li>
		 * <li><code>Agent</code> object: explicitly use the passed in <code>Agent</code>.</li>
		 * <li><code>false</code>: opts out of connection pooling with an Agent, defaults request to
		 * <code>Connection: close</code>.</li>
		 * </ul>
		 * </li>
		 * </ul>
		 * <p>The following options from [tls.connect()][] can also be specified. However, a
		 * [globalAgent][] silently ignores these.
		 * </p>
		 * <ul>
		 * <li><code>pfx</code>: Certificate, Private key and CA certificates to use for SSL. Default <code>null</code>.</li>
		 * <li><code>key</code>: Private key to use for SSL. Default <code>null</code>.</li>
		 * <li><code>passphrase</code>: A string of passphrase for the private key or pfx. Default <code>null</code>.</li>
		 * <li><code>cert</code>: Public x509 certificate to use. Default <code>null</code>.</li>
		 * <li><code>ca</code>: An authority certificate or array of authority certificates to check
		 * the remote host against.</li>
		 * <li><code>ciphers</code>: A string describing the ciphers to use or exclude. Consult
		 * <a href="http://www.openssl.org/docs/apps/ciphers.html#CIPHER_LIST_FORMAT">http://www.openssl.org/docs/apps/ciphers.html#CIPHER_LIST_FORMAT</a> for
		 * details on the format.</li>
		 * <li><code>rejectUnauthorized</code>: If <code>true</code>, the server certificate is verified against
		 * the list of supplied CAs. An <code>&#39;error&#39;</code> event is emitted if verification
		 * fails. Verification happens at the connection level, <em>before</em> the HTTP
		 * request is sent. Default <code>false</code>.</li>
		 * </ul>
		 * <p>In order to specify these options, use a custom <code>Agent</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var options = {
		 * hostname: &#39;encrypted.google.com&#39;,
		 * port: 443,
		 * path: &#39;/&#39;,
		 * method: &#39;GET&#39;,
		 * key: fs.readFileSync(&#39;test/fixtures/keys/agent2-key.pem&#39;),
		 * cert: fs.readFileSync(&#39;test/fixtures/keys/agent2-cert.pem&#39;)
		 * };
		 * options.agent = new https.Agent(options);
		 * var req = https.request(options, function(res) {
		 * ...
		 * }</code></pre>
		 * <p>Or does not use an <code>Agent</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var options = {
		 * hostname: &#39;encrypted.google.com&#39;,
		 * port: 443,
		 * path: &#39;/&#39;,
		 * method: &#39;GET&#39;,
		 * key: fs.readFileSync(&#39;test/fixtures/keys/agent2-key.pem&#39;),
		 * cert: fs.readFileSync(&#39;test/fixtures/keys/agent2-cert.pem&#39;),
		 * agent: false
		 * };
		 * var req = https.request(options, function(res) {
		 * ...
		 * }</code></pre>
		 * 
		 */
		public static function request(options:*, callback:*):void {
		}
		
		/**
		 * <p>Like <code>http.get()</code> but for HTTPS.
		 * </p>
		 * <p><code>options</code> can be an object or a string. If <code>options</code> is a string, it is
		 * automatically parsed with <a href="url.html#url.parse">url.parse()</a>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var https = require(&#39;https&#39;);
		 * https.get(&#39;https://encrypted.google.com/&#39;, function(res) {
		 * console.log(&quot;statusCode: &quot;, res.statusCode);
		 * console.log(&quot;headers: &quot;, res.headers);
		 * res.on(&#39;data&#39;, function(d) {
		 * process.stdout.write(d);
		 * });
		 * }).on(&#39;error&#39;, function(e) {
		 * console.error(e);
		 * });</code></pre>
		 * 
		 */
		public static function get(options:*, callback:*):void {
		}
	}
}
