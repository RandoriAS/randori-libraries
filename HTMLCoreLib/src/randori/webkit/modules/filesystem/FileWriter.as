
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/Modules/filesystem/FileWriter.idl

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


package randori.webkit.modules.filesystem
{

import randori.webkit.fileapi.Blob;
import randori.webkit.fileapi.FileError;
import randori.webkit.dom.DomEvent;

[JavaScript(export="false", nativecondition="FILE_SYSTEM", name="FileWriter")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class FileWriter
{
	public static const INIT:uint = 0;
	public static const WRITING:uint = 1;
	public static const DONE:uint = 2;

	public function get readyState():uint { return undefined; }
	/**
	*  @param data
	*/
	public function write(data:Blob):void {}
	/**
	*  @param position
	*/
	public function seek(position:Number):void {}
	/**
	*  @param size
	*/
	public function truncate(size:Number):void {}
	public function abort():void {}

	/**
	*  @see randori.webkit.fileapi.FileError
	*/
	public function get error():FileError { return undefined; }

	public function get position():Number { return undefined; }

	public function get length():Number { return undefined; }

	/**
	*  Function that accepts an event of type <code>WritestartEvent</code>.
	*/
	public function get onwritestart():Function { return undefined; }
	public function set onwritestart(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ProgressEvent</code>.
	*  @see randori.webkit.dom.ProgressEvent
	*/
	public function get onprogress():Function { return undefined; }
	public function set onprogress(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>WriteEvent</code>.
	*/
	public function get onwrite():Function { return undefined; }
	public function set onwrite(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>AbortEvent</code>.
	*/
	public function get onabort():Function { return undefined; }
	public function set onabort(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ErrorEvent</code>.
	*  @see randori.webkit.dom.ErrorEvent
	*/
	public function get onerror():Function { return undefined; }
	public function set onerror(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>WriteendEvent</code>.
	*/
	public function get onwriteend():Function { return undefined; }
	public function set onwriteend(value:Function):void { }
	/**
	*  @param type
	*  @param listener (optional argument, default value is <code>undefined</code>)
	*  @param useCapture (optional argument, default value is <code>undefined</code>)
	*/
	public function addEventListener(type:String, listener:Function=undefined, useCapture:Boolean=undefined):void {}
	/**
	*  @param type
	*  @param listener (optional argument, default value is <code>undefined</code>)
	*  @param useCapture (optional argument, default value is <code>undefined</code>)
	*/
	public function removeEventListener(type:String, listener:Function=undefined, useCapture:Boolean=undefined):void {}
	/**
	*  @param evt
	*  @return A <code>Boolean</code> instance.
	*/
	public function dispatchEvent(evt:DomEvent):Boolean { return undefined;}
}

}