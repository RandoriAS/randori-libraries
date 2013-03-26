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
	 * Generated from file: tls.json
	 */
	[JavaScript(export="false")]
	public class SecurePair extends EventsEventEmitter {
		
		/**
		 * <p>The event is emitted from the SecurePair once the pair has successfully
		 * established a secure connection.
		 * </p>
		 * <p>Similarly to the checking for the server &#39;secureConnection&#39; event,
		 * pair.cleartext.authorized should be checked to confirm whether the certificate
		 * used properly authorized.
		 * </p>
		 * 
		 */
		[JavaScriptProperty(name="secure")]
		public var onsecure:Function;
	}
}
