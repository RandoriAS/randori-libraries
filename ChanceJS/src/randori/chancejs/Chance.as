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
package randori.chancejs {
	import randori.chancejs.params.character.CharacterParam;
	import randori.chancejs.params.integer.Range;
	import randori.chancejs.params.paragraph.Sentences;
	import randori.chancejs.params.string.StringParam;

	[JavaScript(export="false", name="Chance")]
	public class Chance {

		public function Chance(seed:int=undefined) {
			super();
		}

		public function bool():Boolean {
			return false;
		}

		public function character(param:CharacterParam=undefined):String {
			return null;
		}

		public function integer(range:Range=undefined):int {
			return 0;
		}

		public function natural(range:Range=undefined):Number {
			return 0;
		}

		public function string(param:StringParam=undefined):String {
			return null;
		}

		public function paragraph(sentences:Sentences=undefined):String {
			return null;
		}

		public function sentence():String {
			return null;
		}

		public function word():String {
			return null;
		}

		public function name():String {
			return null;
		}

		[JavaScriptMethod(name="name_prefix")]
		public function namePrefix():String {
			return null;
		}
		
		public function tld():String {
			return null;
		}
		
		public function address():String {
			return null;
		}

		public function city():String {
			return null;
		}

		public function phone():String {
			return null;
		}
		
		public function state():String {
			return null;
		}

		public function zip():String {
			return null;
		}

		public function capitalize(input:String):String {
			return null;
		}

		public function pick(input:Array):* {
			return null;
		}

		public function d4():uint {
			return 0;
		}

		public function d6():uint {
			return 0;
		}

		public function d8():uint {
			return 0;
		}

		public function d10():uint {
			return 0;
		}

		public function d12():uint {
			return 0;
		}

		public function d20():uint {
			return 0;
		}

		public function d100():uint {
			return 0;
		}

		public function guid():String {
			return null;
		}

		public function areacode():String {
			return null;
		}

		[JavaScriptMethod(name="mersenne_twister")]
		public function mersenneTwister(seed:int=undefined):Object {
			return null;
		}

		[JavaScriptMethod(name="name_prefixes")]
		public function namePrefixes():Vector.<NameAbbrev> {
			return null;
		}

		public function states():Vector.<NameAbbrev> {
			return null;
		}

		public function street():String {
			return null;
		}

		[JavaScriptMethod(name="street_suffix")]
		public function streetSuffix():NameAbbrev {
			return null;
		}

		[JavaScriptMethod(name="street_suffixes")]
		public function streetSuffixes():Vector.<NameAbbrev> {
			return null;
		}

		public function syllable():String {
			return null;
		}
	}
}
