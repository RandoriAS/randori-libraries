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
	 * Generated from file: repl.json
	 */
	[JavaScript(export="false", name="repl")]
	public class Repl {
		
		/**
		 * <p>Returns and starts a <code>REPLServer</code> instance. Accepts an &quot;options&quot; Object that
		 * takes the following values:
		 * </p>
		 * <ul>
		 * <li><p><code>prompt</code> - the prompt and <code>stream</code> for all I/O. Defaults to <code>&gt; </code>.</p>
		 * </li>
		 * <li><p><code>input</code> - the readable stream to listen to. Defaults to <code>process.stdin</code>.</p>
		 * </li>
		 * <li><p><code>output</code> - the writable stream to write readline data to. Defaults to
		 * <code>process.stdout</code>.</p>
		 * </li>
		 * <li><p><code>terminal</code> - pass <code>true</code> if the <code>stream</code> should be treated like a TTY, and
		 * have ANSI/VT100 escape codes written to it. Defaults to checking <code>isTTY</code>
		 * on the <code>output</code> stream upon instantiation.</p>
		 * </li>
		 * <li><p><code>eval</code> - function that will be used to eval each given line. Defaults to
		 * an async wrapper for <code>eval()</code>. See below for an example of a custom <code>eval</code>.</p>
		 * </li>
		 * <li><p><code>useColors</code> - a boolean which specifies whether or not the <code>writer</code> function
		 * should output colors. If a different <code>writer</code> function is set then this does
		 * nothing. Defaults to the repl&#39;s <code>terminal</code> value.</p>
		 * </li>
		 * <li><p><code>useGlobal</code> - if set to <code>true</code>, then the repl will use the <code>global</code> object,
		 * instead of running scripts in a separate context. Defaults to <code>false</code>.</p>
		 * </li>
		 * <li><p><code>ignoreUndefined</code> - if set to <code>true</code>, then the repl will not output the
		 * return value of command if it&#39;s <code>undefined</code>. Defaults to <code>false</code>.</p>
		 * </li>
		 * <li><p><code>writer</code> - the function to invoke for each command that gets evaluated which
		 * returns the formatting (including coloring) to display. Defaults to
		 * <code>util.inspect</code>.</p>
		 * </li>
		 * </ul>
		 * <p>You can use your own <code>eval</code> function if it has following signature:
		 * </p>
		 * <pre><code>function eval(cmd, context, filename, callback) {
		 * callback(null, result);
		 * }</code></pre>
		 * <p>Multiple REPLs may be started against the same running instance of node.  Each
		 * will share the same global object but will have unique I/O.
		 * </p>
		 * <p>Here is an example that starts a REPL on stdin, a Unix socket, and a TCP socket:
		 * </p>
		 * <pre><code>var net = require(&quot;net&quot;),
		 * repl = require(&quot;repl&quot;);
		 * connections = 0;
		 * repl.start({
		 * prompt: &quot;node via stdin&gt; &quot;,
		 * input: process.stdin,
		 * output: process.stdout
		 * });
		 * net.createServer(function (socket) {
		 * connections += 1;
		 * repl.start({
		 * prompt: &quot;node via Unix socket&gt; &quot;,
		 * input: socket,
		 * output: socket
		 * }).on(&#39;exit&#39;, function() {
		 * socket.end();
		 * })
		 * }).listen(&quot;/tmp/node-repl-sock&quot;);
		 * net.createServer(function (socket) {
		 * connections += 1;
		 * repl.start({
		 * prompt: &quot;node via TCP socket&gt; &quot;,
		 * input: socket,
		 * output: socket
		 * }).on(&#39;exit&#39;, function() {
		 * socket.end();
		 * });
		 * }).listen(5001);</code></pre>
		 * <p>Running this program from the command line will start a REPL on stdin.  Other
		 * REPL clients may connect through the Unix socket or TCP socket. <code>telnet</code> is useful
		 * for connecting to TCP sockets, and <code>socat</code> can be used to connect to both Unix and
		 * TCP sockets.
		 * </p>
		 * <p>By starting a REPL from a Unix socket-based server instead of stdin, you can
		 * connect to a long-running node process without restarting it.
		 * </p>
		 * <p>For an example of running a &quot;full-featured&quot; (<code>terminal</code>) REPL over
		 * a <code>net.Server</code> and <code>net.Socket</code> instance, see: <a href="https://gist.github.com/2209310">https://gist.github.com/2209310</a>
		 * </p>
		 * <p>For an example of running a REPL instance over <code>curl(1)</code>,
		 * see: <a href="https://gist.github.com/2053342">https://gist.github.com/2053342</a>
		 * </p>
		 * 
		 */
		public static function start(options:*):void {
		}
	}
}
