
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/HTMLMarqueeElement.idl

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


[JavaScript(export="false", name="HTMLMarqueeElement")]
[JavaScriptConstructor(factoryMethod="document.createElement('marquee')")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.html.HTMLElement
 */
public class HTMLMarqueeElement extends HTMLElement
{
	/**
	*  Creates a new <code>HTMLMarqueeElement</code> instance.
	*/
	public function HTMLMarqueeElement() {super();}
	public function start():void {}
	public function stop():void {}

	public function get behavior():String { return ''; }
	public function set behavior(value:String):void { }

	public function get bgColor():String { return ''; }
	public function set bgColor(value:String):void { }

	public function get direction():String { return ''; }
	public function set direction(value:String):void { }

	public function get height():String { return ''; }
	public function set height(value:String):void { }

	public function get hspace():uint { return 0; }
	public function set hspace(value:uint):void { }

	public function get loop():uint { return 0; }
	public function set loop(value:uint):void { }

	public function get scrollAmount():uint { return 0; }
	public function set scrollAmount(value:uint):void { }

	public function get scrollDelay():uint { return 0; }
	public function set scrollDelay(value:uint):void { }

	public function get trueSpeed():Boolean { return false; }
	public function set trueSpeed(value:Boolean):void { }

	public function get vspace():uint { return 0; }
	public function set vspace(value:uint):void { }

	public function get width():String { return ''; }
	public function set width(value:String):void { }
}

}