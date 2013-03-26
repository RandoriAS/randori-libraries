
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/DocumentType.idl

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


[JavaScript(export="false", name="DocumentType")]
/**
 *  <p>Each <code>Document</code> has a <code>doctype</code> attribute
 *  whose value is either <code>null</code> or a <code>DocumentType</code>
 *  object. The <code>DocumentType</code> interface in the DOM Core
 *  provides an interface to the list of entities that are defined
 *  for the document, and little else because the effect of
 *  namespaces and the various XML schema efforts on DTD
 *  representation are not clearly understood as of this writing.</p><p>The DOM Level 2 doesn't support editing <code>DocumentType</code>
 *  nodes.</p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.dom.Node
 */
public class DocumentType extends Node
{

	/**
	*  <p>The name of DTD; i.e., the name immediately
	*  following the <code>DOCTYPE</code> keyword.</p>
	*/
	public function get name():String { return ''; }

	/**
	*  <p>A <code>NamedNodeMap</code> containing the general entities, both
	*  external and internal, declared in the DTD. Parameter entities are not
	*  contained. Duplicates are discarded.
	*  For example in:
	*  <eg role="code">&lt;!DOCTYPE ex SYSTEM "ex.dtd" [
	*  &lt;!ENTITY foo "foo"&gt;
	*  &lt;!ENTITY bar "bar"&gt;
	*  &lt;!ENTITY bar "bar2"&gt;
	*  &lt;!ENTITY % baz "baz"&gt;
	*  ]&gt;
	*  &lt;ex/&gt;</eg>
	*  the interface provides access to <code>foo</code> and
	*  the first declaration of <code>bar</code> but not the second declaration of
	*  <code>bar</code> or <code>baz</code>. Every node in this map
	*  also implements the <code>Entity</code> interface.</p><p>The DOM Level 2 does not support editing entities, therefore
	*  <code>entities</code> cannot be altered in any way.</p>
	*  @see randori.webkit.dom.NamedNodeMap
	*/
	public function get entities():NamedNodeMap { return null; }

	/**
	*  <p>A <code>NamedNodeMap</code> containing  the
	*  notations declared in the DTD. Duplicates are discarded. Every node in
	*  this map also implements the <code>Notation</code> interface.</p><p>The DOM Level 2 does not support editing notations, therefore
	*  <code>notations</code> cannot be altered in any way.</p>
	*  @see randori.webkit.dom.NamedNodeMap
	*/
	public function get notations():NamedNodeMap { return null; }

	/**
	*  <p>The public identifier of the external subset.</p>
	*/
	public function get publicId():String { return ''; }

	/**
	*  <p>The system identifier of the external subset.</p>
	*/
	public function get systemId():String { return ''; }

	/**
	*  <p>The internal subset as a string.</p><note><p>The actual content returned depends on how much information is
	*  available to the implementation. This may vary depending on various
	*  parameters, including the XML processor used to build the
	*  document.</p></note>
	*/
	public function get internalSubset():String { return ''; }
	public function remove():void {}
}

}