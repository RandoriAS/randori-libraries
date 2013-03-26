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
	 * Generated from file: util.json
	 */
	[JavaScript(export="false", name="util")]
	public class Util {
		
		/**
		 * <p>Returns a formatted string using the first argument as a <code>printf</code>-like format.
		 * </p>
		 * <p>The first argument is a string that contains zero or more <em>placeholders</em>.
		 * Each placeholder is replaced with the converted value from its corresponding
		 * argument. Supported placeholders are:
		 * </p>
		 * <ul>
		 * <li><code>%s</code> - String.</li>
		 * <li><code>%d</code> - Number (both integer and float).</li>
		 * <li><code>%j</code> - JSON.</li>
		 * <li><code>%</code> - single percent sign (<code>&#39;%&#39;</code>). This does not consume an argument.</li>
		 * </ul>
		 * <p>If the placeholder does not have a corresponding argument, the placeholder is
		 * not replaced.
		 * </p>
		 * <pre><code>util.format(&#39;%s:%s&#39;, &#39;foo&#39;); // &#39;foo:%s&#39;</code></pre>
		 * <p>If there are more arguments than placeholders, the extra arguments are
		 * converted to strings with <code>util.inspect()</code> and these strings are concatenated,
		 * delimited by a space.
		 * </p>
		 * <pre><code>util.format(&#39;%s:%s&#39;, &#39;foo&#39;, &#39;bar&#39;, &#39;baz&#39;); // &#39;foo:bar baz&#39;</code></pre>
		 * <p>If the first argument is not a format string then <code>util.format()</code> returns
		 * a string that is the concatenation of all its arguments separated by spaces.
		 * Each argument is converted to a string with <code>util.inspect()</code>.
		 * </p>
		 * <pre><code>util.format(1, 2, 3); // &#39;1 2 3&#39;</code></pre>
		 * 
		 */
		public static function format(format:*, ...params):void {
		}
		
		/**
		 * <p>A synchronous output function. Will block the process and
		 * output <code>string</code> immediately to <code>stderr</code>.
		 * </p>
		 * <pre><code>require(&#39;util&#39;).debug(&#39;message on stderr&#39;);</code></pre>
		 * 
		 */
		public static function debug(string:*):void {
		}
		
		/**
		 * <p>Same as <code>util.debug()</code> except this will output all arguments immediately to
		 * <code>stderr</code>.
		 * </p>
		 * 
		 */
		public static function error(...params):void {
		}
		
		/**
		 * <p>A synchronous output function. Will block the process and output all arguments
		 * to <code>stdout</code> with newlines after each argument.
		 * </p>
		 * 
		 */
		public static function puts(...params):void {
		}
		
		/**
		 * <p>A synchronous output function. Will block the process, cast each argument to a
		 * string then output to <code>stdout</code>. Does not place newlines after each argument.
		 * </p>
		 * 
		 */
		public static function print(...params):void {
		}
		
		/**
		 * <p>Output with timestamp on <code>stdout</code>.
		 * </p>
		 * <pre><code>require(&#39;util&#39;).log(&#39;Timestamped message.&#39;);</code></pre>
		 * 
		 */
		public static function log(string:*):void {
		}
		
		/**
		 * <p>Return a string representation of <code>object</code>, which is useful for debugging.
		 * </p>
		 * <p>If <code>showHidden</code> is <code>true</code>, then the object&#39;s non-enumerable properties will be
		 * shown too. Defaults to <code>false</code>.
		 * </p>
		 * <p>If <code>depth</code> is provided, it tells <code>inspect</code> how many times to recurse while
		 * formatting the object. This is useful for inspecting large complicated objects.
		 * </p>
		 * <p>The default is to only recurse twice.  To make it recurse indefinitely, pass
		 * in <code>null</code> for <code>depth</code>.
		 * </p>
		 * <p>If <code>colors</code> is <code>true</code>, the output will be styled with ANSI color codes.
		 * Defaults to <code>false</code>.
		 * </p>
		 * <p>Example of inspecting all properties of the <code>util</code> object:
		 * </p>
		 * <pre><code>var util = require(&#39;util&#39;);
		 * console.log(util.inspect(util, true, null));</code></pre>
		 * <p>Objects also may define their own <code>inspect(depth)</code> function which <code>util.inspect()</code>
		 * will invoke and use the result of when inspecting the object:
		 * </p>
		 * <pre><code>var util = require(&#39;util&#39;);
		 * var obj = { name: &#39;nate&#39; };
		 * obj.inspect = function(depth) {
		 * return &#39;{&#39; + this.name + &#39;}&#39;;
		 * };
		 * util.inspect(obj);
		 * // &quot;{nate}&quot;</code></pre>
		 * 
		 */
		public static function inspect(object:*, showHidden:*, depth:*, colors:*):void {
		}
		
		/**
		 * <p>Returns <code>true</code> if the given &quot;object&quot; is an <code>Array</code>. <code>false</code> otherwise.
		 * </p>
		 * <pre><code>var util = require(&#39;util&#39;);
		 * util.isArray([])
		 * // true
		 * util.isArray(new Array)
		 * // true
		 * util.isArray({})
		 * // false</code></pre>
		 * 
		 */
		public static function isArray(object:*):void {
		}
		
		/**
		 * <p>Returns <code>true</code> if the given &quot;object&quot; is a <code>RegExp</code>. <code>false</code> otherwise.
		 * </p>
		 * <pre><code>var util = require(&#39;util&#39;);
		 * util.isRegExp(/some regexp/)
		 * // true
		 * util.isRegExp(new RegExp(&#39;another regexp&#39;))
		 * // true
		 * util.isRegExp({})
		 * // false</code></pre>
		 * 
		 */
		public static function isRegExp(object:*):void {
		}
		
		/**
		 * <p>Returns <code>true</code> if the given &quot;object&quot; is a <code>Date</code>. <code>false</code> otherwise.
		 * </p>
		 * <pre><code>var util = require(&#39;util&#39;);
		 * util.isDate(new Date())
		 * // true
		 * util.isDate(Date())
		 * // false (without &#39;new&#39; returns a String)
		 * util.isDate({})
		 * // false</code></pre>
		 * 
		 */
		public static function isDate(object:*):void {
		}
		
		/**
		 * <p>Returns <code>true</code> if the given &quot;object&quot; is an <code>Error</code>. <code>false</code> otherwise.
		 * </p>
		 * <pre><code>var util = require(&#39;util&#39;);
		 * util.isError(new Error())
		 * // true
		 * util.isError(new TypeError())
		 * // true
		 * util.isError({ name: &#39;Error&#39;, message: &#39;an error occurred&#39; })
		 * // false</code></pre>
		 * 
		 */
		public static function isError(object:*):void {
		}
		
		/**
		 * <p>Read the data from <code>readableStream</code> and send it to the <code>writableStream</code>.
		 * When <code>writableStream.write(data)</code> returns <code>false</code> <code>readableStream</code> will be
		 * paused until the <code>drain</code> event occurs on the <code>writableStream</code>. <code>callback</code> gets
		 * an error as its only argument and is called when <code>writableStream</code> is closed or
		 * when an error occurs.
		 * </p>
		 * 
		 */
		public static function pump(readableStream:*, writableStream:*, callback:*):void {
		}
		
		/**
		 * <p>Inherit the prototype methods from one
		 * <a href="https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Object/constructor">constructor</a>
		 * into another.  The prototype of <code>constructor</code> will be set to a new
		 * object created from <code>superConstructor</code>.
		 * </p>
		 * <p>As an additional convenience, <code>superConstructor</code> will be accessible
		 * through the <code>constructor.super_</code> property.
		 * </p>
		 * <pre><code>var util = require(&quot;util&quot;);
		 * var events = require(&quot;events&quot;);
		 * function MyStream() {
		 * events.EventEmitter.call(this);
		 * }
		 * util.inherits(MyStream, events.EventEmitter);
		 * MyStream.prototype.write = function(data) {
		 * this.emit(&quot;data&quot;, data);
		 * }
		 * var stream = new MyStream();
		 * console.log(stream instanceof events.EventEmitter); // true
		 * console.log(MyStream.super_ === events.EventEmitter); // true
		 * stream.on(&quot;data&quot;, function(data) {
		 * console.log(&#39;Received data: &quot;&#39; + data + &#39;&quot;&#39;);
		 * })
		 * stream.write(&quot;It works!&quot;); // Received data: &quot;It works!&quot;</code></pre>
		 * 
		 */
		public static function inherits(constructor:*, superConstructor:*):void {
		}
	}
}
