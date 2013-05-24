
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/css/FontLoader.idl

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


package randori.webkit.css
{

import randori.webkit.dom.DomEvent;

[JavaScript(export="false", nativecondition="FONT_LOAD_EVENTS", name="FontLoader")]
/**
 *  <note>This class depends on the browser to support: <code>FONT_LOAD_EVENTS</code></note>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class FontLoader
{

	public function get onloading():Function { return undefined; }
	public function set onloading(value:Function):void { }

	public function get onloadingdone():Function { return undefined; }
	public function set onloadingdone(value:Function):void { }

	public function get onloadstart():Function { return undefined; }
	public function set onloadstart(value:Function):void { }

	public function get onload():Function { return undefined; }
	public function set onload(value:Function):void { }

	public function get onerror():Function { return undefined; }
	public function set onerror(value:Function):void { }
	/**
	*  @param font
	*  @param text (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function checkFont(font:String, text:String=undefined):Boolean { return undefined;}
	/**
	*  @param params
	*/
	public function loadFont(params:Object):void {}
	/**
	*  @param callback
	*/
	public function notifyWhenFontsReady(callback:Object):void {}

	public function get loading():Boolean { return undefined; }
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