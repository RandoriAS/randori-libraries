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
	 * Generated from file: querystring.json
	 */
	[JavaScript(export="false", name="querystring")]
	public class Querystring {
		
		/**
		 * <p>The escape function used by <code>querystring.stringify</code>,
		 * provided so that it could be overridden if necessary.
		 * </p>
		 * 
		 */
		public static var escape:Function;
		
		/**
		 * <p>The unescape function used by <code>querystring.parse</code>,
		 * provided so that it could be overridden if necessary.
		 * </p>
		 * 
		 */
		public static var unescape:Function;
		
		/**
		 * <p>Serialize an object to a query string.
		 * Optionally override the default separator (<code>&#39;&amp;&#39;</code>) and assignment (<code>&#39;=&#39;</code>)
		 * characters.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>querystring.stringify({ foo: &#39;bar&#39;, baz: [&#39;qux&#39;, &#39;quux&#39;], corge: &#39;&#39; })
		 * // returns
		 * &#39;foo=bar&amp;baz=qux&amp;baz=quux&amp;corge=&#39;
		 * querystring.stringify({foo: &#39;bar&#39;, baz: &#39;qux&#39;}, &#39;;&#39;, &#39;:&#39;)
		 * // returns
		 * &#39;foo:bar;baz:qux&#39;</code></pre>
		 * 
		 */
		public static function stringify(obj:*, sep:*, eq:*):void {
		}
		
		/**
		 * <p>Deserialize a query string to an object.
		 * Optionally override the default separator (<code>&#39;&amp;&#39;</code>) and assignment (<code>&#39;=&#39;</code>)
		 * characters.
		 * </p>
		 * <p>Options object may contain <code>maxKeys</code> property (equal to 1000 by default), it&#39;ll
		 * be used to limit processed keys. Set it to 0 to remove key count limitation.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>querystring.parse(&#39;foo=bar&amp;baz=qux&amp;baz=quux&amp;corge&#39;)
		 * // returns
		 * { foo: &#39;bar&#39;, baz: [&#39;qux&#39;, &#39;quux&#39;], corge: &#39;&#39; }</code></pre>
		 * 
		 */
		public static function parse(str:*, sep:*, eq:*, options:*):void {
		}
	}
}
