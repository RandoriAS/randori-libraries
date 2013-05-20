
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/HTMLTextAreaElement.idl

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

import randori.webkit.dom.NodeList;

[JavaScript(export="false", name="HTMLTextAreaElement")]
[JavaScriptConstructor(factoryMethod="document.createElement('textarea')")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.html.HTMLElement
 */
public class HTMLTextAreaElement extends HTMLElement
{
	/**
	*  Creates a new <code>HTMLTextAreaElement</code> instance.
	*/
	public function HTMLTextAreaElement() {super();}

	public function get autofocus():Boolean { return undefined; }
	public function set autofocus(value:Boolean):void { }

	public function get cols():uint { return undefined; }
	public function set cols(value:uint):void { }

	public function get dirName():String { return undefined; }
	public function set dirName(value:String):void { }

	public function get disabled():Boolean { return undefined; }
	public function set disabled(value:Boolean):void { }

	/**
	*  @see randori.webkit.html.HTMLFormElement
	*/
	public function get form():HTMLFormElement { return undefined; }

	public function get maxLength():uint { return undefined; }
	public function set maxLength(value:uint):void { }

	public function get name():String { return undefined; }
	public function set name(value:String):void { }

	public function get placeholder():String { return undefined; }
	public function set placeholder(value:String):void { }

	[JavaScriptProperty(name="readOnly")]
	public function get readOnly_():Boolean { return undefined; }
	public function set readOnly_(value:Boolean):void { }

	public function get required():Boolean { return undefined; }
	public function set required(value:Boolean):void { }

	public function get rows():uint { return undefined; }
	public function set rows(value:uint):void { }

	public function get wrap():String { return undefined; }
	public function set wrap(value:String):void { }

	public function get type():String { return undefined; }

	public function get defaultValue():String { return undefined; }
	public function set defaultValue(value:String):void { }

	public function get value():String { return undefined; }
	public function set value(value:String):void { }

	public function get textLength():uint { return undefined; }

	public function get willValidate():Boolean { return undefined; }

	/**
	*  @see randori.webkit.html.ValidityState
	*/
	public function get validity():ValidityState { return undefined; }

	public function get validationMessage():String { return undefined; }
	/**
	*  @return A <code>Boolean</code> instance.
	*/
	public function checkValidity():Boolean { return undefined;}
	/**
	*  @param error
	*/
	public function setCustomValidity(error:String):void {}

	/**
	*  @see randori.webkit.dom.NodeList
	*/
	public function get labels():NodeList { return undefined; }
	public function select():void {}

	public function get selectionStart():uint { return undefined; }
	public function set selectionStart(value:uint):void { }

	public function get selectionEnd():uint { return undefined; }
	public function set selectionEnd(value:uint):void { }

	public function get selectionDirection():String { return undefined; }
	public function set selectionDirection(value:String):void { }
	/**
	*  @param replacement
	*  @param start (optional argument, default value is <code>undefined</code>)
	*  @param end (optional argument, default value is <code>undefined</code>)
	*  @param selectionMode (optional argument, default value is <code>undefined</code>)
	*/
	public function setRangeText(replacement:String, start:uint=undefined, end:uint=undefined, selectionMode:String=undefined):void {}
	/**
	*  @param start (optional argument, default value is <code>undefined</code>)
	*  @param end (optional argument, default value is <code>undefined</code>)
	*  @param direction (optional argument, default value is <code>undefined</code>)
	*/
	public function setSelectionRange(start:uint=undefined, end:uint=undefined, direction:String=undefined):void {}
}

}