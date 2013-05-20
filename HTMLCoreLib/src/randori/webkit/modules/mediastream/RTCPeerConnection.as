
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/Modules/mediastream/RTCPeerConnection.idl

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

[JavaScript(export="false", nativecondition="MEDIA_STREAM", name="RTCPeerConnection")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class RTCPeerConnection
{
	/**
	*  Creates a new <code>RTCPeerConnection</code> instance.
	*  @param rtcIceServers
	*  @param mediaConstraints (optional argument, default value is <code>undefined</code>)
	*/
	public function RTCPeerConnection(rtcIceServers:Object, mediaConstraints:Object=undefined) {super();}
	/**
	*  @param successCallback
	*  @param failureCallback (optional argument, default value is <code>undefined</code>)
	*  @param mediaConstraints (optional argument, default value is <code>undefined</code>)
	*/
	public function createOffer(successCallback:Object, failureCallback:Object=undefined, mediaConstraints:Object=undefined):void {}
	/**
	*  @param successCallback
	*  @param failureCallback (optional argument, default value is <code>undefined</code>)
	*  @param mediaConstraints (optional argument, default value is <code>undefined</code>)
	*/
	public function createAnswer(successCallback:Object, failureCallback:Object=undefined, mediaConstraints:Object=undefined):void {}
	/**
	*  @param description
	*  @param successCallback (optional argument, default value is <code>undefined</code>)
	*  @param failureCallback (optional argument, default value is <code>undefined</code>)
	*/
	public function setLocalDescription(description:RTCSessionDescription, successCallback:Object=undefined, failureCallback:Object=undefined):void {}

	/**
	*  @see randori.webkit.modules.mediastream.RTCSessionDescription
	*/
	public function get localDescription():RTCSessionDescription { return undefined; }
	/**
	*  @param description
	*  @param successCallback (optional argument, default value is <code>undefined</code>)
	*  @param failureCallback (optional argument, default value is <code>undefined</code>)
	*/
	public function setRemoteDescription(description:RTCSessionDescription, successCallback:Object=undefined, failureCallback:Object=undefined):void {}

	/**
	*  @see randori.webkit.modules.mediastream.RTCSessionDescription
	*/
	public function get remoteDescription():RTCSessionDescription { return undefined; }

	public function get signalingState():String { return undefined; }
	/**
	*  @param configuration (optional argument, default value is <code>undefined</code>)
	*  @param mediaConstraints (optional argument, default value is <code>undefined</code>)
	*/
	public function updateIce(configuration:Object=undefined, mediaConstraints:Object=undefined):void {}
	/**
	*  @param candidate
	*/
	public function addIceCandidate(candidate:RTCIceCandidate):void {}

	public function get iceGatheringState():String { return undefined; }

	public function get iceConnectionState():String { return undefined; }
	/**
	*  @return A <code>sequence</code> instance.
	*/
	public function getLocalStreams():Vector.<MediaStream> { return undefined;}
	/**
	*  @return A <code>sequence</code> instance.
	*/
	public function getRemoteStreams():Vector.<MediaStream> { return undefined;}
	/**
	*  @param streamId
	*  @return A <code>MediaStream</code> instance.
	*/
	public function getStreamById(streamId:String):MediaStream { return undefined;}
	/**
	*  @param stream
	*  @param mediaConstraints (optional argument, default value is <code>undefined</code>)
	*/
	public function addStream(stream:MediaStream, mediaConstraints:Object=undefined):void {}
	/**
	*  @param stream
	*/
	public function removeStream(stream:MediaStream):void {}
	/**
	*  @param successCallback
	*  @param selector (optional argument, default value is <code>undefined</code>)
	*/
	public function getStats(successCallback:Object, selector:MediaStreamTrack=undefined):void {}
	/**
	*  @param label
	*  @param options (optional argument, default value is <code>undefined</code>)
	*  @return A <code>RTCDataChannel</code> instance.
	*/
	public function createDataChannel(label:String, options:Object=undefined):RTCDataChannel { return undefined;}
	/**
	*  @param track
	*  @return A <code>RTCDTMFSender</code> instance.
	*/
	public function createDTMFSender(track:MediaStreamTrack):RTCDTMFSender { return undefined;}
	public function close():void {}

	/**
	*  Function that accepts an event of type <code>NegotiationneededEvent</code>.
	*/
	public function get onnegotiationneeded():Function { return undefined; }
	public function set onnegotiationneeded(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>IcecandidateEvent</code>.
	*/
	public function get onicecandidate():Function { return undefined; }
	public function set onicecandidate(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>SignalingstatechangeEvent</code>.
	*/
	public function get onsignalingstatechange():Function { return undefined; }
	public function set onsignalingstatechange(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>AddstreamEvent</code>.
	*/
	public function get onaddstream():Function { return undefined; }
	public function set onaddstream(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>RemovestreamEvent</code>.
	*/
	public function get onremovestream():Function { return undefined; }
	public function set onremovestream(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>IceconnectionstatechangeEvent</code>.
	*/
	public function get oniceconnectionstatechange():Function { return undefined; }
	public function set oniceconnectionstatechange(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DatachannelEvent</code>.
	*/
	public function get ondatachannel():Function { return undefined; }
	public function set ondatachannel(value:Function):void { }
	/**
	*  @param type
	*  @param listener (optional argument, default value is <code>undefined</code>)
	*  @param useCapture (optional argument, default value is <code>undefined</code>)
	*/
	public function addEventListener(type:String, listener:Function=undefined, useCapture:Boolean=undefined):void {}
	/**
	*  @param type
	*  @param listener (optional argument, default value is <code>undefined</code>)
	*  @param useCapture (optional argument, default value is <code>undefined</code>)
	*/
	public function removeEventListener(type:String, listener:Function=undefined, useCapture:Boolean=undefined):void {}
	/**
	*  @param event
	*  @return A <code>Boolean</code> instance.
	*/
	public function dispatchEvent(event:DomEvent):Boolean { return undefined;}
}

}