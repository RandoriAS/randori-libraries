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
	 * Generated from file: tty.json
	 */
	[JavaScript(export="false")]
	public class ReadStream {
		
		/**
		 * <p>A <code>Boolean</code> that is initialized to <code>false</code>. It represents the current &quot;raw&quot; state
		 * of the <code>tty.ReadStream</code> instance.
		 * </p>
		 * 
		 */
		public var isRaw:Boolean;
		
		/**
		 * <p><code>mode</code> should be <code>true</code> or <code>false</code>. This sets the properties of the
		 * <code>tty.ReadStream</code> to act either as a raw device or default. <code>isRaw</code> will be set
		 * to the resulting mode.
		 * </p>
		 * 
		 */
		public static function setRawMode(mode:*):void {
		}
	}
}
