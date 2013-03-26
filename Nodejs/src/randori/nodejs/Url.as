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
	 * Generated from file: url.json
	 */
	[JavaScript(export="false", name="url")]
	public class Url {
		
		/**
		 * <p>Take a URL string, and return an object.
		 * </p>
		 * <p>Pass <code>true</code> as the second argument to also parse
		 * the query string using the <code>querystring</code> module.
		 * Defaults to <code>false</code>.
		 * </p>
		 * <p>Pass <code>true</code> as the third argument to treat <code>//foo/bar</code> as
		 * <code>{ host: &#39;foo&#39;, pathname: &#39;/bar&#39; }</code> rather than
		 * <code>{ pathname: &#39;//foo/bar&#39; }</code>. Defaults to <code>false</code>.
		 * </p>
		 * 
		 */
		public static function parse(urlStr:*, parseQueryString:*, slashesDenoteHost:*):void {
		}
		
		/**
		 * <p>Take a parsed URL object, and return a formatted URL string.
		 * </p>
		 * <ul>
		 * <li><code>href</code> will be ignored.</li>
		 * <li><code>protocol</code>is treated the same with or without the trailing <code>:</code> (colon).<ul>
		 * <li>The protocols <code>http</code>, <code>https</code>, <code>ftp</code>, <code>gopher</code>, <code>file</code> will be
		 * postfixed with <code>://</code> (colon-slash-slash).</li>
		 * <li>All other protocols <code>mailto</code>, <code>xmpp</code>, <code>aim</code>, <code>sftp</code>, <code>foo</code>, etc will
		 * be postfixed with <code>:</code> (colon)</li>
		 * </ul>
		 * </li>
		 * <li><code>auth</code> will be used if present.</li>
		 * <li><code>hostname</code> will only be used if <code>host</code> is absent.</li>
		 * <li><code>port</code> will only be used if <code>host</code> is absent.</li>
		 * <li><code>host</code> will be used in place of <code>hostname</code> and <code>port</code></li>
		 * <li><code>pathname</code> is treated the same with or without the leading <code>/</code> (slash)</li>
		 * <li><code>search</code> will be used in place of <code>query</code></li>
		 * <li><code>query</code> (object; see <code>querystring</code>) will only be used if <code>search</code> is absent.</li>
		 * <li><code>search</code> is treated the same with or without the leading <code>?</code> (question mark)</li>
		 * <li><code>hash</code> is treated the same with or without the leading <code>#</code> (pound sign, anchor)</li>
		 * </ul>
		 * 
		 */
		public static function format(urlObj:*):void {
		}
		
		/**
		 * <p>Take a base URL, and a href URL, and resolve them as a browser would for
		 * an anchor tag.
		 * </p>
		 * 
		 */
		public static function resolve(from:*, to:*):void {
		}
	}
}
