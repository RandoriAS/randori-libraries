
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/DOMImplementation.idl

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

import randori.webkit.css.CSSStyleSheet;
import randori.webkit.html.HTMLDocument;

[JavaScript(export="false", name="DOMImplementation")]
/**
 *  <p>The <code>DOMImplementation</code> interface provides a
 *  number of methods for performing operations that are independent
 *  of any particular instance of the document object model.</p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class DOMImplementation
{
	/**
	*  <p>Test if the DOM implementation implements a
	*  specific feature.</p>
	*  @param feature <p>The name of the feature to test (case-insensitive). The
	*  values used by DOM features are defined throughout the DOM Level 2 specifications and listed in
	*  the <specref ref="ID-Conformance" /> section. The name must be an
	*  XML name. To avoid possible
	*  conflicts, as a convention, names referring to features defined
	*  outside the DOM specification should be made unique by reversing the name of
	*  the Internet domain name of the person (or the organization that the
	*  person belongs to) who defines the feature, component by component,
	*  and using this as a prefix. For instance, the W3C SVG Working Group
	*  defines the feature "org.w3c.dom.svg".</p>
	*  @param version <p>This is the version number of the feature to test. In Level
	*  2, the string can be either "2.0" or "1.0". If the version is not
	*  specified, supporting any version of the feature causes the method
	*  to return <code>true</code>.</p>
	*  @return <p><code>true</code> if the feature is implemented in the
	*  specified version, <code>false</code> otherwise.</p>
	*/
	public function hasFeature(feature:String=undefined, version:String=undefined):Boolean { return false;}
	/**
	*  <p>Creates an empty <code>DocumentType</code> node. Entity
	*  declarations and notations are not made available. Entity reference
	*  expansions and default attribute additions do not occur. It is expected
	*  that a future version of the DOM will provide a way for populating a
	*  <code>DocumentType</code>.</p><p>HTML-only DOM implementations do not need to
	*  implement this method.</p>
	*  @param qualifiedName <p>The qualified name
	*  of the document type to be created. </p>
	*  @param publicId <p>The external subset public identifier.</p>
	*  @param systemId <p>The external subset system identifier.</p>
	*  @return <p>A new <code>DocumentType</code> node with
	*  <code>Node.ownerDocument</code> set to <code>null</code>.</p>
	*  @throw DOMException <p>INVALID_CHARACTER_ERR: Raised if the specified qualified name
	*  contains an illegal character.</p><p>NAMESPACE_ERR: Raised if the <code>qualifiedName</code> is
	*  malformed.</p>
	*/
	public function createDocumentType(qualifiedName:String=undefined, publicId:String=undefined, systemId:String=undefined):DocumentType { return null;}
	/**
	*  <p>Creates an XML <code>Document</code> object of the specified type
	*  with its document element. HTML-only DOM implementations do not need to
	*  implement this method.</p>
	*  @param namespaceURI <p>The namespace URI of
	*  the document element to create.</p>
	*  @param qualifiedName <p>The qualified name
	*  of the document element to be created.</p>
	*  @param doctype <p>The type of document to be created or <code>null</code>.</p><p>When <code>doctype</code> is not <code>null</code>, its
	*  <code>Node.ownerDocument</code> attribute is set to the document
	*  being created.</p>
	*  @return <p>A new <code>Document</code> object.</p>
	*  @throw DOMException <p>INVALID_CHARACTER_ERR: Raised if the specified qualified name
	*  contains an illegal character.</p><p>NAMESPACE_ERR: Raised if the <code>qualifiedName</code> is
	*  malformed, if the <code>qualifiedName</code> has a prefix and
	*  the <code>namespaceURI</code> is <code>null</code>, or if
	*  the <code>qualifiedName</code> has a prefix that
	*  is "xml" and the <code>namespaceURI</code> is different
	*  from "<loc href="http://www.w3.org/XML/1998/namespace">http://www.w3.org/XML/1998/namespace</loc>" <bibref ref="Namespaces" />.</p><p>WRONG_DOCUMENT_ERR: Raised if <code>doctype</code> has already
	*  been used with a different document or was created from a different
	*  implementation.</p>
	*/
	public function createDocument(namespaceURI:String=undefined, qualifiedName:String=undefined, doctype:DocumentType=undefined):Document { return null;}
	/**
	*  @param title (optional argument, default value is <code>undefined</code>)
	*  @param media (optional argument, default value is <code>undefined</code>)
	*  @return A <code>CSSStyleSheet</code> instance.
	*/
	public function createCSSStyleSheet(title:String=undefined, media:String=undefined):CSSStyleSheet { return null;}
	/**
	*  @param title (optional argument, default value is <code>null</code>)
	*  @return A <code>HTMLDocument</code> instance.
	*/
	public function createHTMLDocument(title:String=null):HTMLDocument { return null;}
}

}