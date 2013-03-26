
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

	public function get accept():String { return ''; }
	public function set accept(value:String):void { }

	public function get alt():String { return ''; }
	public function set alt(value:String):void { }

	public function get autocomplete():String { return ''; }
	public function set autocomplete(value:String):void { }

	public function get autofocus():Boolean { return false; }
	public function set autofocus(value:Boolean):void { }

	public function get defaultChecked():Boolean { return false; }
	public function set defaultChecked(value:Boolean):void { }

	public function get checked():Boolean { return false; }
	public function set checked(value:Boolean):void { }

	public function get dirName():String { return ''; }
	public function set dirName(value:String):void { }

	public function get disabled():Boolean { return false; }
	public function set disabled(value:Boolean):void { }

	/**
	*  @see randori.webkit.html.HTMLFormElement
	*/
	public function get form():HTMLFormElement { return null; }

	/**
	*  @see randori.webkit.fileapi.FileList
	*/
	public function get files():FileList { return null; }
	public function set files(value:FileList):void { }

	public function get formAction():String { return ''; }
	public function set formAction(value:String):void { }

	public function get formEnctype():String { return ''; }
	public function set formEnctype(value:String):void { }

	public function get formMethod():String { return ''; }
	public function set formMethod(value:String):void { }

	public function get formNoValidate():Boolean { return false; }
	public function set formNoValidate(value:Boolean):void { }

	public function get formTarget():String { return ''; }
	public function set formTarget(value:String):void { }

	public function get height():uint { return 0; }
	public function set height(value:uint):void { }

	public function get indeterminate():Boolean { return false; }
	public function set indeterminate(value:Boolean):void { }

	/**
	*  @see randori.webkit.html.HTMLElement
	*/
	public function get list():HTMLElement { return null; }

	public function get max():String { return ''; }
	public function set max(value:String):void { }

	public function get maxLength():uint { return 0; }
	public function set maxLength(value:uint):void { }

	public function get min():String { return ''; }
	public function set min(value:String):void { }

	public function get multiple():Boolean { return false; }
	public function set multiple(value:Boolean):void { }

	public function get name():String { return ''; }
	public function set name(value:String):void { }

	public function get pattern():String { return ''; }
	public function set pattern(value:String):void { }

	public function get placeholder():String { return ''; }
	public function set placeholder(value:String):void { }

	[JavaScriptProperty(name="readOnly")]
	public function get readOnly_():Boolean { return false; }
	public function set readOnly_(value:Boolean):void { }

	public function get required():Boolean { return false; }
	public function set required(value:Boolean):void { }

	public function get size():uint { return 0; }
	public function set size(value:uint):void { }

	public function get src():String { return ''; }
	public function set src(value:String):void { }

	public function get step():String { return ''; }
	public function set step(value:String):void { }

	public function get type():String { return ''; }
	public function set type(value:String):void { }

	public function get defaultValue():String { return ''; }
	public function set defaultValue(value:String):void { }

	public function get value():String { return ''; }
	public function set value(value:String):void { }

	public function get valueAsDate():Object { return null; }
	public function set valueAsDate(value:Object):void { }

	public function get valueAsNumber():Number { return 0; }
	public function set valueAsNumber(value:Number):void { }
	/**
	*  @param n (optional argument, default value is <code>0</code>)
	*/
	public function stepUp(n:uint=0):void {}
	/**
	*  @param n (optional argument, default value is <code>0</code>)
	*/
	public function stepDown(n:uint=0):void {}

	public function get width():uint { return 0; }
	public function set width(value:uint):void { }

	public function get willValidate():Boolean { return false; }

	/**
	*  @see randori.webkit.html.ValidityState
	*/
	public function get validity():ValidityState { return null; }

	public function get validationMessage():String { return ''; }
	/**
	*  @return A <code>Boolean</code> instance.
	*/
	public function checkValidity():Boolean { return false;}
	/**
	*  @param error
	*/
	public function setCustomValidity(error:String):void {}

	/**
	*  @see randori.webkit.dom.NodeList
	*/
	public function get labels():NodeList { return null; }
	public function select():void {}

	public function get selectionStart():uint { return 0; }
	public function set selectionStart(value:uint):void { }

	public function get selectionEnd():uint { return 0; }
	public function set selectionEnd(value:uint):void { }

	public function get selectionDirection():String { return ''; }
	public function set selectionDirection(value:String):void { }
	/**
	*  @param replacement
	*  @param start
	*  @param end
	*  @param selectionMode (optional argument, default value is <code>null</code>)
	*/
	public function setRangeText(replacement:String, start:uint, end:uint, selectionMode:String=null):void {}
	/**
	*  @param start (optional argument, default value is <code>undefined</code>)
	*  @param end (optional argument, default value is <code>undefined</code>)
	*  @param direction (optional argument, default value is <code>''</code>)
	*/
	public function setSelectionRange(start:uint=undefined, end:uint=undefined, direction:String=''):void {}

	public function get align():String { return ''; }
	public function set align(value:String):void { }

	public function get useMap():String { return ''; }
	public function set useMap(value:String):void { }

	public function get incremental():Boolean { return false; }
	public function set incremental(value:Boolean):void { }

	public function get capture():String { return ''; }
	public function set capture(value:String):void { }
}

}