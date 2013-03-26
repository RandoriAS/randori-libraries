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
	 * Generated from file: stream.json
	 */
	[JavaScript(export="false", name="Readable Stream")]
	public class ReadableStream extends EventsEventEmitter {
		
		/**
		 * <p><code>function (data) { }</code>
		 * </p>
		 * <p>The <code>&#39;data&#39;</code> event emits either a <code>Buffer</code> (by default) or a string if
		 * <code>setEncoding()</code> was used.
		 * </p>
		 * <p>Note that the <strong>data will be lost</strong> if there is no listener when a
		 * <code>Readable Stream</code> emits a <code>&#39;data&#39;</code> event.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="data")]
		public var ondata:Function;
		
		/**
		 * <p><code>function () { }</code>
		 * </p>
		 * <p>Emitted when the stream has received an EOF (FIN in TCP terminology).
		 * Indicates that no more <code>&#39;data&#39;</code> events will happen. If the stream is
		 * also writable, it may be possible to continue writing.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="end")]
		public var onend:Function;
		
		/**
		 * <p><code>function (exception) { }</code>
		 * </p>
		 * <p>Emitted if there was an error receiving data.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="error")]
		public var onerror:Function;
		
		/**
		 * <p><code>function () { }</code>
		 * </p>
		 * <p>Emitted when the underlying resource (for example, the backing file
		 * descriptor) has been closed. Not all streams will emit this.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="close")]
		public var onclose:Function;
		
		/**
		 * <p>A boolean that is <code>true</code> by default, but turns <code>false</code> after an
		 * <code>&#39;error&#39;</code> occurred, the stream came to an <code>&#39;end&#39;</code>, or <code>destroy()</code> was
		 * called.
		 * </p>
		 * 
		 */
		public var readable:Boolean;
		
		/**
		 * <p>Makes the <code>&#39;data&#39;</code> event emit a string instead of a <code>Buffer</code>. <code>encoding</code>
		 * can be <code>&#39;utf8&#39;</code>, <code>&#39;utf16le&#39;</code> (<code>&#39;ucs2&#39;</code>), <code>&#39;ascii&#39;</code>, or <code>&#39;hex&#39;</code>. Defaults
		 * to <code>&#39;utf8&#39;</code>.
		 * </p>
		 * 
		 */
		public static function setEncoding(encoding:*):void {
		}
		
		/**
		 * <p>Issues an advisory signal to the underlying communication layer,
		 * requesting that no further data be sent until <code>resume()</code> is called.
		 * </p>
		 * <p>Note that, due to the advisory nature, certain streams will not be
		 * paused immediately, and so <code>&#39;data&#39;</code> events may be emitted for some
		 * indeterminate period of time even after <code>pause()</code> is called. You may
		 * wish to buffer such <code>&#39;data&#39;</code> events.
		 * </p>
		 * 
		 */
		public static function pause():void {
		}
		
		/**
		 * <p>Resumes the incoming <code>&#39;data&#39;</code> events after a <code>pause()</code>.
		 * </p>
		 * 
		 */
		public static function resume():void {
		}
		
		/**
		 * <p>Closes the underlying file descriptor. Stream is no longer <code>writable</code>
		 * nor <code>readable</code>.  The stream will not emit any more &#39;data&#39;, or &#39;end&#39;
		 * events. Any queued write data will not be sent.  The stream should emit
		 * &#39;close&#39; event once its resources have been disposed of.
		 * </p>
		 * 
		 */
		public static function destroy():void {
		}
		
		/**
		 * <p>This is a <code>Stream.prototype</code> method available on all <code>Stream</code>s.
		 * </p>
		 * <p>Connects this read stream to <code>destination</code> WriteStream. Incoming data on
		 * this stream gets written to <code>destination</code>. The destination and source
		 * streams are kept in sync by pausing and resuming as necessary.
		 * </p>
		 * <p>This function returns the <code>destination</code> stream.
		 * </p>
		 * <p>Emulating the Unix <code>cat</code> command:
		 * </p>
		 * <pre><code>process.stdin.resume(); process.stdin.pipe(process.stdout);</code></pre>
		 * <p>By default <code>end()</code> is called on the destination when the source stream
		 * emits <code>end</code>, so that <code>destination</code> is no longer writable. Pass <code>{ end:
		 * false }</code> as <code>options</code> to keep the destination stream open.
		 * </p>
		 * <p>This keeps <code>process.stdout</code> open so that &quot;Goodbye&quot; can be written at the
		 * end.
		 * </p>
		 * <pre><code>process.stdin.resume();
		 * process.stdin.pipe(process.stdout, { end: false });
		 * process.stdin.on(&quot;end&quot;, function() {
		 * process.stdout.write(&quot;Goodbye\n&quot;); });</code></pre>
		 * 
		 */
		public static function pipe(destination:*, options:*):void {
		}
	}
}
