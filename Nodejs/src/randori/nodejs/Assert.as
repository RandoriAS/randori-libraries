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
	 * Generated from file: assert.json
	 */
	[JavaScript(export="false", name="assert")]
	public class Assert {
		
		/**
		 * <p>Throws an exception that displays the values for <code>actual</code> and <code>expected</code> separated by the provided operator.
		 * </p>
		 * 
		 */
		public static function fail(actual:*, expected:*, message:*, operator:*):void {
		}
		
		/**
		 * <p>Tests if value is truthy, it is equivalent to <code>assert.equal(true, !!value, message);</code>
		 * </p>
		 * 
		 */
		public static function ok(value1:*, message1:*, value2:*, message2:*):void {
		}
		
		/**
		 * <p>Tests shallow, coercive equality with the equal comparison operator ( <code>==</code> ).
		 * </p>
		 * 
		 */
		public static function equal(actual:*, expected:*, message:*):void {
		}
		
		/**
		 * <p>Tests shallow, coercive non-equality with the not equal comparison operator ( <code>!=</code> ).
		 * </p>
		 * 
		 */
		public static function notEqual(actual:*, expected:*, message:*):void {
		}
		
		/**
		 * <p>Tests for deep equality.
		 * </p>
		 * 
		 */
		public static function deepEqual(actual:*, expected:*, message:*):void {
		}
		
		/**
		 * <p>Tests for any deep inequality.
		 * </p>
		 * 
		 */
		public static function notDeepEqual(actual:*, expected:*, message:*):void {
		}
		
		/**
		 * <p>Tests strict equality, as determined by the strict equality operator ( <code>===</code> )
		 * </p>
		 * 
		 */
		public static function strictEqual(actual:*, expected:*, message:*):void {
		}
		
		/**
		 * <p>Tests strict non-equality, as determined by the strict not equal operator ( <code>!==</code> )
		 * </p>
		 * 
		 */
		public static function notStrictEqual(actual:*, expected:*, message:*):void {
		}
		
		/**
		 * <p>Expects <code>block</code> to throw an error. <code>error</code> can be constructor, regexp or
		 * validation function.
		 * </p>
		 * <p>Validate instanceof using constructor:
		 * </p>
		 * <pre><code>assert.throws(
		 * function() {
		 * throw new Error(&quot;Wrong value&quot;);
		 * },
		 * Error
		 * );</code></pre>
		 * <p>Validate error message using RegExp:
		 * </p>
		 * <pre><code>assert.throws(
		 * function() {
		 * throw new Error(&quot;Wrong value&quot;);
		 * },
		 * /value/
		 * );</code></pre>
		 * <p>Custom error validation:
		 * </p>
		 * <pre><code>assert.throws(
		 * function() {
		 * throw new Error(&quot;Wrong value&quot;);
		 * },
		 * function(err) {
		 * if ( (err instanceof Error) &amp;&amp; /value/.test(err) ) {
		 * return true;
		 * }
		 * },
		 * &quot;unexpected error&quot;
		 * );</code></pre>
		 * 
		 */
		public static function throws(block:*, error:*, message:*):void {
		}
		
		/**
		 * <p>Expects <code>block</code> not to throw an error, see assert.throws for details.
		 * </p>
		 * 
		 */
		public static function doesNotThrow(block:*, error:*, message:*):void {
		}
		
		/**
		 * <p>Tests if value is not a false value, throws if it is a true value. Useful when
		 * testing the first argument, <code>error</code> in callbacks.
		 * </p>
		 * 
		 */
		public static function ifError(value:*):void {
		}
	}
}
