
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/Modules/indexeddb/IDBIndex.idl

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


[JavaScript(export="false", nativecondition="INDEXED_DATABASE", name="IDBIndex")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class IDBIndex
{

	public function get name():String { return undefined; }

	/**
	*  @see randori.webkit.modules.indexeddb.IDBObjectStore
	*/
	public function get objectStore():IDBObjectStore { return undefined; }

	/**
	*  @see randori.webkit.modules.indexeddb.IDBAny
	*/
	public function get keyPath():IDBAny { return undefined; }

	public function get unique():Boolean { return undefined; }

	public function get multiEntry():Boolean { return undefined; }
	[JavaScriptMethod(name="openCursor")]
	/**
	*  @return A <code>IDBRequest</code> instance.
	*/
	public function openCursor1():IDBRequest { return undefined;}
	[JavaScriptMethod(name="openCursor")]
	/**
	*  @param range (optional argument, default value is <code>undefined</code>)
	*  @return A <code>IDBRequest</code> instance.
	*/
	public function openCursor2(range:IDBKeyRange=undefined):IDBRequest { return undefined;}
	[JavaScriptMethod(name="openCursor")]
	/**
	*  @param range (optional argument, default value is <code>undefined</code>)
	*  @param direction (optional argument, default value is <code>undefined</code>)
	*  @return A <code>IDBRequest</code> instance.
	*/
	public function openCursor3(range:IDBKeyRange=undefined, direction:String=undefined):IDBRequest { return undefined;}
	[JavaScriptMethod(name="openCursor")]
	/**
	*  @param key
	*  @return A <code>IDBRequest</code> instance.
	*/
	public function openCursor4(key:*):IDBRequest { return undefined;}
	[JavaScriptMethod(name="openCursor")]
	/**
	*  @param key
	*  @param direction (optional argument, default value is <code>undefined</code>)
	*  @return A <code>IDBRequest</code> instance.
	*/
	public function openCursor5(key:*, direction:String=undefined):IDBRequest { return undefined;}
	[JavaScriptMethod(name="openKeyCursor")]
	/**
	*  @return A <code>IDBRequest</code> instance.
	*/
	public function openKeyCursor1():IDBRequest { return undefined;}
	[JavaScriptMethod(name="openKeyCursor")]
	/**
	*  @param range (optional argument, default value is <code>undefined</code>)
	*  @return A <code>IDBRequest</code> instance.
	*/
	public function openKeyCursor2(range:IDBKeyRange=undefined):IDBRequest { return undefined;}
	[JavaScriptMethod(name="openKeyCursor")]
	/**
	*  @param range (optional argument, default value is <code>undefined</code>)
	*  @param direction (optional argument, default value is <code>undefined</code>)
	*  @return A <code>IDBRequest</code> instance.
	*/
	public function openKeyCursor3(range:IDBKeyRange=undefined, direction:String=undefined):IDBRequest { return undefined;}
	[JavaScriptMethod(name="openKeyCursor")]
	/**
	*  @param key
	*  @return A <code>IDBRequest</code> instance.
	*/
	public function openKeyCursor4(key:*):IDBRequest { return undefined;}
	[JavaScriptMethod(name="openKeyCursor")]
	/**
	*  @param key
	*  @param direction (optional argument, default value is <code>undefined</code>)
	*  @return A <code>IDBRequest</code> instance.
	*/
	public function openKeyCursor5(key:*, direction:String=undefined):IDBRequest { return undefined;}
	[JavaScriptMethod(name="get")]
	/**
	*  @param key
	*  @return A <code>IDBRequest</code> instance.
	*/
	public function get1(key:IDBKeyRange):IDBRequest { return undefined;}
	[JavaScriptMethod(name="get")]
	/**
	*  @param key
	*  @return A <code>IDBRequest</code> instance.
	*/
	public function get2(key:*):IDBRequest { return undefined;}
	[JavaScriptMethod(name="getKey")]
	/**
	*  @param key
	*  @return A <code>IDBRequest</code> instance.
	*/
	public function getKey1(key:IDBKeyRange):IDBRequest { return undefined;}
	[JavaScriptMethod(name="getKey")]
	/**
	*  @param key
	*  @return A <code>IDBRequest</code> instance.
	*/
	public function getKey2(key:*):IDBRequest { return undefined;}
	[JavaScriptMethod(name="count")]
	/**
	*  @return A <code>IDBRequest</code> instance.
	*/
	public function count1():IDBRequest { return undefined;}
	[JavaScriptMethod(name="count")]
	/**
	*  @param range (optional argument, default value is <code>undefined</code>)
	*  @return A <code>IDBRequest</code> instance.
	*/
	public function count2(range:IDBKeyRange=undefined):IDBRequest { return undefined;}
	[JavaScriptMethod(name="count")]
	/**
	*  @param key
	*  @return A <code>IDBRequest</code> instance.
	*/
	public function count3(key:*):IDBRequest { return undefined;}
}

}