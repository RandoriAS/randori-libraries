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
	 * Generated from file: crypto.json
	 */
	[JavaScript(export="false")]
	public class Hash {
		
		/**
		 * <p>Updates the hash content with the given <code>data</code>, the encoding of which is given
		 * in <code>input_encoding</code> and can be <code>&#39;utf8&#39;</code>, <code>&#39;ascii&#39;</code> or <code>&#39;binary&#39;</code>.
		 * Defaults to <code>&#39;binary&#39;</code>.
		 * This can be called many times with new data as it is streamed.
		 * </p>
		 * 
		 */
		public static function update(data:*, input_encoding:*):void {
		}
		
		/**
		 * <p>Calculates the digest of all of the passed data to be hashed.
		 * The <code>encoding</code> can be <code>&#39;hex&#39;</code>, <code>&#39;binary&#39;</code> or <code>&#39;base64&#39;</code>.
		 * Defaults to <code>&#39;binary&#39;</code>.
		 * </p>
		 * <p>Note: <code>hash</code> object can not be used after <code>digest()</code> method has been called.
		 * </p>
		 * 
		 */
		public static function digest(encoding:*):void {
		}
	}
}
