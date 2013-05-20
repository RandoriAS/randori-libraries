
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/Modules/indexeddb/IDBCursor.idl

  PLEASE DO *NOT* MODIFY THIS FILE! This file will be overridden next generation. If you need changes:
  - Regenerate the project with the newest IDL files.
  - or modify the WebIDLParser tool itself.

********************************************************************************************************

  Copyright (C) 2013 Sebastian Loncar, Web: http://loncar.de
  Copyright (C) 2009 Apple Inc. All Rights Reserved.

  Adapted to create Actionscript 3 classes by Roland Zwaga (roland@stackandheap.com) for the Randori
  framework for large enterprise Javascript applications.

  MIT License:

  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
  associated documentation files (the "Software"), to deal in the Software without restriction, 
  including without limitation the rights to use, copy, modify, merge, publish, distribute,
  sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all copies or substantial
  portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
  NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
  OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

*******************************************************************************************************/


package randori.webkit.modules.indexeddb
{


[JavaScript(export="false", nativecondition="INDEXED_DATABASE", name="IDBCursor")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class IDBCursor
{

	public function get direction():String { return undefined; }

	public function get key():* { return undefined; }

	public function get primaryKey():* { return undefined; }

	/**
	*  @see randori.webkit.modules.indexeddb.IDBAny
	*/
	public function get source():IDBAny { return undefined; }
	/**
	*  @param value
	*  @return A <code>IDBRequest</code> instance.
	*/
	public function update(value:*):IDBRequest { return undefined;}
	/**
	*  @param count
	*/
	public function advance(count:uint):void {}
	[JavaScriptMethod(name="continue")]
	/**
	*  @param key (optional argument, default value is <code>undefined</code>)
	*/
	public function continue_(key:*=undefined):void {}
	[JavaScriptMethod(name="delete")]
	/**
	*  @return A <code>IDBRequest</code> instance.
	*/
	public function delete_():IDBRequest { return undefined;}
}

}