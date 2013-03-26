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
	public class Signer {
		
		/**
		 * <p>Updates the signer object with data.
		 * This can be called many times with new data as it is streamed.
		 * </p>
		 * 
		 */
		public static function update(data:*):void {
		}
		
		/**
		 * <p>Calculates the signature on all the updated data passed through the signer.
		 * <code>private_key</code> is a string containing the PEM encoded private key for signing.
		 * </p>
		 * <p>Returns the signature in <code>output_format</code> which can be <code>&#39;binary&#39;</code>, <code>&#39;hex&#39;</code> or
		 * <code>&#39;base64&#39;</code>. Defaults to <code>&#39;binary&#39;</code>.
		 * </p>
		 * <p>Note: <code>signer</code> object can not be used after <code>sign()</code> method been called.
		 * </p>
		 * 
		 */
		public static function sign(private_key:*, output_format:*):void {
		}
	}
}
