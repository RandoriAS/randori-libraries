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
	[JavaScript(export="false")]
	public class Interface {
		
		/**
		 * <p>Sets the prompt, for example when you run <code>node</code> on the command line, you see
		 * <code>&gt; </code>, which is node&#39;s prompt.
		 * </p>
		 * 
		 */
		public static function setPrompt(prompt:*, length:*):void {
		}
		
		/**
		 * <p>Readies readline for input from the user, putting the current <code>setPrompt</code>
		 * options on a new line, giving the user a new spot to write. Set <code>preserveCursor</code>
		 * to <code>true</code> to prevent the cursor placement being reset to <code>0</code>.
		 * </p>
		 * <p>This will also resume the <code>input</code> stream used with <code>createInterface</code> if it has
		 * been paused.
		 * </p>
		 * 
		 */
		public static function prompt(preserveCursor:*):void {
		}
		
		/**
		 * <p>Prepends the prompt with <code>query</code> and invokes <code>callback</code> with the user&#39;s
		 * response. Displays the query to the user, and then invokes <code>callback</code>
		 * with the user&#39;s response after it has been typed.
		 * </p>
		 * <p>This will also resume the <code>input</code> stream used with <code>createInterface</code> if
		 * it has been paused.
		 * </p>
		 * <p>Example usage:
		 * </p>
		 * <pre><code>interface.question(&#39;What is your favorite food?&#39;, function(answer) {
		 * console.log(&#39;Oh, so your favorite food is &#39; + answer);
		 * });</code></pre>
		 * 
		 */
		public static function question(query:*, callback:*):void {
		}
		
		/**
		 * <p>Pauses the readline <code>input</code> stream, allowing it to be resumed later if needed.
		 * </p>
		 * 
		 */
		public static function pause():void {
		}
		
		/**
		 * <p>Resumes the readline <code>input</code> stream.
		 * </p>
		 * 
		 */
		public static function resume():void {
		}
		
		/**
		 * <p>Closes the <code>Interface</code> instance, relinquishing control on the <code>input</code> and
		 * <code>output</code> streams. The &quot;close&quot; event will also be emitted.
		 * </p>
		 * 
		 */
		public static function close():void {
		}
		
		/**
		 * <p>Writes <code>data</code> to <code>output</code> stream. <code>key</code> is an object literal to represent a key
		 * sequence; available if the terminal is a TTY.
		 * </p>
		 * <p>This will also resume the <code>input</code> stream if it has been paused.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>rl.write(&#39;Delete me!&#39;);
		 * // Simulate ctrl+u to delete the line written previously
		 * rl.write(null, {ctrl: true, name: &#39;u&#39;});</code></pre>
		 * 
		 */
		public static function write(data:*, key:*):void {
		}
	}
}
