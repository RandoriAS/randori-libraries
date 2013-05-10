package randori.qunit {

	/***
	 * Copyright 2013 LTN Consulting, Inc. /dba Digital Primates®
	 *
	 * Licensed under the Apache License, Version 2.0 (the "License");
	 * you may not use this file except in compliance with the License.
	 * You may obtain a copy of the License at
	 *
	 * http://www.apache.org/licenses/LICENSE-2.0
	 *
	 * Unless required by applicable law or agreed to in writing, software
	 * distributed under the License is distributed on an "AS IS" BASIS,
	 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	 * See the License for the specific language governing permissions and
	 * limitations under the License.
	 *
	 * Created with IntelliJ IDEA.
	 * Date: 5/9/13
	 * Time: 2:54 PM
	 * @author Ben Schmidtke <bschmidtke@digitalprimates.net>
	 */

	[JavaScript(export="false", type="Object", mode="global")]
	public class Test
	{
		public function Test()
		{
		}

		public static function expect( asserts:Number ):void
		{

		}

		public static function module( name:String, lifecycle:Object = null ):void
		{

		}

		// Because QUnit has this method defined with a optional paramter (in the middle of the method signature)
		// we are making parmA and parmB generic. Where parmA could be either the function to call OR the
		// expected asserts. and ParmB would always be the target function to call.
		// Use:
		// Test.asyncTest("My Test", method);
		// Test.asyncTest("My Test", 5, method);
		public static function asyncTest( description:String, parmA:*, parmB:* = null ):void
		{

		}

		// JS Has it defined as such, but middle parameters are optional.
		// function( testName, expected, callback, async )
		// Use:
		// Test.test("My Test", method);
		// Test.test("My Test", 5, method);
		// Test.test("My Test", 5, method, async);
		public static function test( testName:String, paramA:* = null, paramB:* = null, async:* = null ):void
		{

		}

		public static function start( count:Number ):void
		{

		}

		public static function stop( count:Number ):void
		{

		}

	}
}