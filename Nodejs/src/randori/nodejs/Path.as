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
	 * Generated from file: path.json
	 */
	[JavaScript(export="false", name="path")]
	public class Path {
		
		/**
		 * <p>The platform-specific file separator. <code>&#39;\\&#39;</code> or <code>&#39;/&#39;</code>.
		 * </p>
		 * <p>An example on linux:
		 * </p>
		 * <pre><code>&#39;foo/bar/baz&#39;.split(path.sep)
		 * // returns
		 * [&#39;foo&#39;, &#39;bar&#39;, &#39;baz&#39;]</code></pre>
		 * <p>An example on windows:
		 * </p>
		 * <pre><code>&#39;foo\\bar\\baz&#39;.split(path.sep)
		 * // returns
		 * [&#39;foo&#39;, &#39;bar&#39;, &#39;baz&#39;]</code></pre>
		 * 
		 */
		public static var sep:String;
		
		/**
		 * <p>Normalize a string path, taking care of <code>&#39;..&#39;</code> and <code>&#39;.&#39;</code> parts.
		 * </p>
		 * <p>When multiple slashes are found, they&#39;re replaced by a single one;
		 * when the path contains a trailing slash, it is preserved.
		 * On windows backslashes are used.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>path.normalize(&#39;/foo/bar//baz/asdf/quux/..&#39;)
		 * // returns
		 * &#39;/foo/bar/baz/asdf&#39;</code></pre>
		 * 
		 */
		public static function normalize(p:*):void {
		}
		
		/**
		 * <p>Join all arguments together and normalize the resulting path.
		 * Non-string arguments are ignored.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>path.join(&#39;/foo&#39;, &#39;bar&#39;, &#39;baz/asdf&#39;, &#39;quux&#39;, &#39;..&#39;)
		 * // returns
		 * &#39;/foo/bar/baz/asdf&#39;
		 * path.join(&#39;foo&#39;, {}, &#39;bar&#39;)
		 * // returns
		 * &#39;foo/bar&#39;</code></pre>
		 * 
		 */
		public static function join(path1:*, path2:*, ...params):void {
		}
		
		/**
		 * <p>Resolves <code>to</code> to an absolute path.
		 * </p>
		 * <p>If <code>to</code> isn&#39;t already absolute <code>from</code> arguments are prepended in right to left
		 * order, until an absolute path is found. If after using all <code>from</code> paths still
		 * no absolute path is found, the current working directory is used as well. The
		 * resulting path is normalized, and trailing slashes are removed unless the path
		 * gets resolved to the root directory. Non-string arguments are ignored.
		 * </p>
		 * <p>Another way to think of it is as a sequence of <code>cd</code> commands in a shell.
		 * </p>
		 * <pre><code>path.resolve(&#39;foo/bar&#39;, &#39;/tmp/file/&#39;, &#39;..&#39;, &#39;a/../subfile&#39;)</code></pre>
		 * <p>Is similar to:
		 * </p>
		 * <pre><code>cd foo/bar
		 * cd /tmp/file/
		 * cd ..
		 * cd a/../subfile
		 * pwd</code></pre>
		 * <p>The difference is that the different paths don&#39;t need to exist and may also be
		 * files.
		 * </p>
		 * <p>Examples:
		 * </p>
		 * <pre><code>path.resolve(&#39;/foo/bar&#39;, &#39;./baz&#39;)
		 * // returns
		 * &#39;/foo/bar/baz&#39;
		 * path.resolve(&#39;/foo/bar&#39;, &#39;/tmp/file/&#39;)
		 * // returns
		 * &#39;/tmp/file&#39;
		 * path.resolve(&#39;wwwroot&#39;, &#39;static_files/png/&#39;, &#39;../gif/image.gif&#39;)
		 * // if currently in /home/myself/node, it returns
		 * &#39;/home/myself/node/wwwroot/static_files/gif/image.gif&#39;</code></pre>
		 * 
		 */
		public static function resolve(fro:*, to:*):void {
		}
		
		/**
		 * <p>Solve the relative path from <code>from</code> to <code>to</code>.
		 * </p>
		 * <p>At times we have two absolute paths, and we need to derive the relative
		 * path from one to the other.  This is actually the reverse transform of
		 * <code>path.resolve</code>, which means we see that:
		 * </p>
		 * <pre><code>path.resolve(from, path.relative(from, to)) == path.resolve(to)</code></pre>
		 * <p>Examples:
		 * </p>
		 * <pre><code>path.relative(&#39;C:\\orandea\\test\\aaa&#39;, &#39;C:\\orandea\\impl\\bbb&#39;)
		 * // returns
		 * &#39;..\\..\\impl\\bbb&#39;
		 * path.relative(&#39;/data/orandea/test/aaa&#39;, &#39;/data/orandea/impl/bbb&#39;)
		 * // returns
		 * &#39;../../impl/bbb&#39;</code></pre>
		 * 
		 */
		public static function relative(from:*, to:*):void {
		}
		
		/**
		 * <p>Return the directory name of a path.  Similar to the Unix <code>dirname</code> command.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>path.dirname(&#39;/foo/bar/baz/asdf/quux&#39;)
		 * // returns
		 * &#39;/foo/bar/baz/asdf&#39;</code></pre>
		 * 
		 */
		public static function dirname(p:*):void {
		}
		
		/**
		 * <p>Return the last portion of a path.  Similar to the Unix <code>basename</code> command.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>path.basename(&#39;/foo/bar/baz/asdf/quux.html&#39;)
		 * // returns
		 * &#39;quux.html&#39;
		 * path.basename(&#39;/foo/bar/baz/asdf/quux.html&#39;, &#39;.html&#39;)
		 * // returns
		 * &#39;quux&#39;</code></pre>
		 * 
		 */
		public static function basename(p:*, ext:*):void {
		}
		
		/**
		 * <p>Return the extension of the path, from the last &#39;.&#39; to end of string
		 * in the last portion of the path.  If there is no &#39;.&#39; in the last portion
		 * of the path or the first character of it is &#39;.&#39;, then it returns
		 * an empty string.  Examples:
		 * </p>
		 * <pre><code>path.extname(&#39;index.html&#39;)
		 * // returns
		 * &#39;.html&#39;
		 * path.extname(&#39;index.&#39;)
		 * // returns
		 * &#39;.&#39;
		 * path.extname(&#39;index&#39;)
		 * // returns
		 * &#39;&#39;</code></pre>
		 * 
		 */
		public static function extname(p:*):void {
		}
	}
}
