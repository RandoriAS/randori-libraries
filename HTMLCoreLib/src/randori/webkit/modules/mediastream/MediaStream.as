
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/Modules/mediastream/MediaStream.idl

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


package randori.webkit.modules.mediastream
{

import randori.webkit.dom.DomEvent;

[JavaScript(export="false", nativecondition="MEDIA_STREAM", name="MediaStream")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class MediaStream
{
	/**
	*  This type has multiple constructors, which Actionscript 3 doesn't support.
	*  Therefore the constructors have been merged into one with optional parameters that are all typed to '*'
	*  The original signatures are as follow:
	*  MediaStream(tracks:Vector.<MediaStreamTrack>);
	*  MediaStream(stream:MediaStream);
	*  MediaStream();
	*  Creates a new <code>MediaStream</code> instance.
	*  @param tracks
	*/
	public function MediaStream(arg1:*=null) {super();}

	public function get label():String { return ''; }

	public function get id():String { return ''; }
	/**
	*  @return A <code>sequence</code> instance.
	*/
	public function getAudioTracks():Vector.<MediaStreamTrack> { return null;}
	/**
	*  @return A <code>sequence</code> instance.
	*/
	public function getVideoTracks():Vector.<MediaStreamTrack> { return null;}
	/**
	*  @param track
	*/
	public function addTrack(track:MediaStreamTrack):void {}
	/**
	*  @param track
	*/
	public function removeTrack(track:MediaStreamTrack):void {}
	/**
	*  @param trackId
	*  @return A <code>MediaStreamTrack</code> instance.
	*/
	public function getTrackById(trackId:String):MediaStreamTrack { return null;}

	public function get ended():Boolean { return false; }

	/**
	*  Function that accepts an event of type <code>EndedEvent</code>.
	*/
	public function get onended():Function { return null; }
	public function set onended(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>AddtrackEvent</code>.
	*/
	public function get onaddtrack():Function { return null; }
	public function set onaddtrack(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>RemovetrackEvent</code>.
	*/
	public function get onremovetrack():Function { return null; }
	public function set onremovetrack(value:Function):void { }
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
	*  @param event
	*  @return A <code>Boolean</code> instance.
	*/
	public function dispatchEvent(event:DomEvent):Boolean { return false;}
}

}