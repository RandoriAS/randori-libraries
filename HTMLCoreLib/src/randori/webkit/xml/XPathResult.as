
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/xml/XPathResult.idl

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


package randori.webkit.xml
{

import randori.webkit.dom.Node;

[JavaScript(export="false", name="XPathResult")]
/**
 *  <p>The <code>XPathResult</code> interface represents the result
 *  of the evaluation of an XPath 1.0 expression within the context
 *  of a particular node.  Since
 *  evaluation of an XPath expression can result in various result
 *  types, this object makes it possible to discover and manipulate
 *  the type and value of the result.</p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see http://www.w3.org/TR/1999/REC-xpath-19991116#section-Expressions
 *  @see http://www.w3.org/TR/1999/REC-xpath-19991116#numbers
 *  @see http://www.w3.org/TR/1999/REC-xpath-19991116#strings
 *  @see http://www.w3.org/TR/1999/REC-xpath-19991116#booleans
 *  @see http://www.w3.org/TR/1999/REC-xpath-19991116#node-sets
 */
public class XPathResult
{
	public static const ANY_TYPE:uint = 0;
	public static const NUMBER_TYPE:uint = 1;
	public static const STRING_TYPE:uint = 2;
	public static const BOOLEAN_TYPE:uint = 3;
	public static const UNORDERED_NODE_ITERATOR_TYPE:uint = 4;
	public static const ORDERED_NODE_ITERATOR_TYPE:uint = 5;
	public static const UNORDERED_NODE_SNAPSHOT_TYPE:uint = 6;
	public static const ORDERED_NODE_SNAPSHOT_TYPE:uint = 7;
	public static const ANY_UNORDERED_NODE_TYPE:uint = 8;
	public static const FIRST_ORDERED_NODE_TYPE:uint = 9;

	/**
	*  <p>A code representing the type of this result, as defined
	*  by the type constants.</p>
	*/
	public function get resultType():uint { return 0; }

	/**
	*  <p>The value of this number result.  If the native double type of the DOM binding does
	*  not directly support the exact IEEE 754 result of the XPath expression, then it is up to
	*  the definition of the binding to specify how the XPath number is converted to the
	*  native binding number.</p>
	*/
	public function get numberValue():Number { return 0; }

	/**
	*  <p>The value of this string result.</p>
	*/
	public function get stringValue():String { return ''; }

	/**
	*  <p>The value of this boolean result.</p>
	*/
	public function get booleanValue():Boolean { return false; }

	/**
	*  <p>The value of this single node result, which may be <code>null</code>.</p>
	*  @see randori.webkit.dom.Node
	*/
	public function get singleNodeValue():Node { return null; }

	/**
	*  <p>Signifies that the iterator has become invalid.
	*  True if <code>resultType</code> is
	*  <code>UNORDERED_NODE_ITERATOR_TYPE</code> or
	*  <code>ORDERED_NODE_ITERATOR_TYPE</code> and the
	*  document has been modified since this result was
	*  returned.</p>
	*/
	public function get invalidIteratorState():Boolean { return false; }

	/**
	*  <p>The number of nodes in the result snapshot.  Valid values
	*  for snapshotItem indices are <code>0</code> to
	*  <code>snapshotLength-1</code> inclusive.</p>
	*/
	public function get snapshotLength():uint { return 0; }
	/**
	*  <p>Iterates and returns the next node from the node set
	*  or <code>null</code>if there are no more nodes.</p>
	*  @return <p>Returns the next node.</p>
	*  @throw XPathException <p>TYPE_ERR: raised if <code>resultType</code> is not
	*  <code>UNORDERED_NODE_ITERATOR_TYPE</code> or
	*  <code>ORDERED_NODE_ITERATOR_TYPE</code>.</p>
	*/
	public function iterateNext():Node { return null;}
	/**
	*  <p>Returns the <code>index</code>th item in the snapshot collection.
	*  If <code>index</code> is greater than or equal to the number of nodes
	*  in the list, this method returns <code>null</code>.  Unlike the
	*  iterator result, the snapshot does not become invalid, but may
	*  not correspond to the current document if it is mutated.</p>
	*  @param index <p>Index into the snapshot collection.</p>
	*  @return <p>The node at the <code>index</code>th position in the
	*  <code>NodeList</code>, or <code>null</code> if that is not a
	*  valid index.</p>
	*  @throw XPathException <p>TYPE_ERR: raised if <code>resultType</code> is not
	*  <code>UNORDERED_NODE_SNAPSHOT_TYPE</code> or
	*  <code>ORDERED_NODE_SNAPSHOT_TYPE</code>.</p>
	*/
	public function snapshotItem(index:uint=undefined):Node { return null;}
}

}