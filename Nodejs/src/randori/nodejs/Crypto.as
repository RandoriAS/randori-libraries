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
	[JavaScript(export="false", name="crypto")]
	public class Crypto {
		
		/**
		 * <p>Creates a credentials object, with the optional details being a dictionary with keys:
		 * </p>
		 * <ul>
		 * <li><code>pfx</code> : A string or buffer holding the PFX or PKCS12 encoded private key, certificate and CA certificates</li>
		 * <li><code>key</code> : A string holding the PEM encoded private key</li>
		 * <li><code>passphrase</code> : A string of passphrase for the private key or pfx</li>
		 * <li><code>cert</code> : A string holding the PEM encoded certificate</li>
		 * <li><code>ca</code> : Either a string or list of strings of PEM encoded CA certificates to trust.</li>
		 * <li><code>crl</code> : Either a string or list of strings of PEM encoded CRLs (Certificate Revocation List)</li>
		 * <li><code>ciphers</code>: A string describing the ciphers to use or exclude. Consult
		 * <a href="http://www.openssl.org/docs/apps/ciphers.html#CIPHER_LIST_FORMAT">http://www.openssl.org/docs/apps/ciphers.html#CIPHER_LIST_FORMAT</a> for details
		 * on the format.</li>
		 * </ul>
		 * <p>If no &#39;ca&#39; details are given, then node.js will use the default publicly trusted list of CAs as given in
		 * </p>
		 * <p><a href="http://mxr.mozilla.org/mozilla/source/security/nss/lib/ckfw/builtins/certdata.txt">http://mxr.mozilla.org/mozilla/source/security/nss/lib/ckfw/builtins/certdata.txt</a>.
		 * </p>
		 * 
		 */
		public static function createCredentials(details:*):void {
		}
		
		/**
		 * <p>Creates and returns a hash object, a cryptographic hash with the given algorithm
		 * which can be used to generate hash digests.
		 * </p>
		 * <p><code>algorithm</code> is dependent on the available algorithms supported by the version
		 * of OpenSSL on the platform. Examples are <code>&#39;sha1&#39;</code>, <code>&#39;md5&#39;</code>, <code>&#39;sha256&#39;</code>, <code>&#39;sha512&#39;</code>, etc.
		 * On recent releases, <code>openssl list-message-digest-algorithms</code> will display the available digest algorithms.
		 * </p>
		 * <p>Example: this program that takes the sha1 sum of a file
		 * </p>
		 * <pre><code>var filename = process.argv[2];
		 * var crypto = require(&#39;crypto&#39;);
		 * var fs = require(&#39;fs&#39;);
		 * var shasum = crypto.createHash(&#39;sha1&#39;);
		 * var s = fs.ReadStream(filename);
		 * s.on(&#39;data&#39;, function(d) {
		 * shasum.update(d);
		 * });
		 * s.on(&#39;end&#39;, function() {
		 * var d = shasum.digest(&#39;hex&#39;);
		 * console.log(d + &#39;  &#39; + filename);
		 * });</code></pre>
		 * 
		 */
		public static function createHash(algorithm:*):void {
		}
		
		/**
		 * <p>Creates and returns a hmac object, a cryptographic hmac with the given algorithm and key.
		 * </p>
		 * <p><code>algorithm</code> is dependent on the available algorithms supported by OpenSSL - see createHash above.
		 * <code>key</code> is the hmac key to be used.
		 * </p>
		 * 
		 */
		public static function createHmac(algorithm:*, key:*):void {
		}
		
		/**
		 * <p>Creates and returns a cipher object, with the given algorithm and password.
		 * </p>
		 * <p><code>algorithm</code> is dependent on OpenSSL, examples are <code>&#39;aes192&#39;</code>, etc.
		 * On recent releases, <code>openssl list-cipher-algorithms</code> will display the
		 * available cipher algorithms.
		 * <code>password</code> is used to derive key and IV, which must be a <code>&#39;binary&#39;</code> encoded
		 * string or a <a href="buffer.html">buffer</a>.
		 * </p>
		 * 
		 */
		public static function createCipher(algorithm:*, password:*):void {
		}
		
		/**
		 * <p>Creates and returns a cipher object, with the given algorithm, key and iv.
		 * </p>
		 * <p><code>algorithm</code> is the same as the argument to <code>createCipher()</code>.
		 * <code>key</code> is the raw key used by the algorithm.
		 * <code>iv</code> is an <a href="http://en.wikipedia.org/wiki/Initialization_vector">initialization
		 * vector</a>.
		 * </p>
		 * <p><code>key</code> and <code>iv</code> must be <code>&#39;binary&#39;</code> encoded strings or <a href="buffer.html">buffers</a>.
		 * </p>
		 * 
		 */
		public static function createCipheriv(algorithm:*, key:*, iv:*):void {
		}
		
		/**
		 * <p>Creates and returns a decipher object, with the given algorithm and key.
		 * This is the mirror of the [createCipher()][] above.
		 * </p>
		 * 
		 */
		public static function createDecipher(algorithm:*, password:*):void {
		}
		
		/**
		 * <p>Creates and returns a decipher object, with the given algorithm, key and iv.
		 * This is the mirror of the [createCipheriv()][] above.
		 * </p>
		 * 
		 */
		public static function createDecipheriv(algorithm:*, key:*, iv:*):void {
		}
		
		/**
		 * <p>Creates and returns a signing object, with the given algorithm.
		 * On recent OpenSSL releases, <code>openssl list-public-key-algorithms</code> will display
		 * the available signing algorithms. Examples are <code>&#39;RSA-SHA256&#39;</code>.
		 * </p>
		 * 
		 */
		public static function createSign(algorithm:*):void {
		}
		
		/**
		 * <p>Creates and returns a verification object, with the given algorithm.
		 * This is the mirror of the signing object above.
		 * </p>
		 * 
		 */
		public static function createVerify(algorithm:*):void {
		}
		
		/**
		 * <p>Creates a Diffie-Hellman key exchange object and generates a prime of the
		 * given bit length. The generator used is <code>2</code>.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="createDiffieHellman")]
		public static function createDiffieHellman1(prime_length:*):void {
		}
		
		/**
		 * <p>Creates a Diffie-Hellman key exchange object using the supplied prime. The
		 * generator used is <code>2</code>. Encoding can be <code>&#39;binary&#39;</code>, <code>&#39;hex&#39;</code>, or <code>&#39;base64&#39;</code>.
		 * Defaults to <code>&#39;binary&#39;</code>.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="createDiffieHellman")]
		public static function createDiffieHellman2(prime:*, encoding:*):void {
		}
		
		/**
		 * <p>Creates a predefined Diffie-Hellman key exchange object.
		 * The supported groups are: <code>&#39;modp1&#39;</code>, <code>&#39;modp2&#39;</code>, <code>&#39;modp5&#39;</code>
		 * (defined in [RFC 2412][])
		 * and <code>&#39;modp14&#39;</code>, <code>&#39;modp15&#39;</code>, <code>&#39;modp16&#39;</code>, <code>&#39;modp17&#39;</code>, <code>&#39;modp18&#39;</code>
		 * (defined in [RFC 3526][]).
		 * The returned object mimics the interface of objects created by
		 * [crypto.createDiffieHellman()][] above, but
		 * will not allow to change the keys (with
		 * [diffieHellman.setPublicKey()][] for example).
		 * The advantage of using this routine is that the parties don&#39;t have to
		 * generate nor exchange group modulus beforehand, saving both processor and
		 * communication time.
		 * </p>
		 * <p>Example (obtaining a shared secret):
		 * </p>
		 * <pre><code>var crypto = require(&#39;crypto&#39;);
		 * var alice = crypto.getDiffieHellman(&#39;modp5&#39;);
		 * var bob = crypto.getDiffieHellman(&#39;modp5&#39;);
		 * alice.generateKeys();
		 * bob.generateKeys();
		 * var alice_secret = alice.computeSecret(bob.getPublicKey(), &#39;binary&#39;, &#39;hex&#39;);
		 * var bob_secret = bob.computeSecret(alice.getPublicKey(), &#39;binary&#39;, &#39;hex&#39;);
		 * // alice_secret and bob_secret should be the same //
		 * console.log(alice_secret == bob_secret);</code></pre>
		 * 
		 */
		public static function getDiffieHellman(group_name:*):void {
		}
		
		/**
		 * <p>Asynchronous PBKDF2 applies pseudorandom function HMAC-SHA1 to derive
		 * a key of given length from the given password, salt and iterations.
		 * The callback gets two arguments <code>(err, derivedKey)</code>.
		 * </p>
		 * 
		 */
		public static function pbkdf2(password:*, salt:*, iterations:*, keylen:*, callback:*):void {
		}
		
		/**
		 * <p>Generates cryptographically strong pseudo-random data. Usage:
		 * </p>
		 * <pre><code>// async
		 * crypto.randomBytes(256, function(ex, buf) {
		 * if (ex) throw ex;
		 * console.log(&#39;Have %d bytes of random data: %s&#39;, buf.length, buf);
		 * });
		 * // sync
		 * try {
		 * var buf = crypto.randomBytes(256);
		 * console.log(&#39;Have %d bytes of random data: %s&#39;, buf.length, buf);
		 * } catch (ex) {
		 * // handle error
		 * }</code></pre>
		 * 
		 */
		public static function randomBytes(size:*, callback:*):void {
		}
		
		public function createDiffieHellman(...params):* {
			return null;
		}
	}
}
