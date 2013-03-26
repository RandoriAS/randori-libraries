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
	[JavaScript(export="false", name="vm")]
	public class Vm {
		
		/**
		 * <p><code>vm.runInThisContext()</code> compiles <code>code</code>, runs it and returns the result. Running
		 * code does not have access to local scope. <code>filename</code> is optional, it&#39;s used only
		 * in stack traces.
		 * </p>
		 * <p>Example of using <code>vm.runInThisContext</code> and <code>eval</code> to run the same code:
		 * </p>
		 * <pre><code>var localVar = 123,
		 * usingscript, evaled,
		 * vm = require(&#39;vm&#39;);
		 * usingscript = vm.runInThisContext(&#39;localVar = 1;&#39;,
		 * &#39;myfile.vm&#39;);
		 * console.log(&#39;localVar: &#39; + localVar + &#39;, usingscript: &#39; +
		 * usingscript);
		 * evaled = eval(&#39;localVar = 1;&#39;);
		 * console.log(&#39;localVar: &#39; + localVar + &#39;, evaled: &#39; +
		 * evaled);
		 * // localVar: 123, usingscript: 1
		 * // localVar: 1, evaled: 1</code></pre>
		 * <p><code>vm.runInThisContext</code> does not have access to the local scope, so <code>localVar</code> is unchanged.
		 * <code>eval</code> does have access to the local scope, so <code>localVar</code> is changed.
		 * </p>
		 * <p>In case of syntax error in <code>code</code>, <code>vm.runInThisContext</code> emits the syntax error to stderr
		 * and throws an exception.
		 * </p>
		 * 
		 */
		public static function runInThisContext(code:*, filename:*):void {
		}
		
		/**
		 * <p><code>vm.runInNewContext</code> compiles <code>code</code>, then runs it in <code>sandbox</code> and returns the
		 * result. Running code does not have access to local scope. The object <code>sandbox</code>
		 * will be used as the global object for <code>code</code>.
		 * <code>sandbox</code> and <code>filename</code> are optional, <code>filename</code> is only used in stack traces.
		 * </p>
		 * <p>Example: compile and execute code that increments a global variable and sets a new one.
		 * These globals are contained in the sandbox.
		 * </p>
		 * <pre><code>var util = require(&#39;util&#39;),
		 * vm = require(&#39;vm&#39;),
		 * sandbox = {
		 * animal: &#39;cat&#39;,
		 * count: 2
		 * };
		 * vm.runInNewContext(&#39;count += 1; name = &quot;kitty&quot;&#39;, sandbox, &#39;myfile.vm&#39;);
		 * console.log(util.inspect(sandbox));
		 * // { animal: &#39;cat&#39;, count: 3, name: &#39;kitty&#39; }</code></pre>
		 * <p>Note that running untrusted code is a tricky business requiring great care.  To prevent accidental
		 * global variable leakage, <code>vm.runInNewContext</code> is quite useful, but safely running untrusted code
		 * requires a separate process.
		 * </p>
		 * <p>In case of syntax error in <code>code</code>, <code>vm.runInNewContext</code> emits the syntax error to stderr
		 * and throws an exception.
		 * </p>
		 * 
		 */
		public static function runInNewContext(code:*, sandbox:*, filename:*):void {
		}
		
		/**
		 * <p><code>vm.runInContext</code> compiles <code>code</code>, then runs it in <code>context</code> and returns the
		 * result. A (V8) context comprises a global object, together with a set of
		 * built-in objects and functions. Running code does not have access to local scope
		 * and the global object held within <code>context</code> will be used as the global object
		 * for <code>code</code>.
		 * <code>filename</code> is optional, it&#39;s used only in stack traces.
		 * </p>
		 * <p>Example: compile and execute code in a existing context.
		 * </p>
		 * <pre><code>var util = require(&#39;util&#39;),
		 * vm = require(&#39;vm&#39;),
		 * initSandbox = {
		 * animal: &#39;cat&#39;,
		 * count: 2
		 * },
		 * context = vm.createContext(initSandbox);
		 * vm.runInContext(&#39;count += 1; name = &quot;CATT&quot;&#39;, context, &#39;myfile.vm&#39;);
		 * console.log(util.inspect(context));
		 * // { animal: &#39;cat&#39;, count: 3, name: &#39;CATT&#39; }</code></pre>
		 * <p>Note that <code>createContext</code> will perform a shallow clone of the supplied sandbox object in order to
		 * initialize the global object of the freshly constructed context.
		 * </p>
		 * <p>Note that running untrusted code is a tricky business requiring great care.  To prevent accidental
		 * global variable leakage, <code>vm.runInContext</code> is quite useful, but safely running untrusted code
		 * requires a separate process.
		 * </p>
		 * <p>In case of syntax error in <code>code</code>, <code>vm.runInContext</code> emits the syntax error to stderr
		 * and throws an exception.
		 * </p>
		 * 
		 */
		public static function runInContext(code:*, context:*, filename:*):void {
		}
		
		/**
		 * <p><code>vm.createContext</code> creates a new context which is suitable for use as the 2nd argument of a subsequent
		 * call to <code>vm.runInContext</code>. A (V8) context comprises a global object together with a set of
		 * build-in objects and functions. The optional argument <code>initSandbox</code> will be shallow-copied
		 * to seed the initial contents of the global object used by the context.
		 * </p>
		 * 
		 */
		public static function createContext(initSandbox:*):void {
		}
		
		/**
		 * <p><code>createScript</code> compiles <code>code</code> but does not run it. Instead, it returns a
		 * <code>vm.Script</code> object representing this compiled code. This script can be run
		 * later many times using methods below. The returned script is not bound to any
		 * global object. It is bound before each run, just for that run. <code>filename</code> is
		 * optional, it&#39;s only used in stack traces.
		 * </p>
		 * <p>In case of syntax error in <code>code</code>, <code>createScript</code> prints the syntax error to stderr
		 * and throws an exception.
		 * </p>
		 * 
		 */
		public static function createScript(code:*, filename:*):void {
		}
	}
}
