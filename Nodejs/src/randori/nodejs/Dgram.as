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
	 * Generated from file: dgram.json
	 */
	[JavaScript(export="false", name="dgram")]
	public class Dgram {
		
		/**
		 * <p>Creates a datagram Socket of the specified types.  Valid types are <code>udp4</code>
		 * and <code>udp6</code>.
		 * </p>
		 * <p>Takes an optional callback which is added as a listener for <code>message</code> events.
		 * </p>
		 * <p>Call <code>socket.bind</code> if you want to receive datagrams. <code>socket.bind()</code> will bind
		 * to the &quot;all interfaces&quot; address on a random port (it does the right thing for
		 * both <code>udp4</code> and <code>udp6</code> sockets). You can then retrieve the address and port
		 * with <code>socket.address().address</code> and <code>socket.address().port</code>.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="createSocket")]
		public static function createSocket1(type:*, callback:*):void {
		}
		
		/**
		 * <p>Creates a datagram Socket of the specified types.  Valid types are <code>udp4</code>
		 * and <code>udp6</code>.
		 * </p>
		 * <p>Takes an optional callback which is added as a listener for <code>message</code> events.
		 * </p>
		 * <p>Call <code>socket.bind</code> if you want to receive datagrams. <code>socket.bind()</code> will bind
		 * to the &quot;all interfaces&quot; address on a random port (it does the right thing for
		 * both <code>udp4</code> and <code>udp6</code> sockets). You can then retrieve the address and port
		 * with <code>socket.address().address</code> and <code>socket.address().port</code>.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="createSocket")]
		public static function createSocket2(type:*, callback:*):void {
		}
		
		public function createSocket(...params):* {
			return null;
		}
	}
}
