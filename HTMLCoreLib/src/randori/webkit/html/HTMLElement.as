
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/HTMLElement.idl

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

import randori.webkit.dom.Element;

[JavaScript(export="false", name="HTMLElement")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.dom.Element
 */
public class HTMLElement extends Element
{

	public function get id():String { return ''; }
	public function set id(value:String):void { }

	public function get title():String { return ''; }
	public function set title(value:String):void { }

	public function get lang():String { return ''; }
	public function set lang(value:String):void { }

	public function get translate():Boolean { return false; }
	public function set translate(value:Boolean):void { }

	public function get dir():String { return ''; }
	public function set dir(value:String):void { }

	public function get tabIndex():uint { return 0; }
	public function set tabIndex(value:uint):void { }

	public function get draggable():Boolean { return false; }
	public function set draggable(value:Boolean):void { }

	public function get hidden():Boolean { return false; }
	public function set hidden(value:Boolean):void { }

	public function get accessKey():String { return ''; }
	public function set accessKey(value:String):void { }

	public function get innerHTML():String { return ''; }
	public function set innerHTML(value:String):void { }

	public function get innerText():String { return ''; }
	public function set innerText(value:String):void { }

	public function get outerHTML():String { return ''; }
	public function set outerHTML(value:String):void { }

	public function get outerText():String { return ''; }
	public function set outerText(value:String):void { }
	/**
	*  @param where (optional argument, default value is <code>undefined</code>)
	*  @param element (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Element</code> instance.
	*/
	public function insertAdjacentElement(where:String=undefined, element:Element=undefined):Element { return null;}
	/**
	*  @param where (optional argument, default value is <code>undefined</code>)
	*  @param html (optional argument, default value is <code>undefined</code>)
	*/
	public function insertAdjacentHTML(where:String=undefined, html:String=undefined):void {}
	/**
	*  @param where (optional argument, default value is <code>undefined</code>)
	*  @param text (optional argument, default value is <code>undefined</code>)
	*/
	public function insertAdjacentText(where:String=undefined, text:String=undefined):void {}

	/**
	*  @see randori.webkit.html.HTMLCollection
	*/
	public function get children():HTMLCollection { return null; }

	public function get contentEditable():String { return ''; }
	public function set contentEditable(value:String):void { }

	public function get isContentEditable():Boolean { return false; }

	public function get spellcheck():Boolean { return false; }
	public function set spellcheck(value:Boolean):void { }

	public function get itemScope():Boolean { return false; }
	public function set itemScope(value:Boolean):void { }

	/**
	*  @see randori.webkit.html.DOMSettableTokenList
	*/
	public function get itemType():DOMSettableTokenList { return null; }

	public function get itemId():String { return ''; }
	public function set itemId(value:String):void { }

	/**
	*  @see randori.webkit.html.DOMSettableTokenList
	*/
	public function get itemRef():DOMSettableTokenList { return null; }

	/**
	*  @see randori.webkit.html.DOMSettableTokenList
	*/
	public function get itemProp():DOMSettableTokenList { return null; }

	public function get itemValue():* { return null; }
	public function set itemValue(value:*):void { }
	public function click():void {}
}

}