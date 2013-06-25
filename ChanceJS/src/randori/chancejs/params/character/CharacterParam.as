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
 * @author Roland Zwaga
 */
package randori.chancejs.params.character {

	[JavaScript(export="false", mode="json")]
	public class CharacterParam {
		
		public function CharacterParam(alpha:Boolean=undefined, casing:Boolean=undefined, pool:String=undefined, symbols:Boolean=undefined) {
			super();
		}

		public var alpha:Boolean;
		public var casing:Boolean;
		public var pool:String;
		public var symbols:Boolean
	}
}
