
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/xml/XPathExpression.idl

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

[JavaScript(export="false", name="XPathExpression")]
/**
 *  <p>The <code>XPathExpression</code> interface represents a parsed
 *  and resolved XPath expression.</p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class XPathExpression
{
	/**
	*  <p>Evaluates this XPath expression and returns a result.</p>
	*  @param contextNode <p>The <code>context</code> is context node for the evaluation
	*  of this XPath expression.</p><p>If the XPathEvaluator was obtained
	*  by casting the <code>Document</code> then this must be owned by
	*  the same document and must be a <code>Document</code>,
	*  <code>Element</code>, <code>Attribute</code>, <code>Text</code>,
	*  <code>CDATASection</code>, <code>Comment</code>,
	*  <code>ProcessingInstruction</code>, or <code>XPathNamespace</code>
	*  node.</p><p>If the context node is a <code>Text</code> or a
	*  <code>CDATASection</code>, then the context is interpreted as the
	*  whole logical text node as seen by XPath, unless the node is
	*  empty in which case it may not serve as the XPath context.</p>
	*  @param type <p>If a specific <code>type</code> is specified, then the
	*  result will be coerced to return the specified type relying
	*  on XPath conversions and fail if the desired coercion is not
	*  possible.  This must be one of the type codes of
	*  <code>XPathResult</code>.</p>
	*  @param result <p>The <code>result</code> specifies a specific result object
	*  which may be reused and returned by this method.  If this is specified
	*  as <code>null</code>or the implementation does not reuse the specified
	*  result, a new result object will be constructed and returned.</p><p>For XPath 1.0 results, this object will be of type
	*  <code>XPathResult</code>.</p>
	*  @return <p>The result of the evaluation of the XPath expression.</p><p>For XPath 1.0 results, this object will be of type
	*  <code>XPathResult</code>.</p>
	*  @throw XPathException <p>TYPE_ERR: Raised if the result cannot be converted to
	*  return the specified type.</p>
	*/
	public function evaluate(contextNode:Node=undefined, type:uint=undefined, inResult:XPathResult=undefined):XPathResult { return null;}
}

}