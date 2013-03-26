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
	 * Generated from file: dns.json
	 */
	[JavaScript(export="false", name="dns")]
	public class Dns {
		
		/**
		 * <p>Resolves a domain (e.g. <code>&#39;google.com&#39;</code>) into the first found A (IPv4) or
		 * AAAA (IPv6) record.
		 * The <code>family</code> can be the integer <code>4</code> or <code>6</code>. Defaults to <code>null</code> that indicates
		 * both Ip v4 and v6 address family.
		 * </p>
		 * <p>The callback has arguments <code>(err, address, family)</code>.  The <code>address</code> argument
		 * is a string representation of a IP v4 or v6 address. The <code>family</code> argument
		 * is either the integer 4 or 6 and denotes the family of <code>address</code> (not
		 * necessarily the value initially passed to <code>lookup</code>).
		 * </p>
		 * <p>On error, <code>err</code> is an <code>Error</code> object, where <code>err.code</code> is the error code.
		 * Keep in mind that <code>err.code</code> will be set to <code>&#39;ENOENT&#39;</code> not only when
		 * the domain does not exist but also when the lookup fails in other ways
		 * such as no available file descriptors.
		 * </p>
		 * 
		 */
		public static function lookup(domain:*, family:*, callback:*):void {
		}
		
		/**
		 * <p>Resolves a domain (e.g. <code>&#39;google.com&#39;</code>) into an array of the record types
		 * specified by rrtype. Valid rrtypes are <code>&#39;A&#39;</code> (IPV4 addresses, default),
		 * <code>&#39;AAAA&#39;</code> (IPV6 addresses), <code>&#39;MX&#39;</code> (mail exchange records), <code>&#39;TXT&#39;</code> (text
		 * records), <code>&#39;SRV&#39;</code> (SRV records), <code>&#39;PTR&#39;</code> (used for reverse IP lookups),
		 * <code>&#39;NS&#39;</code> (name server records) and <code>&#39;CNAME&#39;</code> (canonical name records).
		 * </p>
		 * <p>The callback has arguments <code>(err, addresses)</code>.  The type of each item
		 * in <code>addresses</code> is determined by the record type, and described in the
		 * documentation for the corresponding lookup methods below.
		 * </p>
		 * <p>On error, <code>err</code> is an <code>Error</code> object, where <code>err.code</code> is
		 * one of the error codes listed below.
		 * </p>
		 * 
		 */
		public static function resolve(domain:*, rrtype:*, callback:*):void {
		}
		
		/**
		 * <p>The same as <code>dns.resolve()</code>, but only for IPv4 queries (<code>A</code> records).
		 * <code>addresses</code> is an array of IPv4 addresses (e.g.
		 * <code>[&#39;74.125.79.104&#39;, &#39;74.125.79.105&#39;, &#39;74.125.79.106&#39;]</code>).
		 * </p>
		 * 
		 */
		public static function resolve4(domain:*, callback:*):void {
		}
		
		/**
		 * <p>The same as <code>dns.resolve4()</code> except for IPv6 queries (an <code>AAAA</code> query).
		 * </p>
		 * 
		 */
		public static function resolve6(domain:*, callback:*):void {
		}
		
		/**
		 * <p>The same as <code>dns.resolve()</code>, but only for mail exchange queries (<code>MX</code> records).
		 * </p>
		 * <p><code>addresses</code> is an array of MX records, each with a priority and an exchange
		 * attribute (e.g. <code>[{&#39;priority&#39;: 10, &#39;exchange&#39;: &#39;mx.example.com&#39;},...]</code>).
		 * </p>
		 * 
		 */
		public static function resolveMx(domain:*, callback:*):void {
		}
		
		/**
		 * <p>The same as <code>dns.resolve()</code>, but only for text queries (<code>TXT</code> records).
		 * <code>addresses</code> is an array of the text records available for <code>domain</code> (e.g.,
		 * <code>[&#39;v=spf1 ip4:0.0.0.0 ~all&#39;]</code>).
		 * </p>
		 * 
		 */
		public static function resolveTxt(domain:*, callback:*):void {
		}
		
		/**
		 * <p>The same as <code>dns.resolve()</code>, but only for service records (<code>SRV</code> records).
		 * <code>addresses</code> is an array of the SRV records available for <code>domain</code>. Properties
		 * of SRV records are priority, weight, port, and name (e.g.,
		 * <code>[{&#39;priority&#39;: 10, {&#39;weight&#39;: 5, &#39;port&#39;: 21223, &#39;name&#39;: &#39;service.example.com&#39;}, ...]</code>).
		 * </p>
		 * 
		 */
		public static function resolveSrv(domain:*, callback:*):void {
		}
		
		/**
		 * <p>The same as <code>dns.resolve()</code>, but only for name server records (<code>NS</code> records).
		 * <code>addresses</code> is an array of the name server records available for <code>domain</code>
		 * (e.g., <code>[&#39;ns1.example.com&#39;, &#39;ns2.example.com&#39;]</code>).
		 * </p>
		 * 
		 */
		public static function resolveNs(domain:*, callback:*):void {
		}
		
		/**
		 * <p>The same as <code>dns.resolve()</code>, but only for canonical name records (<code>CNAME</code>
		 * records). <code>addresses</code> is an array of the canonical name records available for
		 * <code>domain</code> (e.g., <code>[&#39;bar.example.com&#39;]</code>).
		 * </p>
		 * 
		 */
		public static function resolveCname(domain:*, callback:*):void {
		}
		
		/**
		 * <p>Reverse resolves an ip address to an array of domain names.
		 * </p>
		 * <p>The callback has arguments <code>(err, domains)</code>.
		 * </p>
		 * <p>On error, <code>err</code> is an <code>Error</code> object, where <code>err.code</code> is
		 * one of the error codes listed below.
		 * </p>
		 * 
		 */
		public static function reverse(ip:*, callback:*):void {
		}
	}
}
