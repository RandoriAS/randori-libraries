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
	 * Generated from file: buffer.json
	 */
	[JavaScript(export="false", name="buffer")]
	public class Buffer {
		
		/**
		 * <p>How many bytes will be returned when <code>buffer.inspect()</code> is called. This can
		 * be overridden by user modules.
		 * </p>
		 * <p>Note that this is a property on the buffer module returned by
		 * <code>require(&#39;buffer&#39;)</code>, not on the Buffer global, or a buffer instance.
		 * </p>
		 * 
		 */
		public static var INSPECT_MAX_BYTES:Number;
		
		/**
		 * <p>The size of the buffer in bytes.  Note that this is not necessarily the size
		 * of the contents. <code>length</code> refers to the amount of memory allocated for the
		 * buffer object.  It does not change when the contents of the buffer are changed.
		 * </p>
		 * <pre><code>buf = new Buffer(1234);
		 * console.log(buf.length);
		 * buf.write(&quot;some string&quot;, 0, &quot;ascii&quot;);
		 * console.log(buf.length);
		 * // 1234
		 * // 1234</code></pre>
		 * 
		 */
		public var length:Number;
		
		/**
		 * <p>Writes <code>string</code> to the buffer at <code>offset</code> using the given encoding.
		 * <code>offset</code> defaults to <code>0</code>, <code>encoding</code> defaults to <code>&#39;utf8&#39;</code>. <code>length</code> is
		 * the number of bytes to write. Returns number of octets written. If <code>buffer</code> did
		 * not contain enough space to fit the entire string, it will write a partial
		 * amount of the string. <code>length</code> defaults to <code>buffer.length - offset</code>.
		 * The method will not write partial characters.
		 * </p>
		 * <pre><code>buf = new Buffer(256);
		 * len = buf.write(&#39;\u00bd + \u00bc = \u00be&#39;, 0);
		 * console.log(len + &quot; bytes: &quot; + buf.toString(&#39;utf8&#39;, 0, len));</code></pre>
		 * <p>The number of characters written (which may be different than the number of
		 * bytes written) is set in <code>Buffer._charsWritten</code> and will be overwritten the
		 * next time <code>buf.write()</code> is called.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="write")]
		public static function write1(string:*, offset:*, length:*, encoding:*):void {
		}
		
		/**
		 * <p>Writes <code>string</code> to the buffer at <code>offset</code> using the given encoding.
		 * <code>offset</code> defaults to <code>0</code>, <code>encoding</code> defaults to <code>&#39;utf8&#39;</code>. <code>length</code> is
		 * the number of bytes to write. Returns number of octets written. If <code>buffer</code> did
		 * not contain enough space to fit the entire string, it will write a partial
		 * amount of the string. <code>length</code> defaults to <code>buffer.length - offset</code>.
		 * The method will not write partial characters.
		 * </p>
		 * <pre><code>buf = new Buffer(256);
		 * len = buf.write(&#39;\u00bd + \u00bc = \u00be&#39;, 0);
		 * console.log(len + &quot; bytes: &quot; + buf.toString(&#39;utf8&#39;, 0, len));</code></pre>
		 * <p>The number of characters written (which may be different than the number of
		 * bytes written) is set in <code>Buffer._charsWritten</code> and will be overwritten the
		 * next time <code>buf.write()</code> is called.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="write")]
		public static function write2(string:*, offset:*, length:*, encoding:*):void {
		}
		
		/**
		 * <p>Decodes and returns a string from buffer data encoded with <code>encoding</code>
		 * (defaults to <code>&#39;utf8&#39;</code>) beginning at <code>start</code> (defaults to <code>0</code>) and ending at
		 * <code>end</code> (defaults to <code>buffer.length</code>).
		 * </p>
		 * <p>See <code>buffer.write()</code> example, above.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="toString")]
		public static function toString1(encoding:*, start:*, end:*):void {
		}
		
		/**
		 * <p>Decodes and returns a string from buffer data encoded with <code>encoding</code>
		 * (defaults to <code>&#39;utf8&#39;</code>) beginning at <code>start</code> (defaults to <code>0</code>) and ending at
		 * <code>end</code> (defaults to <code>buffer.length</code>).
		 * </p>
		 * <p>See <code>buffer.write()</code> example, above.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="toString")]
		public static function toString2(encoding:*, start:*, end:*):void {
		}
		
		/**
		 * <p>Does copy between buffers. The source and target regions can be overlapped.
		 * <code>targetStart</code> and <code>sourceStart</code> default to <code>0</code>.
		 * <code>sourceEnd</code> defaults to <code>buffer.length</code>.
		 * </p>
		 * <p>Example: build two Buffers, then copy <code>buf1</code> from byte 16 through byte 19
		 * into <code>buf2</code>, starting at the 8th byte in <code>buf2</code>.
		 * </p>
		 * <pre><code>buf1 = new Buffer(26);
		 * buf2 = new Buffer(26);
		 * for (var i = 0 ; i &lt; 26 ; i++) {
		 * buf1[i] = i + 97; // 97 is ASCII a
		 * buf2[i] = 33; // ASCII !
		 * }
		 * buf1.copy(buf2, 8, 16, 20);
		 * console.log(buf2.toString(&#39;ascii&#39;, 0, 25));
		 * // !!!!!!!!qrst!!!!!!!!!!!!!</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="copy")]
		public static function copy1(targetBuffer:*, targetStart:*, sourceStart:*, sourceEnd:*):void {
		}
		
		/**
		 * <p>Does copy between buffers. The source and target regions can be overlapped.
		 * <code>targetStart</code> and <code>sourceStart</code> default to <code>0</code>.
		 * <code>sourceEnd</code> defaults to <code>buffer.length</code>.
		 * </p>
		 * <p>Example: build two Buffers, then copy <code>buf1</code> from byte 16 through byte 19
		 * into <code>buf2</code>, starting at the 8th byte in <code>buf2</code>.
		 * </p>
		 * <pre><code>buf1 = new Buffer(26);
		 * buf2 = new Buffer(26);
		 * for (var i = 0 ; i &lt; 26 ; i++) {
		 * buf1[i] = i + 97; // 97 is ASCII a
		 * buf2[i] = 33; // ASCII !
		 * }
		 * buf1.copy(buf2, 8, 16, 20);
		 * console.log(buf2.toString(&#39;ascii&#39;, 0, 25));
		 * // !!!!!!!!qrst!!!!!!!!!!!!!</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="copy")]
		public static function copy2(targetBuffer:*, targetStart:*, sourceStart:*, sourceEnd:*):void {
		}
		
		/**
		 * <p>Returns a new buffer which references the same memory as the old, but offset
		 * and cropped by the <code>start</code> (defaults to <code>0</code>) and <code>end</code> (defaults to
		 * <code>buffer.length</code>) indexes.
		 * </p>
		 * <p><strong>Modifying the new buffer slice will modify memory in the original buffer!</strong>
		 * </p>
		 * <p>Example: build a Buffer with the ASCII alphabet, take a slice, then modify one
		 * byte from the original Buffer.
		 * </p>
		 * <pre><code>var buf1 = new Buffer(26);
		 * for (var i = 0 ; i &lt; 26 ; i++) {
		 * buf1[i] = i + 97; // 97 is ASCII a
		 * }
		 * var buf2 = buf1.slice(0, 3);
		 * console.log(buf2.toString(&#39;ascii&#39;, 0, buf2.length));
		 * buf1[0] = 33;
		 * console.log(buf2.toString(&#39;ascii&#39;, 0, buf2.length));
		 * // abc
		 * // !bc</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="slice")]
		public static function slice1(start:*, end:*):void {
		}
		
		/**
		 * <p>Returns a new buffer which references the same memory as the old, but offset
		 * and cropped by the <code>start</code> (defaults to <code>0</code>) and <code>end</code> (defaults to
		 * <code>buffer.length</code>) indexes.
		 * </p>
		 * <p><strong>Modifying the new buffer slice will modify memory in the original buffer!</strong>
		 * </p>
		 * <p>Example: build a Buffer with the ASCII alphabet, take a slice, then modify one
		 * byte from the original Buffer.
		 * </p>
		 * <pre><code>var buf1 = new Buffer(26);
		 * for (var i = 0 ; i &lt; 26 ; i++) {
		 * buf1[i] = i + 97; // 97 is ASCII a
		 * }
		 * var buf2 = buf1.slice(0, 3);
		 * console.log(buf2.toString(&#39;ascii&#39;, 0, buf2.length));
		 * buf1[0] = 33;
		 * console.log(buf2.toString(&#39;ascii&#39;, 0, buf2.length));
		 * // abc
		 * // !bc</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="slice")]
		public static function slice2(start:*, end:*):void {
		}
		
		/**
		 * <p>Reads an unsigned 8 bit integer from the buffer at the specified offset.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf[0] = 0x3;
		 * buf[1] = 0x4;
		 * buf[2] = 0x23;
		 * buf[3] = 0x42;
		 * for (ii = 0; ii &lt; buf.length; ii++) {
		 * console.log(buf.readUInt8(ii));
		 * }
		 * // 0x3
		 * // 0x4
		 * // 0x23
		 * // 0x42</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readUInt8")]
		public static function readUInt81(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads an unsigned 8 bit integer from the buffer at the specified offset.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf[0] = 0x3;
		 * buf[1] = 0x4;
		 * buf[2] = 0x23;
		 * buf[3] = 0x42;
		 * for (ii = 0; ii &lt; buf.length; ii++) {
		 * console.log(buf.readUInt8(ii));
		 * }
		 * // 0x3
		 * // 0x4
		 * // 0x23
		 * // 0x42</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readUInt8")]
		public static function readUInt82(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads an unsigned 16 bit integer from the buffer at the specified offset with
		 * specified endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf[0] = 0x3;
		 * buf[1] = 0x4;
		 * buf[2] = 0x23;
		 * buf[3] = 0x42;
		 * console.log(buf.readUInt16BE(0));
		 * console.log(buf.readUInt16LE(0));
		 * console.log(buf.readUInt16BE(1));
		 * console.log(buf.readUInt16LE(1));
		 * console.log(buf.readUInt16BE(2));
		 * console.log(buf.readUInt16LE(2));
		 * // 0x0304
		 * // 0x0403
		 * // 0x0423
		 * // 0x2304
		 * // 0x2342
		 * // 0x4223</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readUInt16LE")]
		public static function readUInt16LE1(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads an unsigned 16 bit integer from the buffer at the specified offset with
		 * specified endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf[0] = 0x3;
		 * buf[1] = 0x4;
		 * buf[2] = 0x23;
		 * buf[3] = 0x42;
		 * console.log(buf.readUInt16BE(0));
		 * console.log(buf.readUInt16LE(0));
		 * console.log(buf.readUInt16BE(1));
		 * console.log(buf.readUInt16LE(1));
		 * console.log(buf.readUInt16BE(2));
		 * console.log(buf.readUInt16LE(2));
		 * // 0x0304
		 * // 0x0403
		 * // 0x0423
		 * // 0x2304
		 * // 0x2342
		 * // 0x4223</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readUInt16LE")]
		public static function readUInt16LE2(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads an unsigned 16 bit integer from the buffer at the specified offset with
		 * specified endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf[0] = 0x3;
		 * buf[1] = 0x4;
		 * buf[2] = 0x23;
		 * buf[3] = 0x42;
		 * console.log(buf.readUInt16BE(0));
		 * console.log(buf.readUInt16LE(0));
		 * console.log(buf.readUInt16BE(1));
		 * console.log(buf.readUInt16LE(1));
		 * console.log(buf.readUInt16BE(2));
		 * console.log(buf.readUInt16LE(2));
		 * // 0x0304
		 * // 0x0403
		 * // 0x0423
		 * // 0x2304
		 * // 0x2342
		 * // 0x4223</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readUInt16LE")]
		public static function readUInt16LE3(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads an unsigned 16 bit integer from the buffer at the specified offset with
		 * specified endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf[0] = 0x3;
		 * buf[1] = 0x4;
		 * buf[2] = 0x23;
		 * buf[3] = 0x42;
		 * console.log(buf.readUInt16BE(0));
		 * console.log(buf.readUInt16LE(0));
		 * console.log(buf.readUInt16BE(1));
		 * console.log(buf.readUInt16LE(1));
		 * console.log(buf.readUInt16BE(2));
		 * console.log(buf.readUInt16LE(2));
		 * // 0x0304
		 * // 0x0403
		 * // 0x0423
		 * // 0x2304
		 * // 0x2342
		 * // 0x4223</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readUInt16BE")]
		public static function readUInt16BE1(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads an unsigned 16 bit integer from the buffer at the specified offset with
		 * specified endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf[0] = 0x3;
		 * buf[1] = 0x4;
		 * buf[2] = 0x23;
		 * buf[3] = 0x42;
		 * console.log(buf.readUInt16BE(0));
		 * console.log(buf.readUInt16LE(0));
		 * console.log(buf.readUInt16BE(1));
		 * console.log(buf.readUInt16LE(1));
		 * console.log(buf.readUInt16BE(2));
		 * console.log(buf.readUInt16LE(2));
		 * // 0x0304
		 * // 0x0403
		 * // 0x0423
		 * // 0x2304
		 * // 0x2342
		 * // 0x4223</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readUInt16BE")]
		public static function readUInt16BE2(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads an unsigned 32 bit integer from the buffer at the specified offset with
		 * specified endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf[0] = 0x3;
		 * buf[1] = 0x4;
		 * buf[2] = 0x23;
		 * buf[3] = 0x42;
		 * console.log(buf.readUInt32BE(0));
		 * console.log(buf.readUInt32LE(0));
		 * // 0x03042342
		 * // 0x42230403</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readUInt32LE")]
		public static function readUInt32LE1(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads an unsigned 32 bit integer from the buffer at the specified offset with
		 * specified endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf[0] = 0x3;
		 * buf[1] = 0x4;
		 * buf[2] = 0x23;
		 * buf[3] = 0x42;
		 * console.log(buf.readUInt32BE(0));
		 * console.log(buf.readUInt32LE(0));
		 * // 0x03042342
		 * // 0x42230403</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readUInt32LE")]
		public static function readUInt32LE2(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads an unsigned 32 bit integer from the buffer at the specified offset with
		 * specified endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf[0] = 0x3;
		 * buf[1] = 0x4;
		 * buf[2] = 0x23;
		 * buf[3] = 0x42;
		 * console.log(buf.readUInt32BE(0));
		 * console.log(buf.readUInt32LE(0));
		 * // 0x03042342
		 * // 0x42230403</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readUInt32LE")]
		public static function readUInt32LE3(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads an unsigned 32 bit integer from the buffer at the specified offset with
		 * specified endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf[0] = 0x3;
		 * buf[1] = 0x4;
		 * buf[2] = 0x23;
		 * buf[3] = 0x42;
		 * console.log(buf.readUInt32BE(0));
		 * console.log(buf.readUInt32LE(0));
		 * // 0x03042342
		 * // 0x42230403</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readUInt32BE")]
		public static function readUInt32BE1(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads an unsigned 32 bit integer from the buffer at the specified offset with
		 * specified endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf[0] = 0x3;
		 * buf[1] = 0x4;
		 * buf[2] = 0x23;
		 * buf[3] = 0x42;
		 * console.log(buf.readUInt32BE(0));
		 * console.log(buf.readUInt32LE(0));
		 * // 0x03042342
		 * // 0x42230403</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readUInt32BE")]
		public static function readUInt32BE2(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a signed 8 bit integer from the buffer at the specified offset.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.readUInt8</code>, except buffer contents are treated as two&#39;s
		 * complement signed values.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="readInt8")]
		public static function readInt81(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a signed 8 bit integer from the buffer at the specified offset.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.readUInt8</code>, except buffer contents are treated as two&#39;s
		 * complement signed values.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="readInt8")]
		public static function readInt82(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a signed 16 bit integer from the buffer at the specified offset with
		 * specified endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.readUInt16*</code>, except buffer contents are treated as two&#39;s
		 * complement signed values.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="readInt16LE")]
		public static function readInt16LE1(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a signed 16 bit integer from the buffer at the specified offset with
		 * specified endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.readUInt16*</code>, except buffer contents are treated as two&#39;s
		 * complement signed values.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="readInt16LE")]
		public static function readInt16LE2(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a signed 16 bit integer from the buffer at the specified offset with
		 * specified endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.readUInt16*</code>, except buffer contents are treated as two&#39;s
		 * complement signed values.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="readInt16LE")]
		public static function readInt16LE3(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a signed 16 bit integer from the buffer at the specified offset with
		 * specified endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.readUInt16*</code>, except buffer contents are treated as two&#39;s
		 * complement signed values.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="readInt16BE")]
		public static function readInt16BE1(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a signed 16 bit integer from the buffer at the specified offset with
		 * specified endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.readUInt16*</code>, except buffer contents are treated as two&#39;s
		 * complement signed values.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="readInt16BE")]
		public static function readInt16BE2(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a signed 32 bit integer from the buffer at the specified offset with
		 * specified endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.readUInt32*</code>, except buffer contents are treated as two&#39;s
		 * complement signed values.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="readInt32LE")]
		public static function readInt32LE1(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a signed 32 bit integer from the buffer at the specified offset with
		 * specified endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.readUInt32*</code>, except buffer contents are treated as two&#39;s
		 * complement signed values.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="readInt32LE")]
		public static function readInt32LE2(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a signed 32 bit integer from the buffer at the specified offset with
		 * specified endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.readUInt32*</code>, except buffer contents are treated as two&#39;s
		 * complement signed values.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="readInt32LE")]
		public static function readInt32LE3(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a signed 32 bit integer from the buffer at the specified offset with
		 * specified endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.readUInt32*</code>, except buffer contents are treated as two&#39;s
		 * complement signed values.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="readInt32BE")]
		public static function readInt32BE1(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a signed 32 bit integer from the buffer at the specified offset with
		 * specified endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.readUInt32*</code>, except buffer contents are treated as two&#39;s
		 * complement signed values.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="readInt32BE")]
		public static function readInt32BE2(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a 32 bit float from the buffer at the specified offset with specified
		 * endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf[0] = 0x00;
		 * buf[1] = 0x00;
		 * buf[2] = 0x80;
		 * buf[3] = 0x3f;
		 * console.log(buf.readFloatLE(0));
		 * // 0x01</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readFloatLE")]
		public static function readFloatLE1(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a 32 bit float from the buffer at the specified offset with specified
		 * endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf[0] = 0x00;
		 * buf[1] = 0x00;
		 * buf[2] = 0x80;
		 * buf[3] = 0x3f;
		 * console.log(buf.readFloatLE(0));
		 * // 0x01</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readFloatLE")]
		public static function readFloatLE2(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a 32 bit float from the buffer at the specified offset with specified
		 * endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf[0] = 0x00;
		 * buf[1] = 0x00;
		 * buf[2] = 0x80;
		 * buf[3] = 0x3f;
		 * console.log(buf.readFloatLE(0));
		 * // 0x01</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readFloatLE")]
		public static function readFloatLE3(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a 32 bit float from the buffer at the specified offset with specified
		 * endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf[0] = 0x00;
		 * buf[1] = 0x00;
		 * buf[2] = 0x80;
		 * buf[3] = 0x3f;
		 * console.log(buf.readFloatLE(0));
		 * // 0x01</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readFloatBE")]
		public static function readFloatBE1(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a 32 bit float from the buffer at the specified offset with specified
		 * endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf[0] = 0x00;
		 * buf[1] = 0x00;
		 * buf[2] = 0x80;
		 * buf[3] = 0x3f;
		 * console.log(buf.readFloatLE(0));
		 * // 0x01</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readFloatBE")]
		public static function readFloatBE2(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a 64 bit double from the buffer at the specified offset with specified
		 * endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(8);
		 * buf[0] = 0x55;
		 * buf[1] = 0x55;
		 * buf[2] = 0x55;
		 * buf[3] = 0x55;
		 * buf[4] = 0x55;
		 * buf[5] = 0x55;
		 * buf[6] = 0xd5;
		 * buf[7] = 0x3f;
		 * console.log(buf.readDoubleLE(0));
		 * // 0.3333333333333333</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readDoubleLE")]
		public static function readDoubleLE1(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a 64 bit double from the buffer at the specified offset with specified
		 * endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(8);
		 * buf[0] = 0x55;
		 * buf[1] = 0x55;
		 * buf[2] = 0x55;
		 * buf[3] = 0x55;
		 * buf[4] = 0x55;
		 * buf[5] = 0x55;
		 * buf[6] = 0xd5;
		 * buf[7] = 0x3f;
		 * console.log(buf.readDoubleLE(0));
		 * // 0.3333333333333333</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readDoubleLE")]
		public static function readDoubleLE2(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a 64 bit double from the buffer at the specified offset with specified
		 * endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(8);
		 * buf[0] = 0x55;
		 * buf[1] = 0x55;
		 * buf[2] = 0x55;
		 * buf[3] = 0x55;
		 * buf[4] = 0x55;
		 * buf[5] = 0x55;
		 * buf[6] = 0xd5;
		 * buf[7] = 0x3f;
		 * console.log(buf.readDoubleLE(0));
		 * // 0.3333333333333333</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readDoubleLE")]
		public static function readDoubleLE3(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a 64 bit double from the buffer at the specified offset with specified
		 * endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(8);
		 * buf[0] = 0x55;
		 * buf[1] = 0x55;
		 * buf[2] = 0x55;
		 * buf[3] = 0x55;
		 * buf[4] = 0x55;
		 * buf[5] = 0x55;
		 * buf[6] = 0xd5;
		 * buf[7] = 0x3f;
		 * console.log(buf.readDoubleLE(0));
		 * // 0.3333333333333333</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readDoubleBE")]
		public static function readDoubleBE1(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Reads a 64 bit double from the buffer at the specified offset with specified
		 * endian format.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>offset</code>. This means that <code>offset</code>
		 * may be beyond the end of the buffer. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(8);
		 * buf[0] = 0x55;
		 * buf[1] = 0x55;
		 * buf[2] = 0x55;
		 * buf[3] = 0x55;
		 * buf[4] = 0x55;
		 * buf[5] = 0x55;
		 * buf[6] = 0xd5;
		 * buf[7] = 0x3f;
		 * console.log(buf.readDoubleLE(0));
		 * // 0.3333333333333333</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="readDoubleBE")]
		public static function readDoubleBE2(offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset. Note, <code>value</code> must be a
		 * valid unsigned 8 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf.writeUInt8(0x3, 0);
		 * buf.writeUInt8(0x4, 1);
		 * buf.writeUInt8(0x23, 2);
		 * buf.writeUInt8(0x42, 3);
		 * console.log(buf);
		 * // &lt;Buffer 03 04 23 42&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeUInt8")]
		public static function writeUInt81(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset. Note, <code>value</code> must be a
		 * valid unsigned 8 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf.writeUInt8(0x3, 0);
		 * buf.writeUInt8(0x4, 1);
		 * buf.writeUInt8(0x23, 2);
		 * buf.writeUInt8(0x42, 3);
		 * console.log(buf);
		 * // &lt;Buffer 03 04 23 42&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeUInt8")]
		public static function writeUInt82(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid unsigned 16 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf.writeUInt16BE(0xdead, 0);
		 * buf.writeUInt16BE(0xbeef, 2);
		 * console.log(buf);
		 * buf.writeUInt16LE(0xdead, 0);
		 * buf.writeUInt16LE(0xbeef, 2);
		 * console.log(buf);
		 * // &lt;Buffer de ad be ef&gt;
		 * // &lt;Buffer ad de ef be&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeUInt16LE")]
		public static function writeUInt16LE1(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid unsigned 16 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf.writeUInt16BE(0xdead, 0);
		 * buf.writeUInt16BE(0xbeef, 2);
		 * console.log(buf);
		 * buf.writeUInt16LE(0xdead, 0);
		 * buf.writeUInt16LE(0xbeef, 2);
		 * console.log(buf);
		 * // &lt;Buffer de ad be ef&gt;
		 * // &lt;Buffer ad de ef be&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeUInt16LE")]
		public static function writeUInt16LE2(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid unsigned 16 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf.writeUInt16BE(0xdead, 0);
		 * buf.writeUInt16BE(0xbeef, 2);
		 * console.log(buf);
		 * buf.writeUInt16LE(0xdead, 0);
		 * buf.writeUInt16LE(0xbeef, 2);
		 * console.log(buf);
		 * // &lt;Buffer de ad be ef&gt;
		 * // &lt;Buffer ad de ef be&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeUInt16LE")]
		public static function writeUInt16LE3(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid unsigned 16 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf.writeUInt16BE(0xdead, 0);
		 * buf.writeUInt16BE(0xbeef, 2);
		 * console.log(buf);
		 * buf.writeUInt16LE(0xdead, 0);
		 * buf.writeUInt16LE(0xbeef, 2);
		 * console.log(buf);
		 * // &lt;Buffer de ad be ef&gt;
		 * // &lt;Buffer ad de ef be&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeUInt16BE")]
		public static function writeUInt16BE1(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid unsigned 16 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf.writeUInt16BE(0xdead, 0);
		 * buf.writeUInt16BE(0xbeef, 2);
		 * console.log(buf);
		 * buf.writeUInt16LE(0xdead, 0);
		 * buf.writeUInt16LE(0xbeef, 2);
		 * console.log(buf);
		 * // &lt;Buffer de ad be ef&gt;
		 * // &lt;Buffer ad de ef be&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeUInt16BE")]
		public static function writeUInt16BE2(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid unsigned 32 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf.writeUInt32BE(0xfeedface, 0);
		 * console.log(buf);
		 * buf.writeUInt32LE(0xfeedface, 0);
		 * console.log(buf);
		 * // &lt;Buffer fe ed fa ce&gt;
		 * // &lt;Buffer ce fa ed fe&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeUInt32LE")]
		public static function writeUInt32LE1(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid unsigned 32 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf.writeUInt32BE(0xfeedface, 0);
		 * console.log(buf);
		 * buf.writeUInt32LE(0xfeedface, 0);
		 * console.log(buf);
		 * // &lt;Buffer fe ed fa ce&gt;
		 * // &lt;Buffer ce fa ed fe&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeUInt32LE")]
		public static function writeUInt32LE2(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid unsigned 32 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf.writeUInt32BE(0xfeedface, 0);
		 * console.log(buf);
		 * buf.writeUInt32LE(0xfeedface, 0);
		 * console.log(buf);
		 * // &lt;Buffer fe ed fa ce&gt;
		 * // &lt;Buffer ce fa ed fe&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeUInt32LE")]
		public static function writeUInt32LE3(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid unsigned 32 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf.writeUInt32BE(0xfeedface, 0);
		 * console.log(buf);
		 * buf.writeUInt32LE(0xfeedface, 0);
		 * console.log(buf);
		 * // &lt;Buffer fe ed fa ce&gt;
		 * // &lt;Buffer ce fa ed fe&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeUInt32BE")]
		public static function writeUInt32BE1(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid unsigned 32 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf.writeUInt32BE(0xfeedface, 0);
		 * console.log(buf);
		 * buf.writeUInt32LE(0xfeedface, 0);
		 * console.log(buf);
		 * // &lt;Buffer fe ed fa ce&gt;
		 * // &lt;Buffer ce fa ed fe&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeUInt32BE")]
		public static function writeUInt32BE2(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset. Note, <code>value</code> must be a
		 * valid signed 8 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.writeUInt8</code>, except value is written out as a two&#39;s complement
		 * signed integer into <code>buffer</code>.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="writeInt8")]
		public static function writeInt81(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset. Note, <code>value</code> must be a
		 * valid signed 8 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.writeUInt8</code>, except value is written out as a two&#39;s complement
		 * signed integer into <code>buffer</code>.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="writeInt8")]
		public static function writeInt82(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid signed 16 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.writeUInt16*</code>, except value is written out as a two&#39;s
		 * complement signed integer into <code>buffer</code>.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="writeInt16LE")]
		public static function writeInt16LE1(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid signed 16 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.writeUInt16*</code>, except value is written out as a two&#39;s
		 * complement signed integer into <code>buffer</code>.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="writeInt16LE")]
		public static function writeInt16LE2(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid signed 16 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.writeUInt16*</code>, except value is written out as a two&#39;s
		 * complement signed integer into <code>buffer</code>.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="writeInt16LE")]
		public static function writeInt16LE3(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid signed 16 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.writeUInt16*</code>, except value is written out as a two&#39;s
		 * complement signed integer into <code>buffer</code>.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="writeInt16BE")]
		public static function writeInt16BE1(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid signed 16 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.writeUInt16*</code>, except value is written out as a two&#39;s
		 * complement signed integer into <code>buffer</code>.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="writeInt16BE")]
		public static function writeInt16BE2(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid signed 32 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.writeUInt32*</code>, except value is written out as a two&#39;s
		 * complement signed integer into <code>buffer</code>.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="writeInt32LE")]
		public static function writeInt32LE1(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid signed 32 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.writeUInt32*</code>, except value is written out as a two&#39;s
		 * complement signed integer into <code>buffer</code>.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="writeInt32LE")]
		public static function writeInt32LE2(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid signed 32 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.writeUInt32*</code>, except value is written out as a two&#39;s
		 * complement signed integer into <code>buffer</code>.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="writeInt32LE")]
		public static function writeInt32LE3(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid signed 32 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.writeUInt32*</code>, except value is written out as a two&#39;s
		 * complement signed integer into <code>buffer</code>.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="writeInt32BE")]
		public static function writeInt32BE1(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid signed 32 bit integer.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Works as <code>buffer.writeUInt32*</code>, except value is written out as a two&#39;s
		 * complement signed integer into <code>buffer</code>.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="writeInt32BE")]
		public static function writeInt32BE2(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid 32 bit float.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf.writeFloatBE(0xcafebabe, 0);
		 * console.log(buf);
		 * buf.writeFloatLE(0xcafebabe, 0);
		 * console.log(buf);
		 * // &lt;Buffer 4f 4a fe bb&gt;
		 * // &lt;Buffer bb fe 4a 4f&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeFloatLE")]
		public static function writeFloatLE1(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid 32 bit float.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf.writeFloatBE(0xcafebabe, 0);
		 * console.log(buf);
		 * buf.writeFloatLE(0xcafebabe, 0);
		 * console.log(buf);
		 * // &lt;Buffer 4f 4a fe bb&gt;
		 * // &lt;Buffer bb fe 4a 4f&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeFloatLE")]
		public static function writeFloatLE2(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid 32 bit float.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf.writeFloatBE(0xcafebabe, 0);
		 * console.log(buf);
		 * buf.writeFloatLE(0xcafebabe, 0);
		 * console.log(buf);
		 * // &lt;Buffer 4f 4a fe bb&gt;
		 * // &lt;Buffer bb fe 4a 4f&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeFloatLE")]
		public static function writeFloatLE3(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid 32 bit float.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf.writeFloatBE(0xcafebabe, 0);
		 * console.log(buf);
		 * buf.writeFloatLE(0xcafebabe, 0);
		 * console.log(buf);
		 * // &lt;Buffer 4f 4a fe bb&gt;
		 * // &lt;Buffer bb fe 4a 4f&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeFloatBE")]
		public static function writeFloatBE1(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid 32 bit float.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(4);
		 * buf.writeFloatBE(0xcafebabe, 0);
		 * console.log(buf);
		 * buf.writeFloatLE(0xcafebabe, 0);
		 * console.log(buf);
		 * // &lt;Buffer 4f 4a fe bb&gt;
		 * // &lt;Buffer bb fe 4a 4f&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeFloatBE")]
		public static function writeFloatBE2(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid 64 bit double.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(8);
		 * buf.writeDoubleBE(0xdeadbeefcafebabe, 0);
		 * console.log(buf);
		 * buf.writeDoubleLE(0xdeadbeefcafebabe, 0);
		 * console.log(buf);
		 * // &lt;Buffer 43 eb d5 b7 dd f9 5f d7&gt;
		 * // &lt;Buffer d7 5f f9 dd b7 d5 eb 43&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeDoubleLE")]
		public static function writeDoubleLE1(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid 64 bit double.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(8);
		 * buf.writeDoubleBE(0xdeadbeefcafebabe, 0);
		 * console.log(buf);
		 * buf.writeDoubleLE(0xdeadbeefcafebabe, 0);
		 * console.log(buf);
		 * // &lt;Buffer 43 eb d5 b7 dd f9 5f d7&gt;
		 * // &lt;Buffer d7 5f f9 dd b7 d5 eb 43&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeDoubleLE")]
		public static function writeDoubleLE2(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid 64 bit double.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(8);
		 * buf.writeDoubleBE(0xdeadbeefcafebabe, 0);
		 * console.log(buf);
		 * buf.writeDoubleLE(0xdeadbeefcafebabe, 0);
		 * console.log(buf);
		 * // &lt;Buffer 43 eb d5 b7 dd f9 5f d7&gt;
		 * // &lt;Buffer d7 5f f9 dd b7 d5 eb 43&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeDoubleLE")]
		public static function writeDoubleLE3(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid 64 bit double.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(8);
		 * buf.writeDoubleBE(0xdeadbeefcafebabe, 0);
		 * console.log(buf);
		 * buf.writeDoubleLE(0xdeadbeefcafebabe, 0);
		 * console.log(buf);
		 * // &lt;Buffer 43 eb d5 b7 dd f9 5f d7&gt;
		 * // &lt;Buffer d7 5f f9 dd b7 d5 eb 43&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeDoubleBE")]
		public static function writeDoubleBE1(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Writes <code>value</code> to the buffer at the specified offset with specified endian
		 * format. Note, <code>value</code> must be a valid 64 bit double.
		 * </p>
		 * <p>Set <code>noAssert</code> to true to skip validation of <code>value</code> and <code>offset</code>. This means
		 * that <code>value</code> may be too large for the specific function and <code>offset</code> may be
		 * beyond the end of the buffer leading to the values being silently dropped. This
		 * should not be used unless you are certain of correctness. Defaults to <code>false</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var buf = new Buffer(8);
		 * buf.writeDoubleBE(0xdeadbeefcafebabe, 0);
		 * console.log(buf);
		 * buf.writeDoubleLE(0xdeadbeefcafebabe, 0);
		 * console.log(buf);
		 * // &lt;Buffer 43 eb d5 b7 dd f9 5f d7&gt;
		 * // &lt;Buffer d7 5f f9 dd b7 d5 eb 43&gt;</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="writeDoubleBE")]
		public static function writeDoubleBE2(value:*, offset:*, noAssert:*):void {
		}
		
		/**
		 * <p>Fills the buffer with the specified value. If the <code>offset</code> (defaults to <code>0</code>)
		 * and <code>end</code> (defaults to <code>buffer.length</code>) are not given it will fill the entire
		 * buffer.
		 * </p>
		 * <pre><code>var b = new Buffer(50);
		 * b.fill(&quot;h&quot;);</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="fill")]
		public static function fill1(value:*, offset:*, end:*):void {
		}
		
		/**
		 * <p>Fills the buffer with the specified value. If the <code>offset</code> (defaults to <code>0</code>)
		 * and <code>end</code> (defaults to <code>buffer.length</code>) are not given it will fill the entire
		 * buffer.
		 * </p>
		 * <pre><code>var b = new Buffer(50);
		 * b.fill(&quot;h&quot;);</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="fill")]
		public static function fill2(value:*, offset:*, end:*):void {
		}
		
		public function write(...params):* {
			return null;
		}
		
		public function toString(...params):* {
			return null;
		}
		
		public function copy(...params):* {
			return null;
		}
		
		public function slice(...params):* {
			return null;
		}
		
		public function readUInt8(...params):* {
			return null;
		}
		
		public function readUInt16LE(...params):* {
			return null;
		}
		
		public function readUInt16BE(...params):* {
			return null;
		}
		
		public function readUInt32LE(...params):* {
			return null;
		}
		
		public function readUInt32BE(...params):* {
			return null;
		}
		
		public function readInt8(...params):* {
			return null;
		}
		
		public function readInt16LE(...params):* {
			return null;
		}
		
		public function readInt16BE(...params):* {
			return null;
		}
		
		public function readInt32LE(...params):* {
			return null;
		}
		
		public function readInt32BE(...params):* {
			return null;
		}
		
		public function readFloatLE(...params):* {
			return null;
		}
		
		public function readFloatBE(...params):* {
			return null;
		}
		
		public function readDoubleLE(...params):* {
			return null;
		}
		
		public function readDoubleBE(...params):* {
			return null;
		}
		
		public function writeUInt8(...params):* {
			return null;
		}
		
		public function writeUInt16LE(...params):* {
			return null;
		}
		
		public function writeUInt16BE(...params):* {
			return null;
		}
		
		public function writeUInt32LE(...params):* {
			return null;
		}
		
		public function writeUInt32BE(...params):* {
			return null;
		}
		
		public function writeInt8(...params):* {
			return null;
		}
		
		public function writeInt16LE(...params):* {
			return null;
		}
		
		public function writeInt16BE(...params):* {
			return null;
		}
		
		public function writeInt32LE(...params):* {
			return null;
		}
		
		public function writeInt32BE(...params):* {
			return null;
		}
		
		public function writeFloatLE(...params):* {
			return null;
		}
		
		public function writeFloatBE(...params):* {
			return null;
		}
		
		public function writeDoubleLE(...params):* {
			return null;
		}
		
		public function writeDoubleBE(...params):* {
			return null;
		}
		
		public function fill(...params):* {
			return null;
		}
	}
}
