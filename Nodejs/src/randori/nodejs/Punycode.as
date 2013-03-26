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
	 * Generated from file: punycode.json
	 */
	[JavaScript(export="false", name="punycode")]
	public class Punycode {
		
		public static var ucs2:Object;
		
		/**
		 * <p>A string representing the current Punycode.js version number.
		 * </p>
		 * 
		 */
		public static var version:String;
		
		/**
		 * <p>Converts a Punycode string of ASCII code points to a string of Unicode code
		 * points.
		 * </p>
		 * <pre><code>// decode domain name parts
		 * punycode.decode(&#39;maana-pta&#39;); // &#39;mañana&#39;
		 * punycode.decode(&#39;--dqo34k&#39;); // &#39;☃-⌘&#39;</code></pre>
		 * 
		 */
		public static function decode(string:*):void {
		}
		
		/**
		 * <p>Converts a string of Unicode code points to a Punycode string of ASCII code
		 * points.
		 * </p>
		 * <pre><code>// encode domain name parts
		 * punycode.encode(&#39;mañana&#39;); // &#39;maana-pta&#39;
		 * punycode.encode(&#39;☃-⌘&#39;); // &#39;--dqo34k&#39;</code></pre>
		 * 
		 */
		public static function encode(string:*):void {
		}
		
		/**
		 * <p>Converts a Punycode string representing a domain name to Unicode. Only the
		 * Punycoded parts of the domain name will be converted, i.e. it doesn&#39;t matter if
		 * you call it on a string that has already been converted to Unicode.
		 * </p>
		 * <pre><code>// decode domain names
		 * punycode.toUnicode(&#39;xn--maana-pta.com&#39;); // &#39;mañana.com&#39;
		 * punycode.toUnicode(&#39;xn----dqo34k.com&#39;); // &#39;☃-⌘.com&#39;</code></pre>
		 * 
		 */
		public static function toUnicode(domain:*):void {
		}
		
		/**
		 * <p>Converts a Unicode string representing a domain name to Punycode. Only the
		 * non-ASCII parts of the domain name will be converted, i.e. it doesn&#39;t matter if
		 * you call it with a domain that&#39;s already in ASCII.
		 * </p>
		 * <pre><code>// encode domain names
		 * punycode.toASCII(&#39;mañana.com&#39;); // &#39;xn--maana-pta.com&#39;
		 * punycode.toASCII(&#39;☃-⌘.com&#39;); // &#39;xn----dqo34k.com&#39;</code></pre>
		 * 
		 */
		public static function toASCII(domain:*):void {
		}
	}
}
