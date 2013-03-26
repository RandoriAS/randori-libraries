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
	 * Generated from file: vm.json
	 */
	[JavaScript(export="false")]
	public class Script {
		
		/**
		 * <p>Similar to <code>vm.runInThisContext</code> but a method of a precompiled <code>Script</code> object.
		 * <code>script.runInThisContext</code> runs the code of <code>script</code> and returns the result.
		 * Running code does not have access to local scope, but does have access to the <code>global</code> object
		 * (v8: in actual context).
		 * </p>
		 * <p>Example of using <code>script.runInThisContext</code> to compile code once and run it multiple times:
		 * </p>
		 * <pre><code>var vm = require(&#39;vm&#39;);
		 * globalVar = 0;
		 * var script = vm.createScript(&#39;globalVar += 1&#39;, &#39;myfile.vm&#39;);
		 * for (var i = 0; i &lt; 1000 ; i += 1) {
		 * script.runInThisContext();
		 * }
		 * console.log(globalVar);
		 * // 1000</code></pre>
		 * 
		 */
		public static function runInThisContext():void {
		}
		
		/**
		 * <p>Similar to <code>vm.runInNewContext</code> a method of a precompiled <code>Script</code> object.
		 * <code>script.runInNewContext</code> runs the code of <code>script</code> with <code>sandbox</code> as the global object and returns the result.
		 * Running code does not have access to local scope. <code>sandbox</code> is optional.
		 * </p>
		 * <p>Example: compile code that increments a global variable and sets one, then execute this code multiple times.
		 * These globals are contained in the sandbox.
		 * </p>
		 * <pre><code>var util = require(&#39;util&#39;),
		 * vm = require(&#39;vm&#39;),
		 * sandbox = {
		 * animal: &#39;cat&#39;,
		 * count: 2
		 * };
		 * var script = vm.createScript(&#39;count += 1; name = &quot;kitty&quot;&#39;, &#39;myfile.vm&#39;);
		 * for (var i = 0; i &lt; 10 ; i += 1) {
		 * script.runInNewContext(sandbox);
		 * }
		 * console.log(util.inspect(sandbox));
		 * // { animal: &#39;cat&#39;, count: 12, name: &#39;kitty&#39; }</code></pre>
		 * <p>Note that running untrusted code is a tricky business requiring great care.  To prevent accidental
		 * global variable leakage, <code>script.runInNewContext</code> is quite useful, but safely running untrusted code
		 * requires a separate process.
		 * </p>
		 * 
		 */
		public static function runInNewContext(sandbox:*):void {
		}
	}
}
