
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/HTMLLinkElement.idl

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

import randori.webkit.css.StyleSheet;

[JavaScript(export="false", name="HTMLLinkElement")]
[JavaScriptConstructor(factoryMethod="document.createElement('link')")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.html.HTMLElement
 */
public class HTMLLinkElement extends HTMLElement
{
	/**
	*  Creates a new <code>HTMLLinkElement</code> instance.
	*/
	public function HTMLLinkElement() {super();}

	public function get disabled():Boolean { return undefined; }
	public function set disabled(value:Boolean):void { }

	public function get charset():String { return undefined; }
	public function set charset(value:String):void { }

	public function get href():String { return undefined; }
	public function set href(value:String):void { }

	public function get hreflang():String { return undefined; }
	public function set hreflang(value:String):void { }

	public function get media():String { return undefined; }
	public function set media(value:String):void { }

	public function get rel():String { return undefined; }
	public function set rel(value:String):void { }

	public function get rev():String { return undefined; }
	public function set rev(value:String):void { }

	/**
	*  @see randori.webkit.html.DOMSettableTokenList
	*/
	public function get sizes():DOMSettableTokenList { return undefined; }
	public function set sizes(value:DOMSettableTokenList):void { }

	public function get target():String { return undefined; }
	public function set target(value:String):void { }

	public function get type():String { return undefined; }
	public function set type(value:String):void { }

	/**
	*  @see randori.webkit.css.StyleSheet
	*/
	public function get sheet():StyleSheet { return undefined; }
}

}