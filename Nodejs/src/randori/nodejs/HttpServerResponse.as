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
	[JavaScript(export="false", name="http.ServerResponse")]
	public class HttpServerResponse extends EventsEventEmitter {
		
		/**
		 * <p><code>function () { }</code>
		 * </p>
		 * <p>Indicates that the underlaying connection was terminated before
		 * <code>response.end()</code> was called or able to flush.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="close")]
		public var onclose:Function;
		
		/**
		 * <p>When using implicit headers (not calling <code>response.writeHead()</code> explicitly), this property
		 * controls the status code that will be sent to the client when the headers get
		 * flushed.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>response.statusCode = 404;</code></pre>
		 * <p>After response header was sent to the client, this property indicates the
		 * status code which was sent out.
		 * </p>
		 * 
		 */
		public var statusCode:int;
		
		/**
		 * <p>When true, the Date header will be automatically generated and sent in
		 * the response if it is not already present in the headers. Defaults to true.
		 * </p>
		 * <p>This should only be disabled for testing; HTTP requires the Date header
		 * in responses.
		 * </p>
		 * 
		 */
		public var sendDate:Date;
		
		/**
		 * <p>Sends a HTTP/1.1 100 Continue message to the client, indicating that
		 * the request body should be sent. See the [&#39;checkContinue&#39;][] event on <code>Server</code>.
		 * </p>
		 * 
		 */
		public static function writeContinue():void {
		}
		
		/**
		 * <p>Sends a response header to the request. The status code is a 3-digit HTTP
		 * status code, like <code>404</code>. The last argument, <code>headers</code>, are the response headers.
		 * Optionally one can give a human-readable <code>reasonPhrase</code> as the second
		 * argument.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var body = &#39;hello world&#39;;
		 * response.writeHead(200, {
		 * &#39;Content-Length&#39;: body.length,
		 * &#39;Content-Type&#39;: &#39;text/plain&#39; });</code></pre>
		 * <p>This method must only be called once on a message and it must
		 * be called before <code>response.end()</code> is called.
		 * </p>
		 * <p>If you call <code>response.write()</code> or <code>response.end()</code> before calling this, the
		 * implicit/mutable headers will be calculated and call this function for you.
		 * </p>
		 * <p>Note: that Content-Length is given in bytes not characters. The above example
		 * works because the string <code>&#39;hello world&#39;</code> contains only single byte characters.
		 * If the body contains higher coded characters then <code>Buffer.byteLength()</code>
		 * should be used to determine the number of bytes in a given encoding.
		 * And Node does not check whether Content-Length and the length of the body
		 * which has been transmitted are equal or not.
		 * </p>
		 * 
		 */
		public static function writeHead(statusCode:*, reasonPhrase:*, headers:*):void {
		}
		
		/**
		 * <p>Sets a single header value for implicit headers.  If this header already exists
		 * in the to-be-sent headers, its value will be replaced.  Use an array of strings
		 * here if you need to send multiple headers with the same name.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>response.setHeader(&quot;Content-Type&quot;, &quot;text/html&quot;);</code></pre>
		 * <p>or
		 * </p>
		 * <pre><code>response.setHeader(&quot;Set-Cookie&quot;, [&quot;type=ninja&quot;, &quot;language=javascript&quot;]);</code></pre>
		 * 
		 */
		public static function setHeader(name:*, value:*):void {
		}
		
		/**
		 * <p>Reads out a header that&#39;s already been queued but not sent to the client.  Note
		 * that the name is case insensitive.  This can only be called before headers get
		 * implicitly flushed.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var contentType = response.getHeader(&#39;content-type&#39;);</code></pre>
		 * 
		 */
		public static function getHeader(name:*):void {
		}
		
		/**
		 * <p>Removes a header that&#39;s queued for implicit sending.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>response.removeHeader(&quot;Content-Encoding&quot;);</code></pre>
		 * 
		 */
		public static function removeHeader(name:*):void {
		}
		
		/**
		 * <p>If this method is called and <code>response.writeHead()</code> has not been called, it will
		 * switch to implicit header mode and flush the implicit headers.
		 * </p>
		 * <p>This sends a chunk of the response body. This method may
		 * be called multiple times to provide successive parts of the body.
		 * </p>
		 * <p><code>chunk</code> can be a string or a buffer. If <code>chunk</code> is a string,
		 * the second parameter specifies how to encode it into a byte stream.
		 * By default the <code>encoding</code> is <code>&#39;utf8&#39;</code>.
		 * </p>
		 * <p><strong>Note</strong>: This is the raw HTTP body and has nothing to do with
		 * higher-level multi-part body encodings that may be used.
		 * </p>
		 * <p>The first time <code>response.write()</code> is called, it will send the buffered
		 * header information and the first body to the client. The second time
		 * <code>response.write()</code> is called, Node assumes you&#39;re going to be streaming
		 * data, and sends that separately. That is, the response is buffered up to the
		 * first chunk of body.
		 * </p>
		 * <p>Returns <code>true</code> if the entire data was flushed successfully to the kernel
		 * buffer. Returns <code>false</code> if all or part of the data was queued in user memory.
		 * <code>&#39;drain&#39;</code> will be emitted when the buffer is again free.
		 * </p>
		 * 
		 */
		public static function write(chunk:*, encoding:*):void {
		}
		
		/**
		 * <p>This method adds HTTP trailing headers (a header but at the end of the
		 * message) to the response.
		 * </p>
		 * <p>Trailers will <strong>only</strong> be emitted if chunked encoding is used for the
		 * response; if it is not (e.g., if the request was HTTP/1.0), they will
		 * be silently discarded.
		 * </p>
		 * <p>Note that HTTP requires the <code>Trailer</code> header to be sent if you intend to
		 * emit trailers, with a list of the header fields in its value. E.g.,
		 * </p>
		 * <pre><code>response.writeHead(200, { &#39;Content-Type&#39;: &#39;text/plain&#39;,
		 * &#39;Trailer&#39;: &#39;Content-MD5&#39; });
		 * response.write(fileData);
		 * response.addTrailers({&#39;Content-MD5&#39;: &quot;7895bf4b8828b55ceaf47747b4bca667&quot;});
		 * response.end();</code></pre>
		 * 
		 */
		public static function addTrailers(headers:*):void {
		}
		
		/**
		 * <p>This method signals to the server that all of the response headers and body
		 * have been sent; that server should consider this message complete.
		 * The method, <code>response.end()</code>, MUST be called on each
		 * response.
		 * </p>
		 * <p>If <code>data</code> is specified, it is equivalent to calling <code>response.write(data, encoding)</code>
		 * followed by <code>response.end()</code>.
		 * </p>
		 * 
		 */
		public static function end(data:*, encoding:*):void {
		}
	}
}
