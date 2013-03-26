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
	public class DiffieHellman {
		
		/**
		 * <p>Generates private and public Diffie-Hellman key values, and returns the
		 * public key in the specified encoding. This key should be transferred to the
		 * other party. Encoding can be <code>&#39;binary&#39;</code>, <code>&#39;hex&#39;</code>, or <code>&#39;base64&#39;</code>.
		 * Defaults to <code>&#39;binary&#39;</code>.
		 * </p>
		 * 
		 */
		public static function generateKeys(encoding:*):void {
		}
		
		/**
		 * <p>Computes the shared secret using <code>other_public_key</code> as the other party&#39;s
		 * public key and returns the computed shared secret. Supplied key is
		 * interpreted using specified <code>input_encoding</code>, and secret is encoded using
		 * specified <code>output_encoding</code>. Encodings can be <code>&#39;binary&#39;</code>, <code>&#39;hex&#39;</code>, or
		 * <code>&#39;base64&#39;</code>. The input encoding defaults to <code>&#39;binary&#39;</code>.
		 * If no output encoding is given, the input encoding is used as output encoding.
		 * </p>
		 * 
		 */
		public static function computeSecret(other_public_key:*, input_encoding:*, output_encoding:*):void {
		}
		
		/**
		 * <p>Returns the Diffie-Hellman prime in the specified encoding, which can be
		 * <code>&#39;binary&#39;</code>, <code>&#39;hex&#39;</code>, or <code>&#39;base64&#39;</code>. Defaults to <code>&#39;binary&#39;</code>.
		 * </p>
		 * 
		 */
		public static function getPrime(encoding:*):void {
		}
		
		/**
		 * <p>Returns the Diffie-Hellman prime in the specified encoding, which can be
		 * <code>&#39;binary&#39;</code>, <code>&#39;hex&#39;</code>, or <code>&#39;base64&#39;</code>. Defaults to <code>&#39;binary&#39;</code>.
		 * </p>
		 * 
		 */
		public static function getGenerator(encoding:*):void {
		}
		
		/**
		 * <p>Returns the Diffie-Hellman public key in the specified encoding, which can
		 * be <code>&#39;binary&#39;</code>, <code>&#39;hex&#39;</code>, or <code>&#39;base64&#39;</code>. Defaults to <code>&#39;binary&#39;</code>.
		 * </p>
		 * 
		 */
		public static function getPublicKey(encoding:*):void {
		}
		
		/**
		 * <p>Returns the Diffie-Hellman private key in the specified encoding, which can
		 * be <code>&#39;binary&#39;</code>, <code>&#39;hex&#39;</code>, or <code>&#39;base64&#39;</code>. Defaults to <code>&#39;binary&#39;</code>.
		 * </p>
		 * 
		 */
		public static function getPrivateKey(encoding:*):void {
		}
		
		/**
		 * <p>Sets the Diffie-Hellman public key. Key encoding can be <code>&#39;binary&#39;</code>, <code>&#39;hex&#39;</code>,
		 * or <code>&#39;base64&#39;</code>. Defaults to <code>&#39;binary&#39;</code>.
		 * </p>
		 * 
		 */
		public static function setPublicKey(public_key:*, encoding:*):void {
		}
		
		/**
		 * <p>Sets the Diffie-Hellman private key. Key encoding can be <code>&#39;binary&#39;</code>, <code>&#39;hex&#39;</code>,
		 * or <code>&#39;base64&#39;</code>. Defaults to <code>&#39;binary&#39;</code>.
		 * </p>
		 * 
		 */
		public static function setPrivateKey(public_key:*, encoding:*):void {
		}
	}
}
