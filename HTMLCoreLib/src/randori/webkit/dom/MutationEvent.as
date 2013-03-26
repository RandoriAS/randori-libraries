
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/MutationEvent.idl

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


[JavaScript(export="false", name="MutationEvent")]
/**
 *  <p>The <code>MutationEvent</code> interface provides specific contextual
 *  information associated with Mutation events.
 *  </p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.dom.DomEvent
 */
public class MutationEvent extends DomEvent
{
	public static const MODIFICATION:uint = 1;
	public static const ADDITION:uint = 2;
	public static const REMOVAL:uint = 3;

	/**
	*  <p><code>relatedNode</code> is used to identify a secondary node related to a mutation event.
	*  For example, if a mutation event is dispatched to a node indicating that its parent
	*  has changed, the <code>relatedNode</code> is the changed parent.  If an event is instead
	*  dispatched to a subtree indicating a node was changed within it, the <code>relatedNode</code>
	*  is the changed node.  In the case of the DOMAttrModified event it indicates the <code>Attr</code>
	*  node which was modified, added, or removed.
	*  </p>
	*  @see randori.webkit.dom.Node
	*/
	public function get relatedNode():Node { return null; }

	/**
	*  <p><code>prevValue</code> indicates the previous value of the <code>Attr</code> node in
	*  DOMAttrModified events, and of the <code>CharacterData</code> node in DOMCharDataModified events.
	*  </p>
	*/
	public function get prevValue():String { return ''; }

	/**
	*  <p><code>newValue</code> indicates the new value of the <code>Attr</code> node in DOMAttrModified
	*  events, and of the <code>CharacterData</code> node in DOMCharDataModified events.
	*  </p>
	*/
	public function get newValue():String { return ''; }

	/**
	*  <p><code>attrName</code> indicates the name of the changed <code>Attr</code> node in a
	*  DOMAttrModified event.
	*  </p>
	*/
	public function get attrName():String { return ''; }

	/**
	*  <p><code>attrChange</code> indicates the type of change which triggered the DOMAttrModified event.
	*  The values can be <code>MODIFICATION</code>, <code>ADDITION</code>, or <code>REMOVAL</code>.
	*  </p>
	*/
	public function get attrChange():uint { return 0; }
	/**
	*  <p>The <code>initMutationEvent</code> method is used to initialize the value of a <code>MutationEvent</code> created through
	*  the <code>DocumentEvent</code> interface.  This method may only be called before the <code>MutationEvent</code> has
	*  been dispatched via the <code>dispatchEvent</code> method, though it may be called multiple times during that
	*  phase if necessary.  If called multiple times, the final invocation takes precedence.</p>
	*  @param typeArg <p>Specifies the event type.</p>
	*  @param canBubbleArg <p>Specifies whether or not the event can bubble.</p>
	*  @param cancelableArg <p>Specifies whether or not the event's default
	*  action can be prevented.</p>
	*  @param relatedNodeArg <p>Specifies the <code>Event</code>'s related Node.</p>
	*  @param prevValueArg <p>Specifies the <code>Event</code>'s <code>prevValue</code> attribute.  This value may be null.</p>
	*  @param newValueArg <p>Specifies the <code>Event</code>'s <code>newValue</code> attribute.  This value may be null.</p>
	*  @param attrNameArg <p>Specifies the <code>Event</code>'s <code>attrName</code> attribute.  This value may be null.</p>
	*  @param attrChangeArg <p>Specifies the <code>Event</code>'s <code>attrChange</code> attribute</p>
	*/
	public function initMutationEvent(type:String=undefined, canBubble:Boolean=undefined, cancelable:Boolean=undefined, relatedNode:Node=undefined, prevValue:String=undefined, newValue:String=undefined, attrName:String=undefined, attrChange:uint=undefined):void {}
}

}