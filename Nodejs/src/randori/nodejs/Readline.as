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
	 * Generated from file: readline.json
	 */
	[JavaScript(export="false", name="readline")]
	public class Readline {
		
		/**
		 * <p>Creates a readline <code>Interface</code> instance. Accepts an &quot;options&quot; Object that takes
		 * the following values:
		 * </p>
		 * <ul>
		 * <li><p><code>input</code> - the readable stream to listen to (Required).</p>
		 * </li>
		 * <li><p><code>output</code> - the writable stream to write readline data to (Required).</p>
		 * </li>
		 * <li><p><code>completer</code> - an optional function that is used for Tab autocompletion. See
		 * below for an example of using this.</p>
		 * </li>
		 * <li><p><code>terminal</code> - pass <code>true</code> if the <code>input</code> and <code>output</code> streams should be
		 * treated like a TTY, and have ANSI/VT100 escape codes written to it.
		 * Defaults to checking <code>isTTY</code> on the <code>output</code> stream upon instantiation.</p>
		 * </li>
		 * </ul>
		 * <p>The <code>completer</code> function is given a the current line entered by the user, and
		 * is supposed to return an Array with 2 entries:
		 * </p>
		 * <ol>
		 * <li><p>An Array with matching entries for the completion.</p>
		 * </li>
		 * <li><p>The substring that was used for the matching.</p>
		 * </li>
		 * </ol>
		 * <p>Which ends up looking something like:
		 * <code>[[substr1, substr2, ...], originalsubstring]</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>function completer(line) {
		 * var completions = &#39;.help .error .exit .quit .q&#39;.split(&#39; &#39;)
		 * var hits = completions.filter(function(c) { return c.indexOf(line) == 0 })
		 * // show all completions if none found
		 * return [hits.length ? hits : completions, line]
		 * }</code></pre>
		 * <p>Also <code>completer</code> can be run in async mode if it accepts two arguments:
		 * </p>
		 * <pre><code>function completer(linePartial, callback) {
		 * callback(null, [[&#39;123&#39;], linePartial]);
		 * }</code></pre>
		 * <p><code>createInterface</code> is commonly used with <code>process.stdin</code> and
		 * <code>process.stdout</code> in order to accept user input:
		 * </p>
		 * <pre><code>var readline = require(&#39;readline&#39;);
		 * var rl = readline.createInterface({
		 * input: process.stdin,
		 * output: process.stdout
		 * });</code></pre>
		 * <p>Once you have a readline instance, you most commonly listen for the
		 * <code>&quot;line&quot;</code> event.
		 * </p>
		 * <p>If <code>terminal</code> is <code>true</code> for this instance then the <code>output</code> stream will get
		 * the best compatibility if it defines an <code>output.columns</code> property, and fires
		 * a <code>&quot;resize&quot;</code> event on the <code>output</code> if/when the columns ever change
		 * (<code>process.stdout</code> does this automatically when it is a TTY).
		 * </p>
		 * 
		 */
		public static function createInterface(options:*):void {
		}
	}
}
