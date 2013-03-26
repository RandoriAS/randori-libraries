
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/HTMLIFrameElement.idl

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

import randori.webkit.dom.Document;
import randori.webkit.page.Window;

[JavaScript(export="false", name="HTMLIFrameElement")]
[JavaScriptConstructor(factoryMethod="document.createElement('iframe')")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.html.HTMLElement
 */
public class HTMLIFrameElement extends HTMLElement
{
	/**
	*  Creates a new <code>HTMLIFrameElement</code> instance.
	*/
	public function HTMLIFrameElement() {super();}

	public function get align():String { return ''; }
	public function set align(value:String):void { }

	public function get frameBorder():String { return ''; }
	public function set frameBorder(value:String):void { }

	public function get height():String { return ''; }
	public function set height(value:String):void { }

	public function get longDesc():String { return ''; }
	public function set longDesc(value:String):void { }

	public function get marginHeight():String { return ''; }
	public function set marginHeight(value:String):void { }

	public function get marginWidth():String { return ''; }
	public function set marginWidth(value:String):void { }

	public function get name():String { return ''; }
	public function set name(value:String):void { }

	public function get sandbox():String { return ''; }
	public function set sandbox(value:String):void { }

	public function get seamless():Boolean { return false; }
	public function set seamless(value:Boolean):void { }

	public function get scrolling():String { return ''; }
	public function set scrolling(value:String):void { }

	public function get src():String { return ''; }
	public function set src(value:String):void { }

	public function get srcdoc():String { return ''; }
	public function set srcdoc(value:String):void { }

	public function get width():String { return ''; }
	public function set width(value:String):void { }

	/**
	*  @see randori.webkit.dom.Document
	*/
	public function get contentDocument():Document { return null; }

	/**
	*  @see randori.webkit.page.Window
	*/
	public function get contentWindow():Window { return null; }
}

}