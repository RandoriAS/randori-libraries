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
	public class Cipher {
		
		/**
		 * <p>Updates the cipher with <code>data</code>, the encoding of which is given in
		 * <code>input_encoding</code> and can be <code>&#39;utf8&#39;</code>, <code>&#39;ascii&#39;</code> or <code>&#39;binary&#39;</code>.
		 * Defaults to <code>&#39;binary&#39;</code>.
		 * </p>
		 * <p>The <code>output_encoding</code> specifies the output format of the enciphered data,
		 * and can be <code>&#39;binary&#39;</code>, <code>&#39;base64&#39;</code> or <code>&#39;hex&#39;</code>. Defaults to <code>&#39;binary&#39;</code>.
		 * </p>
		 * <p>Returns the enciphered contents, and can be called many times with new data as it is streamed.
		 * </p>
		 * 
		 */
		public static function update(data:*, input_encoding:*, output_encoding:*):void {
		}
		
		/**
		 * <p>Returns any remaining enciphered contents, with <code>output_encoding</code> being one of:
		 * <code>&#39;binary&#39;</code>, <code>&#39;base64&#39;</code> or <code>&#39;hex&#39;</code>. Defaults to <code>&#39;binary&#39;</code>.
		 * </p>
		 * <p>Note: <code>cipher</code> object can not be used after <code>final()</code> method been called.
		 * </p>
		 * 
		 */
		public static function final(output_encoding:*):void {
		}
		
		/**
		 * <p>You can disable automatic padding of the input data to block size. If <code>auto_padding</code> is false,
		 * the length of the entire input data must be a multiple of the cipher&#39;s block size or <code>final</code> will fail.
		 * Useful for non-standard padding, e.g. using <code>0x0</code> instead of PKCS padding. You must call this before <code>cipher.final</code>.
		 * </p>
		 * 
		 */
		public static function setAutoPadding(auto_padding:*):void {
		}
	}
}
