
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/UIEvent.idl

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

[JavaScript(export="false", name="UIEvent")]
/**
 *  <p>The <code>UIEvent</code> interface provides specific contextual
 *  information associated with User Interface events.</p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.dom.DomEvent
 */
public class UIEvent extends DomEvent
{

	/**
	*  <p>The <code>view</code> attribute identifies the
	*  <code>AbstractView</code> from which the event was generated.</p>
	*  @see randori.webkit.page.Window
	*/
	public function get view():Window { return null; }

	/**
	*  <p>Specifies some detail information about the <code>Event</code>,
	*  depending on the type of event.</p>
	*/
	public function get detail():uint { return 0; }
	/**
	*  <p>The <code>initUIEvent</code> method is used to initialize the value of a <code>UIEvent</code> created through
	*  the <code>DocumentEvent</code> interface.  This method may only be called before the <code>UIEvent</code> has
	*  been dispatched via the <code>dispatchEvent</code> method, though it may be called multiple times during that
	*  phase if necessary.  If called multiple times, the final invocation takes precedence.</p>
	*  @param typeArg <p>Specifies the event type.</p>
	*  @param canBubbleArg <p>Specifies whether or not the event can bubble.</p>
	*  @param cancelableArg <p>Specifies whether or not the event's default
	*  action can be prevented.</p>
	*  @param viewArg <p>Specifies the <code>Event</code>'s
	*  <code>AbstractView</code>.</p>
	*  @param detailArg <p>Specifies the <code>Event</code>'s detail.</p>
	*/
	public function initUIEvent(type:String=undefined, canBubble:Boolean=undefined, cancelable:Boolean=undefined, view:Window=undefined, detail:uint=undefined):void {}

	public function get keyCode():uint { return 0; }

	public function get charCode():uint { return 0; }

	public function get layerX():uint { return 0; }

	public function get layerY():uint { return 0; }

	public function get pageX():uint { return 0; }

	public function get pageY():uint { return 0; }

	public function get which():uint { return 0; }
}

}