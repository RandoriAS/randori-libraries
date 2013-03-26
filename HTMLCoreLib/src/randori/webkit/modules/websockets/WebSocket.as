
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/Modules/websockets/WebSocket.idl

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


package randori.webkit.modules.websockets
{

import randori.webkit.html.canvas.ArrayBuffer;
import randori.webkit.dom.DomEvent;

[JavaScript(export="false", nativecondition="WEB_SOCKETS", name="WebSocket")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class WebSocket
{
	/**
	*  This type has multiple constructors, which Actionscript 3 doesn't support.
	*  Therefore the constructors have been merged into one with optional parameters that are all typed to '*'
	*  The original signatures are as follow:
	*  WebSocket(url:String, protocol:String);
	*  WebSocket(url:String, protocols:Vector.<String>);
	*  WebSocket(url:String);
	*  Creates a new <code>WebSocket</code> instance.
	*  @param url
	*  @param protocol
	*/
	public function WebSocket(arg1:*=null, arg2:*=null) {super();}

	[JavaScriptProperty(name="URL")]
	public function get URL_():String { return ''; }

	public function get url():String { return ''; }
	public static const CONNECTING:uint = 0;
	public static const OPEN:uint = 1;
	public static const CLOSING:uint = 2;
	public static const CLOSED:uint = 3;

	public function get readyState():uint { return 0; }

	public function get bufferedAmount():uint { return 0; }

	/**
	*  Function that accepts an event of type <code>OpenEvent</code>.
	*/
	public function get onopen():Function { return null; }
	public function set onopen(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>MessageEvent</code>.
	*  @see randori.webkit.dom.MessageEvent
	*/
	public function get onmessage():Function { return null; }
	public function set onmessage(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ErrorEvent</code>.
	*  @see randori.webkit.dom.ErrorEvent
	*/
	public function get onerror():Function { return null; }
	public function set onerror(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>CloseEvent</code>.
	*  @see randori.webkit.modules.websockets.CloseEvent
	*/
	public function get onclose():Function { return null; }
	public function set onclose(value:Function):void { }

	public function get protocol():String { return ''; }

	public function get extensions():String { return ''; }

	public function get binaryType():String { return ''; }
	public function set binaryType(value:String):void { }
	/**
	*  @param data
	*  @return A <code>Boolean</code> instance.
	*/
	public function send(data:ArrayBuffer):Boolean { return false;}
	/**
	*  @param code (optional argument, default value is <code>0</code>)
	*  @param reason (optional argument, default value is <code>''</code>)
	*/
	public function close(code:uint=0, reason:String=''):void {}
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