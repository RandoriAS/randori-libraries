
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/loader/appcache/DOMApplicationCache.idl

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


package randori.webkit.loader.appcache
{

import randori.webkit.dom.DomEvent;

[JavaScript(export="false", name="DOMApplicationCache")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class DOMApplicationCache
{
	public static const UNCACHED:uint = 0;
	public static const IDLE:uint = 1;
	public static const CHECKING:uint = 2;
	public static const DOWNLOADING:uint = 3;
	public static const UPDATEREADY:uint = 4;
	public static const OBSOLETE:uint = 5;

	public function get status():uint { return 0; }
	public function update():void {}
	public function swapCache():void {}
	public function abort():void {}

	/**
	*  Function that accepts an event of type <code>CheckingEvent</code>.
	*/
	public function get onchecking():Function { return null; }
	public function set onchecking(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ErrorEvent</code>.
	*  @see randori.webkit.dom.ErrorEvent
	*/
	public function get onerror():Function { return null; }
	public function set onerror(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>NoupdateEvent</code>.
	*/
	public function get onnoupdate():Function { return null; }
	public function set onnoupdate(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DownloadingEvent</code>.
	*/
	public function get ondownloading():Function { return null; }
	public function set ondownloading(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ProgressEvent</code>.
	*  @see randori.webkit.dom.ProgressEvent
	*/
	public function get onprogress():Function { return null; }
	public function set onprogress(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>UpdatereadyEvent</code>.
	*/
	public function get onupdateready():Function { return null; }
	public function set onupdateready(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>CachedEvent</code>.
	*/
	public function get oncached():Function { return null; }
	public function set oncached(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ObsoleteEvent</code>.
	*/
	public function get onobsolete():Function { return null; }
	public function set onobsolete(value:Function):void { }
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