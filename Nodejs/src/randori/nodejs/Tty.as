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
	[JavaScript(export="false", name="tty")]
	public class Tty {
		
		/**
		 * <p>Returns <code>true</code> or <code>false</code> depending on if the <code>fd</code> is associated with a
		 * terminal.
		 * </p>
		 * 
		 */
		public static function isatty(fd:*):void {
		}
		
		/**
		 * <p>Deprecated. Use <code>tty.ReadStream#setRawMode()</code>
		 * (i.e. <code>process.stdin.setRawMode()</code>) instead.
		 * </p>
		 * 
		 */
		public static function setRawMode(mode:*):void {
		}
	}
}
