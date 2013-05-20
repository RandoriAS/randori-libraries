
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/xml/XMLHttpRequest.idl

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


package randori.webkit.xml
{

import randori.webkit.dom.Document;
import randori.webkit.dom.DomEvent;
import randori.webkit.html.canvas.ArrayBuffer;
import randori.webkit.fileapi.Blob;
import randori.webkit.html.FormData;

[JavaScript(export="false", name="XMLHttpRequest")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class XMLHttpRequest
{
	/**
	*  Creates a new <code>XMLHttpRequest</code> instance.
	*/
	public function XMLHttpRequest() {super();}

	/**
	*  Function that accepts an event of type <code>AbortEvent</code>.
	*/
	public function get onabort():Function { return undefined; }
	public function set onabort(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ErrorEvent</code>.
	*  @see randori.webkit.dom.ErrorEvent
	*/
	public function get onerror():Function { return undefined; }
	public function set onerror(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>LoadEvent</code>.
	*/
	public function get onload():Function { return undefined; }
	public function set onload(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>LoadendEvent</code>.
	*/
	public function get onloadend():Function { return undefined; }
	public function set onloadend(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>LoadstartEvent</code>.
	*/
	public function get onloadstart():Function { return undefined; }
	public function set onloadstart(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ProgressEvent</code>.
	*  @see randori.webkit.dom.ProgressEvent
	*/
	public function get onprogress():Function { return undefined; }
	public function set onprogress(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>TimeoutEvent</code>.
	*/
	public function get ontimeout():Function { return undefined; }
	public function set ontimeout(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ReadystatechangeEvent</code>.
	*/
	public function get onreadystatechange():Function { return undefined; }
	public function set onreadystatechange(value:Function):void { }
	public static const UNSENT:uint = 0;
	public static const OPENED:uint = 1;
	public static const HEADERS_RECEIVED:uint = 2;
	public static const LOADING:uint = 3;
	public static const DONE:uint = 4;

	public function get timeout():uint { return undefined; }
	public function set timeout(value:uint):void { }

	public function get readyState():uint { return undefined; }

	public function get withCredentials():Boolean { return undefined; }
	public function set withCredentials(value:Boolean):void { }
	/**
	*  @param method
	*  @param url (optional argument, default value is <code>undefined</code>)
	*  @param async (optional argument, default value is <code>undefined</code>)
	*  @param user (optional argument, default value is <code>undefined</code>)
	*  @param password (optional argument, default value is <code>undefined</code>)
	*/
	public function open(method:String, url:String=undefined, async:Boolean=undefined, user:String=undefined, password:String=undefined):void {}
	/**
	*  @param header
	*  @param value
	*/
	public function setRequestHeader(header:String, value:String):void {}
	public function abort():void {}

	/**
	*  @see randori.webkit.xml.XMLHttpRequestUpload
	*/
	public function get upload():XMLHttpRequestUpload { return undefined; }
	/**
	*  @return A <code>String</code> instance.
	*/
	public function getAllResponseHeaders():String { return undefined;}
	/**
	*  @param header
	*  @return A <code>String</code> instance.
	*/
	public function getResponseHeader(header:String):String { return undefined;}

	public function get responseText():String { return undefined; }

	/**
	*  @see randori.webkit.dom.Document
	*/
	public function get responseXML():Document { return undefined; }

	public function get responseType():Object { return undefined; }
	public function set responseType(value:Object):void { }

	public function get response():Object { return undefined; }

	public function get status():uint { return undefined; }

	public function get statusText():String { return undefined; }
	/**
	*  @param override
	*/
	public function overrideMimeType(override_:String):void {}
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
	*  @param evt
	*  @return A <code>Boolean</code> instance.
	*/
	public function dispatchEvent(evt:DomEvent):Boolean { return undefined;}
	/**
	*  @param data (optional argument, default value is <code>undefined</code>)
	*/
	public function send(data:*=undefined):void {}
	[JavaScriptMethod(name="send")]
	/**
	*  @param data
	*/
	public function sendArrayBuffer(data:ArrayBuffer):void {}
	[JavaScriptMethod(name="send")]
	/**
	*  @param data
	*/
	public function sendBlob(data:Blob):void {}
	[JavaScriptMethod(name="send")]
	/**
	*  @param data
	*/
	public function sendDocument(data:Document):void {}
	[JavaScriptMethod(name="send")]
	/**
	*  @param data
	*/
	public function sendString(data:String):void {}
	[JavaScriptMethod(name="send")]
	/**
	*  @param data
	*/
	public function sendFormData(data:FormData):void {}
}

}