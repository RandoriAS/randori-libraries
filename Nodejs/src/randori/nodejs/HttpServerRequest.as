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
	[JavaScript(export="false", name="http.ServerRequest")]
	public class HttpServerRequest extends EventsEventEmitter {
		
		/**
		 * <p><code>function (chunk) { }</code>
		 * </p>
		 * <p>Emitted when a piece of the message body is received. The chunk is a string if
		 * an encoding has been set with <code>request.setEncoding()</code>, otherwise it&#39;s a
		 * [Buffer][].
		 * </p>
		 * <p>Note that the <strong>data will be lost</strong> if there is no listener when a
		 * <code>ServerRequest</code> emits a <code>&#39;data&#39;</code> event.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="data")]
		public var ondata:Function;
		
		/**
		 * <p><code>function () { }</code>
		 * </p>
		 * <p>Emitted exactly once for each request. After that, no more <code>&#39;data&#39;</code> events
		 * will be emitted on the request.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="end")]
		public var onend:Function;
		
		/**
		 * <p><code>function () { }</code>
		 * </p>
		 * <p>Indicates that the underlaying connection was terminated before
		 * <code>response.end()</code> was called or able to flush.
		 * </p>
		 * <p>Just like <code>&#39;end&#39;</code>, this event occurs only once per request, and no more <code>&#39;data&#39;</code>
		 * events will fire afterwards.
		 * </p>
		 * <p>Note: <code>&#39;close&#39;</code> can fire after <code>&#39;end&#39;</code>, but not vice versa.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="close")]
		public var onclose:Function;
		
		/**
		 * <p>The request method as a string. Read only. Example:
		 * <code>&#39;GET&#39;</code>, <code>&#39;DELETE&#39;</code>.
		 * </p>
		 * 
		 */
		public var method:String;
		
		/**
		 * <p>Request URL string. This contains only the URL that is
		 * present in the actual HTTP request. If the request is:
		 * </p>
		 * <pre><code>GET /status?name=ryan HTTP/1.1\r\n
		 * Accept: text/plain\r\n
		 * \r\n</code></pre>
		 * <p>Then <code>request.url</code> will be:
		 * </p>
		 * <pre><code>&#39;/status?name=ryan&#39;</code></pre>
		 * <p>If you would like to parse the URL into its parts, you can use
		 * <code>require(&#39;url&#39;).parse(request.url)</code>.  Example:
		 * </p>
		 * <pre><code>node&gt; require(&#39;url&#39;).parse(&#39;/status?name=ryan&#39;)
		 * { href: &#39;/status?name=ryan&#39;,
		 * search: &#39;?name=ryan&#39;,
		 * query: &#39;name=ryan&#39;,
		 * pathname: &#39;/status&#39; }</code></pre>
		 * <p>If you would like to extract the params from the query string,
		 * you can use the <code>require(&#39;querystring&#39;).parse</code> function, or pass
		 * <code>true</code> as the second argument to <code>require(&#39;url&#39;).parse</code>.  Example:
		 * </p>
		 * <pre><code>node&gt; require(&#39;url&#39;).parse(&#39;/status?name=ryan&#39;, true)
		 * { href: &#39;/status?name=ryan&#39;,
		 * search: &#39;?name=ryan&#39;,
		 * query: { name: &#39;ryan&#39; },
		 * pathname: &#39;/status&#39; }</code></pre>
		 * 
		 */
		public var url:String;
		
		/**
		 * <p>Read only map of header names and values. Header names are lower-cased.
		 * Example:
		 * </p>
		 * <pre><code>// Prints something like:
		 * //
		 * // { &#39;user-agent&#39;: &#39;curl/7.22.0&#39;,
		 * //   host: &#39;127.0.0.1:8000&#39;,
		 * //   accept: &#39;///&#39; }
		 * console.log(request.headers);</code></pre>
		 * 
		 */
		public var headers:Object;
		
		/**
		 * <p>Read only; HTTP trailers (if present). Only populated after the &#39;end&#39; event.
		 * </p>
		 * 
		 */
		public var trailers:Object;
		
		/**
		 * <p>The HTTP protocol version as a string. Read only. Examples:
		 * <code>&#39;1.1&#39;</code>, <code>&#39;1.0&#39;</code>.
		 * Also <code>request.httpVersionMajor</code> is the first integer and
		 * <code>request.httpVersionMinor</code> is the second.
		 * </p>
		 * 
		 */
		public var httpVersion:String;
		
		/**
		 * <p>The <code>net.Socket</code> object associated with the connection.
		 * </p>
		 * <p>With HTTPS support, use request.connection.verifyPeer() and
		 * request.connection.getPeerCertificate() to obtain the client&#39;s
		 * authentication details.
		 * </p>
		 * 
		 */
		public var connection:Socket;
		
		/**
		 * <p>Set the encoding for the request body. See [stream.setEncoding()][] for more
		 * information.
		 * </p>
		 * 
		 */
		public static function setEncoding(encoding:*):void {
		}
		
		/**
		 * <p>Pauses request from emitting events.  Useful to throttle back an upload.
		 * </p>
		 * 
		 */
		public static function pause():void {
		}
		
		/**
		 * <p>Resumes a paused request.
		 * </p>
		 * 
		 */
		public static function resume():void {
		}
	}
}
