
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/xml/XPathEvaluator.idl

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

[JavaScript(export="false", name="XPathEvaluator")]
/**
 *  <p>
 *  The evaluation of XPath expressions is provided by
 *  <code>XPathEvaluator</code>.  In a DOM
 *  implementation which supports the XPath 3.0 feature, as described
 *  above, the <code>XPathEvaluator</code> interface will be implemented
 *  on the same object which implements the <code>Document</code>
 *  interface permitting it to be obtained by the usual binding-specific
 *  method such as casting or by using the DOM Level 3 getInterface method.
 *  In this case the implementation obtained from the Document supports the
 *  XPath DOM module and is compatible with the XPath 1.0 specification. </p><p>Evaluation of expressions with specialized extension functions or
 *  variables may not work in all implementations and is, therefore, not
 *  portable.  <code>XPathEvaluator</code> implementations may be available
 *  from other sources that could provide specific support for specialized
 *  extension functions or variables as would be defined by other
 *  specifications.
 *  </p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class XPathEvaluator
{
	/**
	*  Creates a new <code>XPathEvaluator</code> instance.
	*/
	public function XPathEvaluator() {super();}
	/**
	*  <p>Creates a parsed XPath expression with resolved namespaces.
	*  This is useful when an expression will be reused in an application
	*  since it makes it possible to compile the expression string into a
	*  more efficient internal form and preresolve all namespace prefixes which occur
	*  within the expression.</p>
	*  @param expression <p>The XPath expression string to be parsed.</p>
	*  @param resolver <p>The <code>resolver</code> permits translation of all
	*  prefixes, including the <code>xml</code> namespace prefix,
	*  within the XPath expression into appropriate namespace URIs.  If this is
	*  specified as <code>null</code>, any namespace prefix within the
	*  expression will result in <code>DOMException</code> being
	*  thrown with the code <code>NAMESPACE_ERR</code>.</p>
	*  @return <p>The compiled form of the XPath expression.</p>
	*  @throw XPathException <p>INVALID_EXPRESSION_ERR: Raised if the expression is not
	*  legal according to the rules of the
	*  <code>XPathEvaluator</code>.</p>
	*/
	public function createExpression(expression:String=undefined, resolver:XPathNSResolver=undefined):XPathExpression { return null;}
	/**
	*  <p>Adapts any DOM node to resolve namespaces so that an XPath
	*  expression can be easily evaluated relative to the context of
	*  the node where it appeared within the document. This adapter
	*  works like the DOM Level 3 method <code>lookupNamespaceURI</code>
	*  on nodes in resolving the namespaceURI from a given prefix
	*  using the current information available in the node's
	*  hierarchy at the time lookupNamespaceURI is called. also
	*  correctly resolving the implicit xml prefix.</p>
	*  @param nodeResolver <p>The node to be used as a context for namespace resolution.</p>
	*  @return <p><code>XPathNSResolver</code> which resolves namespaces with respect to
	*  the definitions in scope for a specified node.</p>
	*/
	public function createNSResolver(nodeResolver:Node=undefined):XPathNSResolver { return null;}
	/**
	*  <p>Evaluates an XPath expression string and returns a result of the
	*  specified type if possible.</p>
	*  @param expression <p>The XPath expression string to be parsed and evaluated.</p>
	*  @param contextNode <p>The <code>context</code> is context node for the evaluation
	*  of this XPath expression.  If the XPathEvaluator was obtained
	*  by casting the <code>Document</code> then this must be owned by
	*  the same document and must be a <code>Document</code>,
	*  <code>Element</code>, <code>Attribute</code>, <code>Text</code>,
	*  <code>CDATASection</code>, <code>Comment</code>,
	*  <code>ProcessingInstruction</code>, or <code>XPathNamespace</code>
	*  node.  If the context node is a <code>Text</code> or a
	*  <code>CDATASection</code>, then the context is interpreted as the
	*  whole logical text node as seen by XPath, unless the node is
	*  empty in which case it may not serve as the XPath context.</p>
	*  @param resolver <p>The <code>resolver</code> permits translation of all
	*  prefixes, including the <code>xml</code> namespace prefix,
	*  within the XPath expression into appropriate namespace URIs.  If this is
	*  specified as <code>null</code>, any namespace prefix within the
	*  expression will result in <code>DOMException</code> being
	*  thrown with the code <code>NAMESPACE_ERR</code>.</p>
	*  @param type <p>If a specific <code>type</code> is specified, then the
	*  result will be returned as the corresponding type.</p><p>For XPath 1.0 results, this must be one of the codes of the
	*  <code>XPathResult</code> interface.</p>
	*  @param result <p>The <code>result</code> specifies a specific result object
	*  which may be reused and returned by this method.  If this is specified
	*  as <code>null</code>or the implementation does not reuse the specified
	*  result, a new result object will be constructed and returned.</p><p>For XPath 1.0 results, this object will be of type
	*  <code>XPathResult</code>.</p>
	*  @return <p>The result of the evaluation of the XPath expression.</p><p>For XPath 1.0 results, this object will be of type
	*  <code>XPathResult</code>.</p>
	*  @throw XPathException <p>INVALID_EXPRESSION_ERR: Raised if the expression is not
	*  legal according to the rules of the
	*  <code>XPathEvaluator</code>i</p><p>TYPE_ERR: Raised if the result cannot be converted to
	*  return the specified type.</p>
	*/
	public function evaluate(expression:String=undefined, contextNode:Node=undefined, resolver:XPathNSResolver=undefined, type:uint=undefined, inResult:XPathResult=undefined):XPathResult { return null;}
}

}