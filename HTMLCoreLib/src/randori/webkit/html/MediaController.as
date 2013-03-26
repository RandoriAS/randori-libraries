
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/MediaController.idl

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

import randori.webkit.dom.DomEvent;

[JavaScript(export="false", nativecondition="VIDEO", name="MediaController")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class MediaController
{
	/**
	*  Creates a new <code>MediaController</code> instance.
	*/
	public function MediaController() {super();}

	/**
	*  @see randori.webkit.html.TimeRanges
	*/
	public function get buffered():TimeRanges { return null; }

	/**
	*  @see randori.webkit.html.TimeRanges
	*/
	public function get seekable():TimeRanges { return null; }

	public function get duration():Number { return 0; }

	public function get currentTime():Number { return 0; }
	public function set currentTime(value:Number):void { }

	public function get paused():Boolean { return false; }

	/**
	*  @see randori.webkit.html.TimeRanges
	*/
	public function get played():TimeRanges { return null; }

	public function get playbackState():String { return ''; }
	public function play():void {}
	public function pause():void {}
	public function unpause():void {}

	public function get defaultPlaybackRate():Number { return 0; }
	public function set defaultPlaybackRate(value:Number):void { }

	public function get playbackRate():Number { return 0; }
	public function set playbackRate(value:Number):void { }

	public function get volume():Number { return 0; }
	public function set volume(value:Number):void { }

	public function get muted():Boolean { return false; }
	public function set muted(value:Boolean):void { }
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