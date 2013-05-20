
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/HTMLInputElement.idl

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

import randori.webkit.fileapi.FileList;
import randori.webkit.dom.NodeList;

[JavaScript(export="false", name="HTMLInputElement")]
[JavaScriptConstructor(factoryMethod="document.createElement('input')")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.html.HTMLElement
 */
public class HTMLInputElement extends HTMLElement
{
	/**
	*  Creates a new <code>HTMLInputElement</code> instance.
	*/
	public function HTMLInputElement() {super();}

	public function get accept():String { return undefined; }
	public function set accept(value:String):void { }

	public function get alt():String { return undefined; }
	public function set alt(value:String):void { }

	public function get autocomplete():String { return undefined; }
	public function set autocomplete(value:String):void { }

	public function get autofocus():Boolean { return undefined; }
	public function set autofocus(value:Boolean):void { }

	public function get defaultChecked():Boolean { return undefined; }
	public function set defaultChecked(value:Boolean):void { }

	public function get checked():Boolean { return undefined; }
	public function set checked(value:Boolean):void { }

	public function get dirName():String { return undefined; }
	public function set dirName(value:String):void { }

	public function get disabled():Boolean { return undefined; }
	public function set disabled(value:Boolean):void { }

	/**
	*  @see randori.webkit.html.HTMLFormElement
	*/
	public function get form():HTMLFormElement { return undefined; }

	/**
	*  @see randori.webkit.fileapi.FileList
	*/
	public function get files():FileList { return undefined; }
	public function set files(value:FileList):void { }

	public function get formAction():String { return undefined; }
	public function set formAction(value:String):void { }

	public function get formEnctype():String { return undefined; }
	public function set formEnctype(value:String):void { }

	public function get formMethod():String { return undefined; }
	public function set formMethod(value:String):void { }

	public function get formNoValidate():Boolean { return undefined; }
	public function set formNoValidate(value:Boolean):void { }

	public function get formTarget():String { return undefined; }
	public function set formTarget(value:String):void { }

	public function get height():uint { return undefined; }
	public function set height(value:uint):void { }

	public function get indeterminate():Boolean { return undefined; }
	public function set indeterminate(value:Boolean):void { }

	/**
	*  @see randori.webkit.html.HTMLElement
	*/
	public function get list():HTMLElement { return undefined; }

	public function get max():String { return undefined; }
	public function set max(value:String):void { }

	public function get maxLength():uint { return undefined; }
	public function set maxLength(value:uint):void { }

	public function get min():String { return undefined; }
	public function set min(value:String):void { }

	public function get multiple():Boolean { return undefined; }
	public function set multiple(value:Boolean):void { }

	public function get name():String { return undefined; }
	public function set name(value:String):void { }

	public function get pattern():String { return undefined; }
	public function set pattern(value:String):void { }

	public function get placeholder():String { return undefined; }
	public function set placeholder(value:String):void { }

	[JavaScriptProperty(name="readOnly")]
	public function get readOnly_():Boolean { return undefined; }
	public function set readOnly_(value:Boolean):void { }

	public function get required():Boolean { return undefined; }
	public function set required(value:Boolean):void { }

	public function get size():uint { return undefined; }
	public function set size(value:uint):void { }

	public function get src():String { return undefined; }
	public function set src(value:String):void { }

	public function get step():String { return undefined; }
	public function set step(value:String):void { }

	public function get type():String { return undefined; }
	public function set type(value:String):void { }

	public function get defaultValue():String { return undefined; }
	public function set defaultValue(value:String):void { }

	public function get value():String { return undefined; }
	public function set value(value:String):void { }

	public function get valueAsDate():Object { return undefined; }
	public function set valueAsDate(value:Object):void { }

	public function get valueAsNumber():Number { return undefined; }
	public function set valueAsNumber(value:Number):void { }
	/**
	*  @param n (optional argument, default value is <code>undefined</code>)
	*/
	public function stepUp(n:uint=undefined):void {}
	/**
	*  @param n (optional argument, default value is <code>undefined</code>)
	*/
	public function stepDown(n:uint=undefined):void {}

	public function get width():uint { return undefined; }
	public function set width(value:uint):void { }

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

	public function get align():String { return undefined; }
	public function set align(value:String):void { }

	public function get useMap():String { return undefined; }
	public function set useMap(value:String):void { }

	public function get incremental():Boolean { return undefined; }
	public function set incremental(value:Boolean):void { }

	public function get capture():String { return undefined; }
	public function set capture(value:String):void { }
}

}