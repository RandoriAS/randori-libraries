
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/EventTarget.idl

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


[JavaScript(export="false", name="EventTarget")]
/**
 *  <p>
 *  The <code>EventTarget</code> interface is implemented by all
 *  <code>Nodes</code> in an implementation which supports the DOM Event
 *  Model. Therefore, this interface can be obtained by using
 *  binding-specific casting methods on an instance of the <code>Node</code>
 *  interface. The interface allows registration and removal of
 *  <code>EventListeners</code> on an <code>EventTarget</code> and dispatch
 *  of events to that <code>EventTarget</code>.</p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class EventTarget
{
	/**
	*  <p>This method allows the registration of event listeners on the event target.
	*  If an <code>EventListener</code> is added to an <code>EventTarget</code> while it is
	*  processing an event, it will not be triggered by the current actions but may be
	*  triggered during a later stage of event flow, such as the bubbling phase.
	*  </p><p>
	*  If multiple identical <code>EventListener</code>s are registered on the same
	*  <code>EventTarget</code> with the same parameters the duplicate instances are discarded.
	*  They do not cause the <code>EventListener</code> to be called twice and since they are
	*  discarded they do not need to be removed with the <code>removeEventListener</code> method.
	*  </p>
	*  @param type <p>The event type for which the user is registering</p>
	*  @param listener <p>The <code>listener</code> parameter takes an interface implemented by
	*  the user which contains the methods to be called when the event occurs.</p>
	*  @param useCapture <p>If true, <code>useCapture</code> indicates that the user wishes to initiate
	*  capture.  After initiating capture, all events of the specified type will be
	*  dispatched to the registered <code>EventListener</code> before being dispatched to any
	*  <code>EventTargets</code> beneath them in the tree.  Events which are bubbling upward
	*  through the tree will not trigger an <code>EventListener</code> designated to use
	*  capture.</p>
	*/
	public function addEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	/**
	*  <p>This method allows the removal of event listeners from the event target.  If an
	*  <code>EventListener</code> is removed from an <code>EventTarget</code> while it is
	*  processing an event, it will not be triggered by the current actions.  <code>EventListener</code>s
	*  can never be invoked after being removed.</p><p>Calling <code>removeEventListener</code> with arguments which do not identify any
	*  currently registered <code>EventListener</code> on the <code>EventTarget</code>
	*  has no effect.</p>
	*  @param type <p>Specifies the event type of the <code>EventListener</code> being removed.
	*  </p>
	*  @param listener <p>The <code>EventListener</code> parameter indicates the <code>EventListener
	*  </code> to be removed.
	*  </p>
	*  @param useCapture <p>Specifies whether the <code>EventListener</code> being removed was registered as a
	*  capturing listener or not.  If a listener was registered twice, one with capture and one
	*  without, each must be removed separately.  Removal of a capturing listener does not
	*  affect a non-capturing version of the same listener, and vice versa.
	*  </p>
	*/
	public function removeEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	/**
	*  <p>This method allows the dispatch of events into the implementations event model.  Events
	*  dispatched in this manner will have the same capturing and bubbling behavior as events
	*  dispatched directly by the implementation.  The target of the event is the <code>
	*  EventTarget</code> on which <code>dispatchEvent</code> is called.
	*  </p>
	*  @param evt <p>Specifies the event type, behavior, and contextual information to be used
	*  in processing the event.</p>
	*  @return <p>The return value of <code>dispatchEvent</code> indicates whether any of
	*  the listeners which handled the event called <code>preventDefault</code>.  If
	*  <code>preventDefault</code> was called the value is false, else the value is true.
	*  </p>
	*  @throw EventException <p>UNSPECIFIED_EVENT_TYPE_ERR: Raised if the
	*  <code>Event</code>'s type was not specified by initializing the
	*  event before <code>dispatchEvent</code> was called.
	*  Specification of the <code>Event</code>'s type as
	*  <code>null</code> or an empty string will also trigger this
	*  exception.</p>
	*/
	public function dispatchEvent(event:DomEvent):Boolean { return false;}
}

}