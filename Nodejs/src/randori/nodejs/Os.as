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
	 * Generated from file: os.json
	 */
	[JavaScript(export="false", name="os")]
	public class Os {
		
		/**
		 * <p>A constant defining the appropriate End-of-line marker for the operating system.
		 * </p>
		 * 
		 */
		public static var EOL:String;
		
		/**
		 * <p>Returns the operating system&#39;s default directory for temp files.
		 * </p>
		 * 
		 */
		public static function tmpDir():void {
		}
		
		/**
		 * <p>Returns the hostname of the operating system.
		 * </p>
		 * 
		 */
		public static function hostname():void {
		}
		
		/**
		 * <p>Returns the operating system name.
		 * </p>
		 * 
		 */
		public static function type():void {
		}
		
		/**
		 * <p>Returns the operating system platform.
		 * </p>
		 * 
		 */
		public static function platform():void {
		}
		
		/**
		 * <p>Returns the operating system CPU architecture.
		 * </p>
		 * 
		 */
		public static function arch():void {
		}
		
		/**
		 * <p>Returns the operating system release.
		 * </p>
		 * 
		 */
		public static function release():void {
		}
		
		/**
		 * <p>Returns the system uptime in seconds.
		 * </p>
		 * 
		 */
		public static function uptime():void {
		}
		
		/**
		 * <p>Returns an array containing the 1, 5, and 15 minute load averages.
		 * </p>
		 * 
		 */
		public static function loadavg():void {
		}
		
		/**
		 * <p>Returns the total amount of system memory in bytes.
		 * </p>
		 * 
		 */
		public static function totalmem():void {
		}
		
		/**
		 * <p>Returns the amount of free system memory in bytes.
		 * </p>
		 * 
		 */
		public static function freemem():void {
		}
		
		/**
		 * <p>Returns an array of objects containing information about each CPU/core installed: model, speed (in MHz), and times (an object containing the number of CPU ticks spent in: user, nice, sys, idle, and irq).
		 * </p>
		 * <p>Example inspection of os.cpus:
		 * </p>
		 * <pre><code>[ { model: &#39;Intel(R) Core(TM) i7 CPU         860  @ 2.80GHz&#39;,
		 * speed: 2926,
		 * times:
		 * { user: 252020,
		 * nice: 0,
		 * sys: 30340,
		 * idle: 1070356870,
		 * irq: 0 } },
		 * { model: &#39;Intel(R) Core(TM) i7 CPU         860  @ 2.80GHz&#39;,
		 * speed: 2926,
		 * times:
		 * { user: 306960,
		 * nice: 0,
		 * sys: 26980,
		 * idle: 1071569080,
		 * irq: 0 } },
		 * { model: &#39;Intel(R) Core(TM) i7 CPU         860  @ 2.80GHz&#39;,
		 * speed: 2926,
		 * times:
		 * { user: 248450,
		 * nice: 0,
		 * sys: 21750,
		 * idle: 1070919370,
		 * irq: 0 } },
		 * { model: &#39;Intel(R) Core(TM) i7 CPU         860  @ 2.80GHz&#39;,
		 * speed: 2926,
		 * times:
		 * { user: 256880,
		 * nice: 0,
		 * sys: 19430,
		 * idle: 1070905480,
		 * irq: 20 } },
		 * { model: &#39;Intel(R) Core(TM) i7 CPU         860  @ 2.80GHz&#39;,
		 * speed: 2926,
		 * times:
		 * { user: 511580,
		 * nice: 20,
		 * sys: 40900,
		 * idle: 1070842510,
		 * irq: 0 } },
		 * { model: &#39;Intel(R) Core(TM) i7 CPU         860  @ 2.80GHz&#39;,
		 * speed: 2926,
		 * times:
		 * { user: 291660,
		 * nice: 0,
		 * sys: 34360,
		 * idle: 1070888000,
		 * irq: 10 } },
		 * { model: &#39;Intel(R) Core(TM) i7 CPU         860  @ 2.80GHz&#39;,
		 * speed: 2926,
		 * times:
		 * { user: 308260,
		 * nice: 0,
		 * sys: 55410,
		 * idle: 1071129970,
		 * irq: 880 } },
		 * { model: &#39;Intel(R) Core(TM) i7 CPU         860  @ 2.80GHz&#39;,
		 * speed: 2926,
		 * times:
		 * { user: 266450,
		 * nice: 1480,
		 * sys: 34920,
		 * idle: 1072572010,
		 * irq: 30 } } ]</code></pre>
		 * 
		 */
		public static function cpus():void {
		}
		
		/**
		 * <p>Get a list of network interfaces:
		 * </p>
		 * <pre><code>{ lo0:
		 * [ { address: &#39;::1&#39;, family: &#39;IPv6&#39;, internal: true },
		 * { address: &#39;fe80::1&#39;, family: &#39;IPv6&#39;, internal: true },
		 * { address: &#39;127.0.0.1&#39;, family: &#39;IPv4&#39;, internal: true } ],
		 * en1:
		 * [ { address: &#39;fe80::cabc:c8ff:feef:f996&#39;, family: &#39;IPv6&#39;,
		 * internal: false },
		 * { address: &#39;10.0.1.123&#39;, family: &#39;IPv4&#39;, internal: false } ],
		 * vmnet1: [ { address: &#39;10.99.99.254&#39;, family: &#39;IPv4&#39;, internal: false } ],
		 * vmnet8: [ { address: &#39;10.88.88.1&#39;, family: &#39;IPv4&#39;, internal: false } ],
		 * ppp0: [ { address: &#39;10.2.0.231&#39;, family: &#39;IPv4&#39;, internal: false } ] }</code></pre>
		 * 
		 */
		public static function networkInterfaces():void {
		}
	}
}
