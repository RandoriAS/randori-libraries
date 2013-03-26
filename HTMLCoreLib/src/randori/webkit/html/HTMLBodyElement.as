
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/HTMLBodyElement.idl

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


package randori.webkit.html
{


[JavaScript(export="false", name="HTMLBodyElement")]
[JavaScriptConstructor(factoryMethod="document.createElement('body')")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.html.HTMLElement
 */
public class HTMLBodyElement extends HTMLElement
{
	/**
	*  Creates a new <code>HTMLBodyElement</code> instance.
	*/
	public function HTMLBodyElement() {super();}

	public function get aLink():String { return ''; }
	public function set aLink(value:String):void { }

	public function get background():String { return ''; }
	public function set background(value:String):void { }

	public function get bgColor():String { return ''; }
	public function set bgColor(value:String):void { }

	public function get link():String { return ''; }
	public function set link(value:String):void { }

	public function get text():String { return ''; }
	public function set text(value:String):void { }

	public function get vLink():String { return ''; }
	public function set vLink(value:String):void { }

	/**
	*  Function that accepts an event of type <code>BeforeunloadEvent</code>.
	*/
	public function get onbeforeunload():Function { return null; }
	public function set onbeforeunload(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>HashchangeEvent</code>.
	*  @see randori.webkit.dom.HashChangeEvent
	*/
	public function get onhashchange():Function { return null; }
	public function set onhashchange(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>MessageEvent</code>.
	*  @see randori.webkit.dom.MessageEvent
	*/
	public function get onmessage():Function { return null; }
	public function set onmessage(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>OfflineEvent</code>.
	*/
	public function get onoffline():Function { return null; }
	public function set onoffline(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>OnlineEvent</code>.
	*/
	public function get ononline():Function { return null; }
	public function set ononline(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>PopstateEvent</code>.
	*  @see randori.webkit.dom.PopStateEvent
	*/
	public function get onpopstate():Function { return null; }
	public function set onpopstate(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ResizeEvent</code>.
	*/
	public function get onresize():Function { return null; }
	public function set onresize(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>StorageEvent</code>.
	*  @see randori.webkit.storage.StorageEvent
	*/
	public function get onstorage():Function { return null; }
	public function set onstorage(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>UnloadEvent</code>.
	*/
	public function get onunload():Function { return null; }
	public function set onunload(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>OrientationchangeEvent</code>.
	*/
	public function get onorientationchange():Function { return null; }
	public function set onorientationchange(value:Function):void { }
}

}