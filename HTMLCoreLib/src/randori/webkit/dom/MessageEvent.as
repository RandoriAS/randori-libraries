
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/MessageEvent.idl

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


package randori.webkit.dom
{

import randori.webkit.page.Window;

[JavaScript(export="false", name="MessageEvent")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.dom.DomEvent
 */
public class MessageEvent extends DomEvent
{

	public function get origin():String { return undefined; }

	public function get lastEventId():String { return undefined; }

	/**
	*  @see randori.webkit.page.Window
	*/
	public function get source():Window { return undefined; }

	public function get data():* { return undefined; }

	public function get ports():Array { return undefined; }
	/**
	*  @param typeArg (optional argument, default value is <code>undefined</code>)
	*  @param canBubbleArg (optional argument, default value is <code>undefined</code>)
	*  @param cancelableArg (optional argument, default value is <code>undefined</code>)
	*  @param dataArg (optional argument, default value is <code>undefined</code>)
	*  @param originArg (optional argument, default value is <code>undefined</code>)
	*  @param lastEventIdArg (optional argument, default value is <code>undefined</code>)
	*  @param sourceArg (optional argument, default value is <code>undefined</code>)
	*  @param messagePorts (optional argument, default value is <code>undefined</code>)
	*/
	public function initMessageEvent(typeArg:String=undefined, canBubbleArg:Boolean=undefined, cancelableArg:Boolean=undefined, dataArg:*=undefined, originArg:String=undefined, lastEventIdArg:String=undefined, sourceArg:Window=undefined, messagePorts:Array=undefined):void {}
}

}