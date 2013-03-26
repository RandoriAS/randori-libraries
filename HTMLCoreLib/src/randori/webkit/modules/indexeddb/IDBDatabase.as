
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/Modules/indexeddb/IDBDatabase.idl

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

import randori.webkit.dom.DOMStringList;
import randori.webkit.dom.DomEvent;

[JavaScript(export="false", nativecondition="INDEXED_DATABASE", name="IDBDatabase")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class IDBDatabase
{

	public function get name():String { return ''; }

	/**
	*  @see randori.webkit.modules.indexeddb.IDBAny
	*/
	public function get version():IDBAny { return null; }

	/**
	*  @see randori.webkit.dom.DOMStringList
	*/
	public function get objectStoreNames():DOMStringList { return null; }

	/**
	*  Function that accepts an event of type <code>AbortEvent</code>.
	*/
	public function get onabort():Function { return null; }
	public function set onabort(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ErrorEvent</code>.
	*  @see randori.webkit.dom.ErrorEvent
	*/
	public function get onerror():Function { return null; }
	public function set onerror(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>VersionchangeEvent</code>.
	*/
	public function get onversionchange():Function { return null; }
	public function set onversionchange(value:Function):void { }
	/**
	*  @param name
	*  @param options (optional argument, default value is <code>null</code>)
	*  @return A <code>IDBObjectStore</code> instance.
	*/
	public function createObjectStore(name:String, options:Object=null):IDBObjectStore { return null;}
	/**
	*  @param name
	*/
	public function deleteObjectStore(name:String):void {}
	/**
	*  @param storeNames
	*  @param mode (optional argument, default value is <code>null</code>)
	*  @return A <code>IDBTransaction</code> instance.
	*/
	public function transaction(storeNames:DOMStringList, mode:String=null):IDBTransaction { return null;}
	public function close():void {}
	/**
	*  @param type
	*  @param listener
	*  @param useCapture (optional argument, default value is <code>false</code>)
	*/
	public function addEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	/**
	*  @param type
	*  @param listener
	*  @param useCapture (optional argument, default value is <code>false</code>)
	*/
	public function removeEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	/**
	*  @param evt
	*  @return A <code>Boolean</code> instance.
	*/
	public function dispatchEvent(evt:DomEvent):Boolean { return false;}
}

}