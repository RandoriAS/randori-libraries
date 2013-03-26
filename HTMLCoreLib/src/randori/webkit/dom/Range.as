
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/Range.idl

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


[JavaScript(export="false", name="Range")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class Range
{

	/**
	*  @see randori.webkit.dom.Node
	*/
	public function get startContainer():Node { return null; }

	public function get startOffset():uint { return 0; }

	/**
	*  @see randori.webkit.dom.Node
	*/
	public function get endContainer():Node { return null; }

	public function get endOffset():uint { return 0; }

	public function get collapsed():Boolean { return false; }

	/**
	*  @see randori.webkit.dom.Node
	*/
	public function get commonAncestorContainer():Node { return null; }
	/**
	*  @param refNode (optional argument, default value is <code>undefined</code>)
	*  @param offset (optional argument, default value is <code>undefined</code>)
	*/
	public function setStart(refNode:Node=undefined, offset:uint=undefined):void {}
	/**
	*  @param refNode (optional argument, default value is <code>undefined</code>)
	*  @param offset (optional argument, default value is <code>undefined</code>)
	*/
	public function setEnd(refNode:Node=undefined, offset:uint=undefined):void {}
	/**
	*  @param refNode (optional argument, default value is <code>undefined</code>)
	*/
	public function setStartBefore(refNode:Node=undefined):void {}
	/**
	*  @param refNode (optional argument, default value is <code>undefined</code>)
	*/
	public function setStartAfter(refNode:Node=undefined):void {}
	/**
	*  @param refNode (optional argument, default value is <code>undefined</code>)
	*/
	public function setEndBefore(refNode:Node=undefined):void {}
	/**
	*  @param refNode (optional argument, default value is <code>undefined</code>)
	*/
	public function setEndAfter(refNode:Node=undefined):void {}
	/**
	*  @param toStart (optional argument, default value is <code>undefined</code>)
	*/
	public function collapse(toStart:Boolean=undefined):void {}
	/**
	*  @param refNode (optional argument, default value is <code>undefined</code>)
	*/
	public function selectNode(refNode:Node=undefined):void {}
	/**
	*  @param refNode (optional argument, default value is <code>undefined</code>)
	*/
	public function selectNodeContents(refNode:Node=undefined):void {}
	public static const START_TO_START:uint = 0;
	public static const START_TO_END:uint = 1;
	public static const END_TO_END:uint = 2;
	public static const END_TO_START:uint = 3;
	/**
	*  @param how (optional argument, default value is <code>undefined</code>)
	*  @param sourceRange (optional argument, default value is <code>undefined</code>)
	*  @return A <code>int</code> instance.
	*/
	public function compareBoundaryPoints(how:Object=undefined, sourceRange:Range=undefined):int { return 0;}
	public function deleteContents():void {}
	/**
	*  @return A <code>DocumentFragment</code> instance.
	*/
	public function extractContents():DocumentFragment { return null;}
	/**
	*  @return A <code>DocumentFragment</code> instance.
	*/
	public function cloneContents():DocumentFragment { return null;}
	/**
	*  @param newNode (optional argument, default value is <code>undefined</code>)
	*/
	public function insertNode(newNode:Node=undefined):void {}
	/**
	*  @param newParent (optional argument, default value is <code>undefined</code>)
	*/
	public function surroundContents(newParent:Node=undefined):void {}
	/**
	*  @return A <code>Range</code> instance.
	*/
	public function cloneRange():Range { return null;}
	/**
	*  @return A <code>String</code> instance.
	*/
	public function toString():String { return '';}
	public function detach():void {}
	/**
	*  @return A <code>ClientRectList</code> instance.
	*/
	public function getClientRects():ClientRectList { return null;}
	/**
	*  @return A <code>ClientRect</code> instance.
	*/
	public function getBoundingClientRect():ClientRect { return null;}
	/**
	*  @param html (optional argument, default value is <code>undefined</code>)
	*  @return A <code>DocumentFragment</code> instance.
	*/
	public function createContextualFragment(html:String=undefined):DocumentFragment { return null;}
	/**
	*  @param refNode (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function intersectsNode(refNode:Node=undefined):Boolean { return false;}
	/**
	*  @param refNode (optional argument, default value is <code>undefined</code>)
	*  @return A <code>int</code> instance.
	*/
	public function compareNode(refNode:Node=undefined):int { return 0;}
	public static const NODE_BEFORE:uint = 0;
	public static const NODE_AFTER:uint = 1;
	public static const NODE_BEFORE_AND_AFTER:uint = 2;
	public static const NODE_INSIDE:uint = 3;
	/**
	*  @param refNode (optional argument, default value is <code>undefined</code>)
	*  @param offset (optional argument, default value is <code>undefined</code>)
	*  @return A <code>int</code> instance.
	*/
	public function comparePoint(refNode:Node=undefined, offset:uint=undefined):int { return 0;}
	/**
	*  @param refNode (optional argument, default value is <code>undefined</code>)
	*  @param offset (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function isPointInRange(refNode:Node=undefined, offset:uint=undefined):Boolean { return false;}
	/**
	*  @param unit (optional argument, default value is <code>undefined</code>)
	*/
	public function expand(unit:String=undefined):void {}
}

}