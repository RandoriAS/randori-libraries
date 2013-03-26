
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/HTMLScriptElement.idl

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


[JavaScript(export="false", name="HTMLScriptElement")]
[JavaScriptConstructor(factoryMethod="document.createElement('script')")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.html.HTMLElement
 */
public class HTMLScriptElement extends HTMLElement
{
	/**
	*  Creates a new <code>HTMLScriptElement</code> instance.
	*/
	public function HTMLScriptElement() {super();}

	public function get text():String { return ''; }
	public function set text(value:String):void { }

	public function get htmlFor():String { return ''; }
	public function set htmlFor(value:String):void { }

	public function get event():String { return ''; }
	public function set event(value:String):void { }

	public function get charset():String { return ''; }
	public function set charset(value:String):void { }

	public function get async():Boolean { return false; }
	public function set async(value:Boolean):void { }

	public function get defer():Boolean { return false; }
	public function set defer(value:Boolean):void { }

	public function get src():String { return ''; }
	public function set src(value:String):void { }

	public function get type():String { return ''; }
	public function set type(value:String):void { }

	public function get crossOrigin():String { return ''; }
	public function set crossOrigin(value:String):void { }

	public function get nonce():String { return ''; }
	public function set nonce(value:String):void { }
}

}