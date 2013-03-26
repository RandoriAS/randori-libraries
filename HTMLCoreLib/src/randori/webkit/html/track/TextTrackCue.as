
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/track/TextTrackCue.idl

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


package randori.webkit.html.track
{

import randori.webkit.dom.DocumentFragment;
import randori.webkit.dom.DomEvent;

[JavaScript(export="false", nativecondition="VIDEO_TRACK", name="TextTrackCue")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class TextTrackCue
{
	/**
	*  Creates a new <code>TextTrackCue</code> instance.
	*  @param startTime
	*  @param endTime
	*  @param text
	*/
	public function TextTrackCue(startTime:Number, endTime:Number, text:String) {super();}

	/**
	*  @see randori.webkit.html.track.TextTrack
	*/
	public function get track():TextTrack { return null; }

	public function get id():String { return ''; }
	public function set id(value:String):void { }

	public function get startTime():Number { return 0; }
	public function set startTime(value:Number):void { }

	public function get endTime():Number { return 0; }
	public function set endTime(value:Number):void { }

	public function get pauseOnExit():Boolean { return false; }
	public function set pauseOnExit(value:Boolean):void { }

	public function get vertical():String { return ''; }
	public function set vertical(value:String):void { }

	public function get snapToLines():Boolean { return false; }
	public function set snapToLines(value:Boolean):void { }

	public function get line():uint { return 0; }
	public function set line(value:uint):void { }

	public function get position():uint { return 0; }
	public function set position(value:uint):void { }

	public function get size():uint { return 0; }
	public function set size(value:uint):void { }

	public function get align():String { return ''; }
	public function set align(value:String):void { }

	public function get text():String { return ''; }
	public function set text(value:String):void { }
	/**
	*  @return A <code>DocumentFragment</code> instance.
	*/
	public function getCueAsHTML():DocumentFragment { return null;}

	/**
	*  Function that accepts an event of type <code>EnterEvent</code>.
	*/
	public function get onenter():Function { return null; }
	public function set onenter(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ExitEvent</code>.
	*/
	public function get onexit():Function { return null; }
	public function set onexit(value:Function):void { }
	/**
	*  @param type
	*  @param listener
	*  @param useCapture (optional argument, default value is <code>false</code>)
	*/
	public function addEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	/**
	*  @param type
	*  @param listener
	*  @param useCapture (optional argument, default value is <code>false</code>)
	*/
	public function removeEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	/**
	*  @param evt
	*  @return A <code>Boolean</code> instance.
	*/
	public function dispatchEvent(evt:DomEvent):Boolean { return false;}
}

}