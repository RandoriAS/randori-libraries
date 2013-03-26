
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/HTMLFrameElement.idl

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

[JavaScript(export="false", name="HTMLFrameElement")]
[JavaScriptConstructor(factoryMethod="document.createElement('frame')")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.html.HTMLElement
 */
public class HTMLFrameElement extends HTMLElement
{
	/**
	*  Creates a new <code>HTMLFrameElement</code> instance.
	*/
	public function HTMLFrameElement() {super();}

	public function get frameBorder():String { return ''; }
	public function set frameBorder(value:String):void { }

	public function get longDesc():String { return ''; }
	public function set longDesc(value:String):void { }

	public function get marginHeight():String { return ''; }
	public function set marginHeight(value:String):void { }

	public function get marginWidth():String { return ''; }
	public function set marginWidth(value:String):void { }

	public function get name():String { return ''; }
	public function set name(value:String):void { }

	public function get noResize():Boolean { return false; }
	public function set noResize(value:Boolean):void { }

	public function get scrolling():String { return ''; }
	public function set scrolling(value:String):void { }

	public function get src():String { return ''; }
	public function set src(value:String):void { }

	/**
	*  @see randori.webkit.dom.Document
	*/
	public function get contentDocument():Document { return null; }

	/**
	*  @see randori.webkit.page.Window
	*/
	public function get contentWindow():Window { return null; }

	public function get location():String { return ''; }
	public function set location(value:String):void { }

	public function get width():uint { return 0; }

	public function get height():uint { return 0; }
}

}