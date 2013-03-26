
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/HTMLTrackElement.idl

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

import randori.webkit.html.track.TextTrack;

[JavaScript(export="false", nativecondition="VIDEO_TRACK", name="HTMLTrackElement")]
[JavaScriptConstructor(factoryMethod="document.createElement('track')")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.html.HTMLElement
 */
public class HTMLTrackElement extends HTMLElement
{
	/**
	*  Creates a new <code>HTMLTrackElement</code> instance.
	*/
	public function HTMLTrackElement() {super();}

	public function get kind():String { return ''; }
	public function set kind(value:String):void { }

	public function get src():String { return ''; }
	public function set src(value:String):void { }

	public function get srclang():String { return ''; }
	public function set srclang(value:String):void { }

	public function get label():String { return ''; }
	public function set label(value:String):void { }

	[JavaScriptProperty(name="default")]
	public function get default_():Boolean { return false; }
	public function set default_(value:Boolean):void { }
	public static const NONE:uint = 0;
	public static const LOADING:uint = 1;
	public static const LOADED:uint = 2;
	public static const ERROR:uint = 3;

	public function get readyState():uint { return 0; }

	/**
	*  @see randori.webkit.html.track.TextTrack
	*/
	public function get track():TextTrack { return null; }
}

}