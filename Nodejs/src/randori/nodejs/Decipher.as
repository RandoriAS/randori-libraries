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
	public class Decipher {
		
		/**
		 * <p>Updates the decipher with <code>data</code>, which is encoded in <code>&#39;binary&#39;</code>, <code>&#39;base64&#39;</code>
		 * or <code>&#39;hex&#39;</code>. Defaults to <code>&#39;binary&#39;</code>.
		 * </p>
		 * <p>The <code>output_decoding</code> specifies in what format to return the deciphered
		 * plaintext: <code>&#39;binary&#39;</code>, <code>&#39;ascii&#39;</code> or <code>&#39;utf8&#39;</code>. Defaults to <code>&#39;binary&#39;</code>.
		 * </p>
		 * 
		 */
		public static function update(data:*, input_encoding:*, output_encoding:*):void {
		}
		
		/**
		 * <p>Returns any remaining plaintext which is deciphered,
		 * with <code>output_encoding</code> being one of: <code>&#39;binary&#39;</code>, <code>&#39;ascii&#39;</code> or <code>&#39;utf8&#39;</code>.
		 * Defaults to <code>&#39;binary&#39;</code>.
		 * </p>
		 * <p>Note: <code>decipher</code> object can not be used after <code>final()</code> method been called.
		 * </p>
		 * 
		 */
		public static function final(output_encoding:*):void {
		}
		
		/**
		 * <p>You can disable auto padding if the data has been encrypted without standard block padding to prevent
		 * <code>decipher.final</code> from checking and removing it. Can only work if the input data&#39;s length is a multiple of the
		 * ciphers block size. You must call this before streaming data to <code>decipher.update</code>.
		 * </p>
		 * 
		 */
		public static function setAutoPadding(auto_padding:*):void {
		}
	}
}
