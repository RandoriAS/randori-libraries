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
	 * Time: 4:19 PM
	 * @author Ben Schmidtke <bschmidtke@digitalprimates.net>
	 */

	[JavaScript(export="false", name="Object")]
	public class TestEnvironment
	{
		public var scope:Object;

		public var setup:Function;

		public var teardown:Function;

		public function TestEnvironment()
		{

		}
	}
}