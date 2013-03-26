
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/HTMLImageElement.idl

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


[JavaScript(export="false", name="HTMLImageElement")]
[JavaScriptConstructor(factoryMethod="document.createElement('img')")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.html.HTMLElement
 */
public class HTMLImageElement extends HTMLElement
{
	/**
	*  Creates a new <code>HTMLImageElement</code> instance.
	*/
	public function HTMLImageElement() {super();}

	public function get name():String { return ''; }
	public function set name(value:String):void { }

	public function get align():String { return ''; }
	public function set align(value:String):void { }

	public function get alt():String { return ''; }
	public function set alt(value:String):void { }

	public function get border():String { return ''; }
	public function set border(value:String):void { }

	public function get crossOrigin():String { return ''; }
	public function set crossOrigin(value:String):void { }

	public function get height():uint { return 0; }
	public function set height(value:uint):void { }

	public function get hspace():uint { return 0; }
	public function set hspace(value:uint):void { }

	public function get isMap():Boolean { return false; }
	public function set isMap(value:Boolean):void { }

	public function get longDesc():String { return ''; }
	public function set longDesc(value:String):void { }

	public function get src():String { return ''; }
	public function set src(value:String):void { }

	public function get useMap():String { return ''; }
	public function set useMap(value:String):void { }

	public function get vspace():uint { return 0; }
	public function set vspace(value:uint):void { }

	public function get width():uint { return 0; }
	public function set width(value:uint):void { }

	public function get complete():Boolean { return false; }

	public function get lowsrc():String { return ''; }
	public function set lowsrc(value:String):void { }

	public function get naturalHeight():uint { return 0; }

	public function get naturalWidth():uint { return 0; }

	public function get x():uint { return 0; }

	public function get y():uint { return 0; }
}

}