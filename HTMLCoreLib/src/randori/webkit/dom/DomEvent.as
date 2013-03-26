
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/Event.idl

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


package randori.webkit.dom
{


[JavaScript(export="false", name="Event")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class DomEvent
{
	public static const NONE:uint = 0;
	public static const CAPTURING_PHASE:uint = 1;
	public static const AT_TARGET:uint = 2;
	public static const BUBBLING_PHASE:uint = 3;
	public static const MOUSEDOWN:uint = 1;
	public static const MOUSEUP:uint = 2;
	public static const MOUSEOVER:uint = 4;
	public static const MOUSEOUT:uint = 8;
	public static const MOUSEMOVE:uint = 16;
	public static const MOUSEDRAG:uint = 32;
	public static const CLICK:uint = 64;
	public static const DBLCLICK:uint = 128;
	public static const KEYDOWN:uint = 256;
	public static const KEYUP:uint = 512;
	public static const KEYPRESS:uint = 1024;
	public static const DRAGDROP:uint = 2048;
	public static const FOCUS:uint = 4096;
	public static const BLUR:uint = 8192;
	public static const SELECT:uint = 16384;
	public static const CHANGE:uint = 32768;

	public function get type():String { return ''; }

	/**
	*  @see randori.webkit.dom.EventTarget
	*/
	public function get target():EventTarget { return null; }

	/**
	*  @see randori.webkit.dom.EventTarget
	*/
	public function get currentTarget():EventTarget { return null; }

	public function get eventPhase():uint { return 0; }

	public function get bubbles():Boolean { return false; }

	public function get cancelable():Boolean { return false; }

	public function get timeStamp():Object { return null; }
	public function stopPropagation():void {}
	public function preventDefault():void {}
	/**
	*  @param eventTypeArg (optional argument, default value is <code>undefined</code>)
	*  @param canBubbleArg (optional argument, default value is <code>undefined</code>)
	*  @param cancelableArg (optional argument, default value is <code>undefined</code>)
	*/
	public function initEvent(eventTypeArg:String=undefined, canBubbleArg:Boolean=undefined, cancelableArg:Boolean=undefined):void {}

	public function get defaultPrevented():Boolean { return false; }
	public function stopImmediatePropagation():void {}

	/**
	*  @see randori.webkit.dom.EventTarget
	*/
	public function get srcElement():EventTarget { return null; }

	public function get returnValue():Boolean { return false; }
	public function set returnValue(value:Boolean):void { }

	public function get cancelBubble():Boolean { return false; }
	public function set cancelBubble(value:Boolean):void { }

	/**
	*  @see randori.webkit.dom.Clipboard
	*/
	public function get clipboardData():Clipboard { return null; }
}

}