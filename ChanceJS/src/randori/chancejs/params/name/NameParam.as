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
package randori.chancejs.params.name {

	[JavaScript(export="false", mode="json")]
	public class NameParam {
		
		public function NameParam(middle:Boolean=undefined, middle_initial:Boolean=undefined, prefix:Boolean=undefined) {
			super();
		}

		public var middle:Boolean;
		public var middle_initial:Boolean;
		public var prefix:Boolean
	}
}
