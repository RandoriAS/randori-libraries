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
	public class Verify {
		
		/**
		 * <p>Updates the verifier object with data.
		 * This can be called many times with new data as it is streamed.
		 * </p>
		 * 
		 */
		public static function update(data:*):void {
		}
		
		/**
		 * <p>Verifies the signed data by using the <code>object</code> and <code>signature</code>. <code>object</code> is  a
		 * string containing a PEM encoded object, which can be one of RSA public key,
		 * DSA public key, or X.509 certificate. <code>signature</code> is the previously calculated
		 * signature for the data, in the <code>signature_format</code> which can be <code>&#39;binary&#39;</code>,
		 * <code>&#39;hex&#39;</code> or <code>&#39;base64&#39;</code>. Defaults to <code>&#39;binary&#39;</code>.
		 * </p>
		 * <p>Returns true or false depending on the validity of the signature for the data and public key.
		 * </p>
		 * <p>Note: <code>verifier</code> object can not be used after <code>verify()</code> method been called.
		 * </p>
		 * 
		 */
		public static function verify(object:*, signature:*, signature_format:*):void {
		}
	}
}
