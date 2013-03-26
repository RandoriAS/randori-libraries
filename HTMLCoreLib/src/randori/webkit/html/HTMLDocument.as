
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/HTMLDocument.idl

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
import randori.webkit.dom.Element;

[JavaScript(export="false", name="HTMLDocument")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.dom.Document
 */
public class HTMLDocument extends Document
{
	public function open():void {}
	public function close():void {}
	/**
	*  @param text (optional argument, default value is <code>undefined</code>)
	*/
	public function write(text:String=undefined):void {}
	/**
	*  @param text (optional argument, default value is <code>undefined</code>)
	*/
	public function writeln(text:String=undefined):void {}

	/**
	*  @see randori.webkit.html.HTMLCollection
	*/
	public function get embeds():HTMLCollection { return null; }

	/**
	*  @see randori.webkit.html.HTMLCollection
	*/
	public function get plugins():HTMLCollection { return null; }

	/**
	*  @see randori.webkit.html.HTMLCollection
	*/
	public function get scripts():HTMLCollection { return null; }

	/**
	*  @see randori.webkit.html.HTMLAllCollection
	*/
	public function get all():HTMLAllCollection { return null; }
	public function set all(value:HTMLAllCollection):void { }
	public function clear():void {}
	public function captureEvents():void {}
	public function releaseEvents():void {}

	public function get width():uint { return 0; }

	public function get height():uint { return 0; }

	public function get dir():String { return ''; }
	public function set dir(value:String):void { }

	public function get designMode():String { return ''; }
	public function set designMode(value:String):void { }

	/**
	*  @see randori.webkit.dom.Element
	*/
	public function get activeElement():Element { return null; }
	/**
	*  @return A <code>Boolean</code> instance.
	*/
	public function hasFocus():Boolean { return false;}

	public function get bgColor():String { return ''; }
	public function set bgColor(value:String):void { }

	public function get fgColor():String { return ''; }
	public function set fgColor(value:String):void { }

	public function get alinkColor():String { return ''; }
	public function set alinkColor(value:String):void { }

	public function get linkColor():String { return ''; }
	public function set linkColor(value:String):void { }

	public function get vlinkColor():String { return ''; }
	public function set vlinkColor(value:String):void { }
}

}