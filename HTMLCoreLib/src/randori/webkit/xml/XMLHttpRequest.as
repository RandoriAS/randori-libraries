
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
import randori.webkit.fileapi.Blob;
import randori.webkit.html.FormData;
import randori.webkit.html.canvas.ArrayBuffer;

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
	public function get onabort():Function { return null; }
	public function set onabort(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ErrorEvent</code>.
	*  @see randori.webkit.dom.ErrorEvent
	*/
	public function get onerror():Function { return null; }
	public function set onerror(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>LoadEvent</code>.
	*/
	public function get onload():Function { return null; }
	public function set onload(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>LoadendEvent</code>.
	*/
	public function get onloadend():Function { return null; }
	public function set onloadend(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>LoadstartEvent</code>.
	*/
	public function get onloadstart():Function { return null; }
	public function set onloadstart(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ProgressEvent</code>.
	*  @see randori.webkit.dom.ProgressEvent
	*/
	public function get onprogress():Function { return null; }
	public function set onprogress(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>TimeoutEvent</code>.
	*/
	public function get ontimeout():Function { return null; }
	public function set ontimeout(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ReadystatechangeEvent</code>.
	*/
	public function get onreadystatechange():Function { return null; }
	public function set onreadystatechange(value:Function):void { }
	public static const UNSENT:uint = 0;
	public static const OPENED:uint = 1;
	public static const HEADERS_RECEIVED:uint = 2;
	public static const LOADING:uint = 3;
	public static const DONE:uint = 4;

	public function get timeout():uint { return 0; }
	public function set timeout(value:uint):void { }

	public function get readyState():uint { return 0; }

	public function get withCredentials():Boolean { return false; }
	public function set withCredentials(value:Boolean):void { }
	/**
	*  @param method
	*  @param url
	*  @param async (optional argument, default value is <code>false</code>)
	*  @param user (optional argument, default value is <code>''</code>)
	*  @param password (optional argument, default value is <code>''</code>)
	*/
	public function open(method:String, url:String, async:Boolean=false, user:String='', password:String=''):void {}
	/**
	*  @param header
	*  @param value
	*/
	public function setRequestHeader(header:String, value:String):void {}
	public function send( data:* = null ):void {}
    public function sendArrayBuffer(data:ArrayBuffer):void {}
    public function sendBlob(data:Blob):void {}
    public function sendDocument(data:Document):void {}
    public function sendString(data:String):void {}
    public function sendFormData(data:FormData):void {}

	public function abort():void {}

	/**
	*  @see randori.webkit.xml.XMLHttpRequestUpload
	*/
	public function get upload():XMLHttpRequestUpload { return null; }
	/**
	*  @return A <code>String</code> instance.
	*/
	public function getAllResponseHeaders():String { return '';}
	/**
	*  @param header
	*  @return A <code>String</code> instance.
	*/
	public function getResponseHeader(header:String):String { return '';}

	public function get responseText():String { return ''; }

	/**
	*  @see randori.webkit.dom.Document
	*/
	public function get responseXML():Document { return null; }

	public function get responseType():String { return ''; }
	public function set responseType(value:String):void { }

	public function get response():Object { return null; }

	public function get status():uint { return 0; }

	public function get statusText():String { return ''; }
	/**
	*  @param override
	*/
	public function overrideMimeType(override_:String):void {}
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