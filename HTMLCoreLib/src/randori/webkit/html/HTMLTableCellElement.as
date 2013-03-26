
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/HTMLTableCellElement.idl

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


[JavaScript(export="false", name="HTMLTableCellElement")]
[JavaScriptConstructor(factoryMethod="document.createElement('td')")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.html.HTMLElement
 */
public class HTMLTableCellElement extends HTMLElement
{
	/**
	*  Creates a new <code>HTMLTableCellElement</code> instance.
	*/
	public function HTMLTableCellElement() {super();}

	public function get cellIndex():uint { return 0; }

	public function get abbr():String { return ''; }
	public function set abbr(value:String):void { }

	public function get align():String { return ''; }
	public function set align(value:String):void { }

	public function get axis():String { return ''; }
	public function set axis(value:String):void { }

	public function get bgColor():String { return ''; }
	public function set bgColor(value:String):void { }

	public function get ch():String { return ''; }
	public function set ch(value:String):void { }

	public function get chOff():String { return ''; }
	public function set chOff(value:String):void { }

	public function get colSpan():uint { return 0; }
	public function set colSpan(value:uint):void { }

	public function get headers():String { return ''; }
	public function set headers(value:String):void { }

	public function get height():String { return ''; }
	public function set height(value:String):void { }

	public function get noWrap():Boolean { return false; }
	public function set noWrap(value:Boolean):void { }

	public function get rowSpan():uint { return 0; }
	public function set rowSpan(value:uint):void { }

	public function get scope():String { return ''; }
	public function set scope(value:String):void { }

	public function get vAlign():String { return ''; }
	public function set vAlign(value:String):void { }

	public function get width():String { return ''; }
	public function set width(value:String):void { }
}

}