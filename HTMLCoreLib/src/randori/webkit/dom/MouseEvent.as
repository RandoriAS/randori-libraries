
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/MouseEvent.idl

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

[JavaScript(export="false", name="MouseEvent")]
/**
 *  <p>The <code>MouseEvent</code> interface provides specific contextual
 *  information associated with Mouse events.</p><p>The <code>detail</code> attribute inherited from <code>UIEvent</code>
 *  indicates the number of times a mouse button has been pressed and
 *  released over the same screen location during a user action.  The
 *  attribute value is 1 when the user begins this action and increments by 1
 *  for each full sequence of pressing and releasing. If the user moves the
 *  mouse between the mousedown and mouseup the value will be set to 0,
 *  indicating that no click is occurring.</p><p>In the case of nested elements mouse events are always targeted at the
 *  most deeply nested element.  Ancestors of the targeted element may use
 *  bubbling to obtain notification of mouse events which occur within its
 *  descendent elements.</p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.dom.UIEvent
 */
public class MouseEvent extends UIEvent
{

	/**
	*  <p>The horizontal coordinate at which the
	*  event occurred relative to the origin of the screen coordinate
	*  system.</p>
	*/
	public function get screenX():uint { return 0; }

	/**
	*  <p>The vertical coordinate at which the
	*  event occurred relative to the origin of the screen coordinate
	*  system.</p>
	*/
	public function get screenY():uint { return 0; }

	/**
	*  <p>The horizontal coordinate at which the
	*  event occurred relative to the DOM implementation's client area.</p>
	*/
	public function get clientX():uint { return 0; }

	/**
	*  <p>The vertical coordinate at which the
	*  event occurred relative to the DOM implementation's client area.</p>
	*/
	public function get clientY():uint { return 0; }

	/**
	*  <p>Used to indicate whether the 'ctrl' key was depressed
	*  during the firing of the event.</p>
	*/
	public function get ctrlKey():Boolean { return false; }

	/**
	*  <p>Used to indicate whether the 'shift' key was depressed
	*  during the firing of the event.</p>
	*/
	public function get shiftKey():Boolean { return false; }

	/**
	*  <p>Used to indicate whether the 'alt' key was depressed
	*  during the firing of the event. On some platforms this key may map to
	*  an alternative key name.</p>
	*/
	public function get altKey():Boolean { return false; }

	/**
	*  <p>Used to indicate whether the 'meta' key was depressed
	*  during the firing of the event.  On some platforms this key may map to
	*  an alternative key name.</p>
	*/
	public function get metaKey():Boolean { return false; }

	/**
	*  <p>During mouse events caused by the depression or release of a mouse
	*  button, <code>button</code> is used to indicate which mouse button
	*  changed state.  The values for <code>button</code> range from zero to indicate
	*  the left button of the mouse, one to indicate the middle button if present, and
	*  two to indicate the right button.  For mice configured for left handed use in which
	*  the button actions are reversed the values are instead read from right to left.</p>
	*/
	public function get button():uint { return 0; }

	/**
	*  <p>Used to identify a secondary <code>EventTarget</code> related
	*  to a UI event.  Currently this attribute is used with the mouseover event to indicate the
	*  <code>EventTarget</code> which the pointing device exited and with the mouseout event to indicate the
	*  <code>EventTarget</code> which the pointing device entered.</p>
	*  @see randori.webkit.dom.EventTarget
	*/
	public function get relatedTarget():EventTarget { return null; }
	/**
	*  <p>The <code>initMouseEvent</code> method is used to initialize the value of a <code>MouseEvent</code> created through
	*  the <code>DocumentEvent</code> interface.  This method may only be called before the <code>MouseEvent</code> has
	*  been dispatched via the <code>dispatchEvent</code> method, though it may be called multiple times during that
	*  phase if necessary.  If called multiple times, the final invocation takes precedence.</p>
	*  @param typeArg <p>Specifies the event type.</p>
	*  @param canBubbleArg <p>Specifies whether or not the event can bubble.</p>
	*  @param cancelableArg <p>Specifies whether or not the event's default
	*  action can be prevented.</p>
	*  @param viewArg <p>Specifies the <code>Event</code>'s
	*  <code>AbstractView</code>.</p>
	*  @param detailArg <p>Specifies the <code>Event</code>'s mouse click count.</p>
	*  @param screenXArg <p>Specifies the <code>Event</code>'s screen x coordinate</p>
	*  @param screenYArg <p>Specifies the <code>Event</code>'s screen y coordinate</p>
	*  @param clientXArg <p>Specifies the <code>Event</code>'s client x coordinate</p>
	*  @param clientYArg <p>Specifies the <code>Event</code>'s client y coordinate</p>
	*  @param ctrlKeyArg <p>Specifies whether or not control key was depressed during
	*  the <code>Event</code>.</p>
	*  @param altKeyArg <p>Specifies whether or not alt key was depressed during the
	*  <code>Event</code>.</p>
	*  @param shiftKeyArg <p>Specifies whether or not shift key was depressed during the
	*  <code>Event</code>.</p>
	*  @param metaKeyArg <p>Specifies whether or not meta key was depressed during the
	*  <code>Event</code>.</p>
	*  @param buttonArg <p>Specifies the <code>Event</code>'s mouse button.</p>
	*  @param relatedTargetArg <p>Specifies the <code>Event</code>'s related <code>EventTarget</code>.</p>
	*/
	public function initMouseEvent(type:String=undefined, canBubble:Boolean=undefined, cancelable:Boolean=undefined, view:Window=undefined, detail:uint=undefined, screenX:uint=undefined, screenY:uint=undefined, clientX:uint=undefined, clientY:uint=undefined, ctrlKey:Boolean=undefined, altKey:Boolean=undefined, shiftKey:Boolean=undefined, metaKey:Boolean=undefined, button:uint=undefined, relatedTarget:EventTarget=undefined):void {}

	public function get offsetX():uint { return 0; }

	public function get offsetY():uint { return 0; }

	public function get x():uint { return 0; }

	public function get y():uint { return 0; }

	/**
	*  @see randori.webkit.dom.Node
	*/
	public function get fromElement():Node { return null; }

	/**
	*  @see randori.webkit.dom.Node
	*/
	public function get toElement():Node { return null; }

	/**
	*  @see randori.webkit.dom.Clipboard
	*/
	public function get dataTransfer():Clipboard { return null; }
}

}