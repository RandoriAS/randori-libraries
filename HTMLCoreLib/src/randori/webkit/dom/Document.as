
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/Document.idl

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
import randori.webkit.css.StyleSheetList;
import randori.webkit.css.CSSStyleDeclaration;
import randori.webkit.xml.XPathNSResolver;
import randori.webkit.xml.XPathExpression;
import randori.webkit.xml.XPathResult;
import randori.webkit.html.HTMLElement;
import randori.webkit.html.HTMLHeadElement;
import randori.webkit.html.HTMLCollection;
import randori.webkit.page.Location;
import randori.webkit.page.Selection;
import randori.webkit.html.canvas.CanvasRenderingContext;
import randori.webkit.page.SecurityPolicy;

[JavaScript(export="false", name="Document")]
/**
 *  <p>The <code>Document</code> interface represents the entire
 *  HTML or XML document. Conceptually, it is the root of the
 *  document tree, and provides the  primary access to the
 *  document's data.</p><p>Since elements, text nodes, comments, processing instructions,
 *  etc. cannot exist outside the context of a <code>Document</code>, the
 *  <code>Document</code> interface also contains the factory methods needed
 *  to create these objects. The <code>Node</code> objects created have a
 *  <code>ownerDocument</code> attribute which associates them with the
 *  <code>Document</code> within whose context they were created.</p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.dom.Node
 */
public class Document extends Node
{

	/**
	*  <p>The Document Type Declaration (see <code>DocumentType</code>)
	*  associated with this document. For HTML documents as well as XML
	*  documents without a document type declaration this returns
	*  <code>null</code>. The DOM Level 2 does not support editing the
	*  Document Type Declaration. <code>docType</code> cannot be
	*  altered in any way, including through the use of methods inherited from
	*  the <code>Node</code> interface, such as <code>insertNode</code> or
	*  <code>removeNode</code>.</p>
	*  @see randori.webkit.dom.DocumentType
	*/
	public function get doctype():DocumentType { return null; }

	/**
	*  <p>The <code>DOMImplementation</code> object that handles this
	*  document. A DOM application may use objects from multiple
	*  implementations.</p>
	*  @see randori.webkit.dom.DOMImplementation
	*/
	public function get implementation():DOMImplementation { return null; }

	/**
	*  <p>This is a convenience attribute that allows direct
	*  access to the child node that is the root element of  the
	*  document. For HTML documents, this is the element with
	*  the tagName "HTML".</p>
	*  @see randori.webkit.dom.Element
	*/
	public function get documentElement():Element { return null; }
	/**
	*  <p>Creates an element of the type specified. Note that the instance
	*  returned implements the <code>Element</code> interface, so attributes
	*  can be specified directly  on the returned object.</p><p>In addition, if there are known attributes with default values,
	*  <code>Attr</code> nodes representing them are automatically created and
	*  attached to the element.</p><p>To create an element with a qualified name and namespace URI, use the
	*  <code>createElementNS</code> method.</p>
	*  @param tagName <p>The name of the element type to
	*  instantiate. For XML, this is case-sensitive. For HTML, the
	*  <code>tagName</code> parameter may be provided in any case,
	*  but it must be mapped to the canonical uppercase form by
	*  the DOM implementation.
	*  </p>
	*  @return <p>A new <code>Element</code> object with the
	*  <code>nodeName</code> attribute set to <code>tagName</code>, and
	*  <code>localName</code>, <code>prefix</code>, and
	*  <code>namespaceURI</code> set to <code>null</code>.</p>
	*  @throw DOMException <p>INVALID_CHARACTER_ERR: Raised if the specified name contains
	*  an illegal character.</p>
	*/
	public function createElement(tagName:String=undefined):Element { return null;}
	/**
	*  <p>Creates an empty <code>DocumentFragment</code> object.
	*  </p>
	*  @return <p>A new <code>DocumentFragment</code>.</p>
	*/
	public function createDocumentFragment():DocumentFragment { return null;}
	/**
	*  <p>Creates a <code>Text</code> node given the specified
	*  string.</p>
	*  @param data <p>The data for the node.</p>
	*  @return <p>The new <code>Text</code> object.</p>
	*/
	public function createTextNode(data:String=undefined):Text { return null;}
	/**
	*  <p>Creates a <code>Comment</code> node given the specified
	*  string.</p>
	*  @param data <p>The data for the node.</p>
	*  @return <p>The new <code>Comment</code> object.</p>
	*/
	public function createComment(data:String=undefined):Comment { return null;}
	/**
	*  <p>Creates a <code>CDATASection</code> node whose value  is
	*  the specified string.</p>
	*  @param data <p>The data for the <code>CDATASection</code> contents.</p>
	*  @return <p>The new <code>CDATASection</code> object.</p>
	*  @throw DOMException <p>NOT_SUPPORTED_ERR: Raised if this document is an HTML
	*  document.</p>
	*/
	public function createCDATASection(data:String=undefined):CDATASection { return null;}
	/**
	*  <p>Creates a <code>ProcessingInstruction</code> node given
	*  the specified name and data strings.</p>
	*  @param target <p>The target part of the processing instruction.</p>
	*  @param data <p>The data for the node.</p>
	*  @return <p>The new <code>ProcessingInstruction</code> object.</p>
	*  @throw DOMException <p>INVALID_CHARACTER_ERR: Raised if the specified target
	*  contains an illegal character.</p><p>NOT_SUPPORTED_ERR: Raised if this document is an HTML document.</p>
	*/
	public function createProcessingInstruction(target:String=undefined, data:String=undefined):ProcessingInstruction { return null;}
	/**
	*  <p>Creates an <code>Attr</code> of the given name.
	*  Note that the <code>Attr</code> instance
	*  can then be set on an <code>Element</code> using the
	*  <code>setAttributeNode</code> method. </p><p>To create an attribute with a qualified name and namespace URI, use
	*  the <code>createAttributeNS</code> method.</p>
	*  @param name <p>The name of the attribute.</p>
	*  @return <p>A new <code>Attr</code> object with the <code>nodeName</code>
	*  attribute set to <code>name</code>, and <code>localName</code>,
	*  <code>prefix</code>, and <code>namespaceURI</code> set to
	*  <code>null</code>. The value of the attribute is the empty
	*  string.</p>
	*  @throw DOMException <p>INVALID_CHARACTER_ERR: Raised if the specified name contains
	*  an illegal character.</p>
	*/
	public function createAttribute(name:String=undefined):Attr { return null;}
	/**
	*  <p>Creates an <code>EntityReference</code> object. In addition, if
	*  the referenced entity is known, the child list of the
	*  <code>EntityReference</code> node is made the same as that of the
	*  corresponding <code>Entity</code> node.</p><note><p>If any descendant of the <code>Entity</code> node has an
	*  unbound namespace prefix,
	*  the corresponding descendant of the created
	*  <code>EntityReference</code> node is also unbound; (its
	*  <code>namespaceURI</code> is <code>null</code>). The DOM Level 2 does
	*  not support any mechanism to resolve namespace prefixes.</p></note>
	*  @param name <p>The name of the entity to reference. </p>
	*  @return <p>The new <code>EntityReference</code> object.</p>
	*  @throw DOMException <p>INVALID_CHARACTER_ERR: Raised if the specified name contains
	*  an illegal character.</p><p>NOT_SUPPORTED_ERR: Raised if this document is an HTML document.</p>
	*/
	public function createEntityReference(name:String=undefined):EntityReference { return null;}
	/**
	*  <p>Returns a <code>NodeList</code> of all the <code>Elements</code>
	*  with a given tag name in the order in which they are encountered
	*  in a preorder traversal of the <code>Document</code> tree.
	*  </p>
	*  @param tagname <p>The name of the tag to match on. The special value "*"
	*  matches all tags.</p>
	*  @return <p>A new <code>NodeList</code> object containing
	*  all the matched <code>Elements</code>.</p>
	*/
	public function getElementsByTagName(tagname:String=undefined):NodeList { return null;}
	/**
	*  <p>Imports a node from another document to this document. The returned
	*  node has no parent; (<code>parentNode</code> is <code>null</code>). The
	*  source node is not altered or removed from the original document; this
	*  method creates a new copy of the source node.</p><p>For all nodes, importing a node creates a node object owned by the
	*  importing document, with attribute values identical to the source
	*  node's <code>nodeName</code> and <code>nodeType</code>, plus the
	*  attributes related to namespaces (<code>prefix</code>,
	*  <code>localName</code>, and <code>namespaceURI</code>). As in the
	*  <code>cloneNode</code> operation on a <code>Node</code>, the source
	*  node is not altered.</p><p>Additional information is copied as appropriate to the
	*  <code>nodeType</code>, attempting to mirror the behavior expected if a
	*  fragment of XML or HTML source was copied from one document to another,
	*  recognizing that the two documents may have different DTDs in the XML
	*  case. The following list describes the specifics for each type of
	*  node.
	*  <glist><gitem><label>ATTRIBUTE_NODE</label><def><p>The <code>ownerElement</code> attribute is set to
	*  <code>null</code> and the <code>specified</code> flag is set to
	*  <code>true</code> on the generated <code>Attr</code>. The
	*  descendants of the source <code>Attr</code> are recursively
	*  imported and the resulting nodes reassembled to form the
	*  corresponding subtree.</p><p>Note that the <code>deep</code> parameter has no effect on
	*  <code>Attr</code> nodes; they always carry their children with
	*  them when imported.</p></def></gitem><gitem><label>DOCUMENT_FRAGMENT_NODE</label><def><p>If the <code>deep</code> option was set to
	*  <code>true</code>, the descendants of the source element are
	*  recursively imported and the resulting nodes reassembled to
	*  form the corresponding subtree. Otherwise, this simply
	*  generates an empty <code>DocumentFragment</code>.</p></def></gitem><gitem><label>DOCUMENT_NODE</label><def><p><code>Document</code> nodes cannot be imported.</p></def></gitem><gitem><label>DOCUMENT_TYPE_NODE</label><def><p><code>DocumentType</code> nodes cannot be imported.</p></def></gitem><gitem><label>ELEMENT_NODE</label><def><p><emph>Specified</emph> attribute nodes of the source
	*  element are imported, and the generated <code>Attr</code> nodes
	*  are attached to the generated <code>Element</code>. Default
	*  attributes are <emph>not</emph> copied, though if the document
	*  being imported into defines default attributes for this element
	*  name, those are assigned. If the <code>importNode</code><code>deep</code> parameter was set to <code>true</code>, the
	*  descendants of the source element are recursively imported
	*  and the resulting nodes reassembled to form the corresponding
	*  subtree.</p></def></gitem><gitem><label>ENTITY_NODE</label><def><p><code>Entity</code> nodes can be imported, however in the
	*  current release of the DOM the <code>DocumentType</code> is
	*  readonly. Ability to add these imported nodes to a
	*  <code>DocumentType</code> will be considered for addition to a
	*  future release of the DOM.</p><p>On import, the <code>publicId</code>, <code>systemId</code>,
	*  and <code>notationName</code> attributes are copied. If a
	*  <code>deep</code> import is requested, the descendants of the
	*  the source <code>Entity</code> are recursively imported and the
	*  resulting nodes reassembled to form the corresponding
	*  subtree.</p></def></gitem><gitem><label>ENTITY_REFERENCE_NODE</label><def><p>Only the <code>EntityReference</code> itself is copied,
	*  even if a <code>deep</code> import is requested, since the
	*  source and destination documents might have defined the entity
	*  differently. If the document being imported into provides a
	*  definition for this entity name, its value is assigned.</p></def></gitem><gitem><label>NOTATION_NODE</label><def><p><code>Notation</code> nodes can be imported, however in the
	*  current release of the DOM the <code>DocumentType</code> is
	*  readonly. Ability to add these imported nodes to a
	*  <code>DocumentType</code> will be considered for addition to a
	*  future release of the DOM.</p><p>On import, the <code>publicId</code> and
	*  <code>systemId</code> attributes are copied.</p><p>Note that the <code>deep</code> parameter has no effect on
	*  <code>Notation</code> nodes since they never have any
	*  children.</p></def></gitem><gitem><label>PROCESSING_INSTRUCTION_NODE</label><def><p>The imported node copies its <code>target</code> and
	*  <code>data</code> values from those of the source node.</p></def></gitem><gitem><label>TEXT_NODE, CDATA_SECTION_NODE, COMMENT_NODE</label><def><p>These three types of nodes inheriting from
	*  <code>CharacterData</code> copy their <code>data</code> and
	*  <code>length</code> attributes from those of the source
	*  node.</p></def></gitem></glist></p>
	*  @param importedNode <p>The node to import.</p>
	*  @param deep <p>If <code>true</code>, recursively import the subtree
	*  under the specified node; if <code>false</code>, import only
	*  the node itself, as explained above. This has no effect on
	*  <code>Attr</code>, <code>EntityReference</code>, and
	*  <code>Notation</code> nodes.</p>
	*  @return <p>The imported node that belongs to this
	*  <code>Document</code>.</p>
	*  @throw DOMException <p>NOT_SUPPORTED_ERR: Raised if the type of node being imported
	*  is not supported.</p>
	*/
	public function importNode(importedNode:Node=undefined, deep:Boolean=false):Node { return null;}
	/**
	*  <p>Creates an element of the given qualified name and namespace
	*  URI. HTML-only DOM implementations do not need to implement this
	*  method.</p>
	*  @param namespaceURI <p>The namespace URI of
	*  the element to create.</p>
	*  @param qualifiedName <p>The qualified name
	*  of the element type to instantiate.</p>
	*  @return <p>A new <code>Element</code> object with the following
	*  attributes:</p><table summary="Layout table: the first cell the name property,                         the second cell contains his initial value"><tbody><tr><th>Attribute</th><th>Value</th></tr><tr><td><code>Node.nodeName</code></td><td><code>qualifiedName</code></td></tr><tr><td><code>Node.namespaceURI</code></td><td><code>namespaceURI</code></td></tr><tr><td><code>Node.prefix</code></td><td>prefix, extracted from
	*  <code>qualifiedName</code>, or <code>null</code> if there is no
	*  prefix</td></tr><tr><td><code>Node.localName</code></td><td>local name, extracted from
	*  <code>qualifiedName</code></td></tr><tr><td><code>Element.tagName</code></td><td><code>qualifiedName</code></td></tr></tbody></table>
	*  @throw DOMException <p>INVALID_CHARACTER_ERR: Raised if the specified qualified name
	*  contains an illegal character.</p><p>NAMESPACE_ERR: Raised if the <code>qualifiedName</code> is
	*  malformed, if the <code>qualifiedName</code> has a prefix and
	*  the <code>namespaceURI</code> is <code>null</code>, or if
	*  the <code>qualifiedName</code> has a prefix that
	*  is "xml" and the <code>namespaceURI</code> is different
	*  from "<loc href="http://www.w3.org/XML/1998/namespace">http://www.w3.org/XML/1998/namespace</loc>" <bibref ref="Namespaces" />.</p>
	*/
	public function createElementNS(namespaceURI:String=undefined, qualifiedName:String=undefined):Element { return null;}
	/**
	*  <p>Creates an attribute of the given qualified name and namespace
	*  URI. HTML-only DOM implementations do not need to implement this
	*  method.</p>
	*  @param namespaceURI <p>The namespace URI of
	*  the attribute to create.</p>
	*  @param qualifiedName <p>The qualified name
	*  of the attribute to instantiate.</p>
	*  @return <p>A new <code>Attr</code> object with the following
	*  attributes:</p><table summary="Layout table: the first cell the name property,                         the second cell contains his initial value"><tbody><tr><th>Attribute</th><th>Value</th></tr><tr><td><code>Node.nodeName</code></td><td>qualifiedName</td></tr><tr><td><code>Node.namespaceURI</code></td><td><code>namespaceURI</code></td></tr><tr><td><code>Node.prefix</code></td><td>prefix, extracted from
	*  <code>qualifiedName</code>, or <code>null</code> if there is no
	*  prefix</td></tr><tr><td><code>Node.localName</code></td><td>local name, extracted from
	*  <code>qualifiedName</code></td></tr><tr><td><code>Attr.name</code></td><td><code>qualifiedName</code></td></tr><tr><td><code>Node.nodeValue</code></td><td>the empty string</td></tr></tbody></table>
	*  @throw DOMException <p>INVALID_CHARACTER_ERR: Raised if the specified qualified name
	*  contains an illegal character.</p><p>NAMESPACE_ERR: Raised if the <code>qualifiedName</code> is
	*  malformed, if the <code>qualifiedName</code> has a prefix and
	*  the <code>namespaceURI</code> is <code>null</code>, if the
	*  <code>qualifiedName</code> has a prefix that is
	*  "xml" and the <code>namespaceURI</code> is different from
	*  "<loc href="http://www.w3.org/XML/1998/namespace">http://www.w3.org/XML/1998/namespace</loc>", or if the
	*  <code>qualifiedName</code> is "xmlns" and the
	*  <code>namespaceURI</code> is different from
	*  "<loc href="http://www.w3.org/2000/xmlns/">http://www.w3.org/2000/xmlns/</loc>".</p>
	*/
	public function createAttributeNS(namespaceURI:String=undefined, qualifiedName:String=undefined):Attr { return null;}
	/**
	*  <p>Returns a <code>NodeList</code> of all the <code>Elements</code>
	*  with a given local name and
	*  namespace URI in the order in which they are encountered in a
	*  preorder traversal of the <code>Document</code> tree.</p>
	*  @param namespaceURI <p>The namespace URI of
	*  the elements to match on. The special value "*" matches all
	*  namespaces.</p>
	*  @param localName <p>The local name of the
	*  elements to match on. The special value "*" matches all local
	*  names.</p>
	*  @return <p>A new <code>NodeList</code> object containing all the matched
	*  <code>Elements</code>.</p>
	*/
	public function getElementsByTagNameNS(namespaceURI:String=undefined, localName:String=undefined):NodeList { return null;}
	/**
	*  <p>Returns the <code>Element</code> whose <code>ID</code>
	*  is given by <code>elementId</code>. If no such element exists, returns
	*  <code>null</code>. Behavior is not defined if more than one element has
	*  this <code>ID</code>.
	*  <note><p>The DOM implementation must have information that says which
	*  attributes are of type ID. Attributes with the name "ID" are not of type ID unless
	*  so defined. Implementations that do not know whether attributes are of type
	*  ID or not are expected to return <code>null</code>.</p></note></p>
	*  @param elementId <p>The unique <code>id</code> value for an element.</p>
	*  @return <p>The matching element.</p>
	*/
	public function getElementById(elementId:String=undefined):Element { return null;}

	public function get inputEncoding():String { return ''; }

	public function get xmlEncoding():String { return ''; }

	public function get xmlVersion():String { return ''; }
	public function set xmlVersion(value:String):void { }

	public function get xmlStandalone():Boolean { return false; }
	public function set xmlStandalone(value:Boolean):void { }
	/**
	*  @param source (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Node</code> instance.
	*/
	public function adoptNode(source:Node=undefined):Node { return null;}

	public function get documentURI():String { return ''; }
	/**
	*  @param eventType (optional argument, default value is <code>undefined</code>)
	*  @return A <code>DomEvent</code> instance.
	*/
	public function createEvent(eventType:String=undefined):DomEvent { return null;}
	/**
	*  @return A <code>Range</code> instance.
	*/
	public function createRange():Range { return null;}
	/**
	*  @param root (optional argument, default value is <code>undefined</code>)
	*  @param whatToShow (optional argument, default value is <code>undefined</code>)
	*  @param filter (optional argument, default value is <code>undefined</code>)
	*  @param expandEntityReferences (optional argument, default value is <code>undefined</code>)
	*  @return A <code>NodeIterator</code> instance.
	*/
	public function createNodeIterator(root:Node=undefined, whatToShow:uint=undefined, filter:NodeFilter=undefined, expandEntityReferences:Boolean=undefined):NodeIterator { return null;}
	/**
	*  @param root (optional argument, default value is <code>undefined</code>)
	*  @param whatToShow (optional argument, default value is <code>undefined</code>)
	*  @param filter (optional argument, default value is <code>undefined</code>)
	*  @param expandEntityReferences (optional argument, default value is <code>undefined</code>)
	*  @return A <code>TreeWalker</code> instance.
	*/
	public function createTreeWalker(root:Node=undefined, whatToShow:uint=undefined, filter:NodeFilter=undefined, expandEntityReferences:Boolean=undefined):TreeWalker { return null;}

	/**
	*  @see randori.webkit.page.Window
	*/
	public function get defaultView():Window { return null; }

	/**
	*  @see randori.webkit.css.StyleSheetList
	*/
	public function get styleSheets():StyleSheetList { return null; }
	/**
	*  @param element (optional argument, default value is <code>undefined</code>)
	*  @param pseudoElement (optional argument, default value is <code>undefined</code>)
	*  @return A <code>CSSStyleDeclaration</code> instance.
	*/
	public function getOverrideStyle(element:Element=undefined, pseudoElement:String=undefined):CSSStyleDeclaration { return null;}
	/**
	*  @param expression (optional argument, default value is <code>undefined</code>)
	*  @param resolver (optional argument, default value is <code>undefined</code>)
	*  @return A <code>XPathExpression</code> instance.
	*/
	public function createExpression(expression:String=undefined, resolver:XPathNSResolver=undefined):XPathExpression { return null;}
	/**
	*  @param nodeResolver
	*  @return A <code>XPathNSResolver</code> instance.
	*/
	public function createNSResolver(nodeResolver:Node):XPathNSResolver { return null;}
	/**
	*  @param expression (optional argument, default value is <code>undefined</code>)
	*  @param contextNode (optional argument, default value is <code>undefined</code>)
	*  @param resolver (optional argument, default value is <code>undefined</code>)
	*  @param type (optional argument, default value is <code>undefined</code>)
	*  @param inResult (optional argument, default value is <code>undefined</code>)
	*  @return A <code>XPathResult</code> instance.
	*/
	public function evaluate(expression:String=undefined, contextNode:Node=undefined, resolver:XPathNSResolver=undefined, type:uint=undefined, inResult:XPathResult=undefined):XPathResult { return null;}
	/**
	*  @param command (optional argument, default value is <code>undefined</code>)
	*  @param userInterface (optional argument, default value is <code>undefined</code>)
	*  @param value (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function execCommand(command:String=undefined, userInterface:Boolean=undefined, value:String=undefined):Boolean { return false;}
	/**
	*  @param command (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function queryCommandEnabled(command:String=undefined):Boolean { return false;}
	/**
	*  @param command (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function queryCommandIndeterm(command:String=undefined):Boolean { return false;}
	/**
	*  @param command (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function queryCommandState(command:String=undefined):Boolean { return false;}
	/**
	*  @param command (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function queryCommandSupported(command:String=undefined):Boolean { return false;}
	/**
	*  @param command (optional argument, default value is <code>undefined</code>)
	*  @return A <code>String</code> instance.
	*/
	public function queryCommandValue(command:String=undefined):String { return '';}

	public function get title():String { return ''; }
	public function set title(value:String):void { }

	public function get referrer():String { return ''; }

	public function get domain():String { return ''; }
	public function set domain(value:String):void { }

	[JavaScriptProperty(name="URL")]
	public function get URL_():String { return ''; }

	public function get cookie():String { return ''; }
	public function set cookie(value:String):void { }

	/**
	*  @see randori.webkit.html.HTMLElement
	*/
	public function get body():HTMLElement { return null; }
	public function set body(value:HTMLElement):void { }

	/**
	*  @see randori.webkit.html.HTMLHeadElement
	*/
	public function get head():HTMLHeadElement { return null; }

	/**
	*  @see randori.webkit.html.HTMLCollection
	*/
	public function get images():HTMLCollection { return null; }

	/**
	*  @see randori.webkit.html.HTMLCollection
	*/
	public function get applets():HTMLCollection { return null; }

	/**
	*  @see randori.webkit.html.HTMLCollection
	*/
	public function get links():HTMLCollection { return null; }

	/**
	*  @see randori.webkit.html.HTMLCollection
	*/
	public function get forms():HTMLCollection { return null; }

	/**
	*  @see randori.webkit.html.HTMLCollection
	*/
	public function get anchors():HTMLCollection { return null; }

	public function get lastModified():String { return ''; }
	/**
	*  @param elementName (optional argument, default value is <code>undefined</code>)
	*  @return A <code>NodeList</code> instance.
	*/
	public function getElementsByName(elementName:String=undefined):NodeList { return null;}

	/**
	*  @see randori.webkit.page.Location
	*/
	public function get location():Location { return null; }
	public function set location(value:Location):void { }

	public function get charset():String { return ''; }
	public function set charset(value:String):void { }

	public function get defaultCharset():String { return ''; }

	public function get readyState():String { return ''; }
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Element</code> instance.
	*/
	public function elementFromPoint(x:uint=undefined, y:uint=undefined):Element { return null;}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Range</code> instance.
	*/
	public function caretRangeFromPoint(x:uint=undefined, y:uint=undefined):Range { return null;}
	/**
	*  @return A <code>Selection</code> instance.
	*/
	public function getSelection():Selection { return null;}

	public function get characterSet():String { return ''; }

	public function get preferredStylesheetSet():String { return ''; }

	public function get selectedStylesheetSet():String { return ''; }
	public function set selectedStylesheetSet(value:String):void { }
	/**
	*  @param contextId
	*  @param name
	*  @param width
	*  @param height
	*  @return A <code>CanvasRenderingContext</code> instance.
	*/
	public function getCSSCanvasContext(contextId:String, name:String, width:uint, height:uint):CanvasRenderingContext { return null;}
	/**
	*  @param tagname (optional argument, default value is <code>undefined</code>)
	*  @return A <code>NodeList</code> instance.
	*/
	public function getElementsByClassName(tagname:String=undefined):NodeList { return null;}

	public function get compatMode():String { return ''; }
	/**
	*  @param selectors
	*  @return A <code>Element</code> instance.
	*/
	public function querySelector(selectors:String):Element { return null;}
	/**
	*  @param selectors
	*  @return A <code>NodeList</code> instance.
	*/
	public function querySelectorAll(selectors:String):NodeList { return null;}

	public function get onabort():Function { return null; }
	public function set onabort(value:Function):void { }

	public function get onblur():Function { return null; }
	public function set onblur(value:Function):void { }

	public function get onchange():Function { return null; }
	public function set onchange(value:Function):void { }

	public function get onclick():Function { return null; }
	public function set onclick(value:Function):void { }

	public function get oncontextmenu():Function { return null; }
	public function set oncontextmenu(value:Function):void { }

	public function get ondblclick():Function { return null; }
	public function set ondblclick(value:Function):void { }

	public function get ondrag():Function { return null; }
	public function set ondrag(value:Function):void { }

	public function get ondragend():Function { return null; }
	public function set ondragend(value:Function):void { }

	public function get ondragenter():Function { return null; }
	public function set ondragenter(value:Function):void { }

	public function get ondragleave():Function { return null; }
	public function set ondragleave(value:Function):void { }

	public function get ondragover():Function { return null; }
	public function set ondragover(value:Function):void { }

	public function get ondragstart():Function { return null; }
	public function set ondragstart(value:Function):void { }

	public function get ondrop():Function { return null; }
	public function set ondrop(value:Function):void { }

	public function get onerror():Function { return null; }
	public function set onerror(value:Function):void { }

	public function get onfocus():Function { return null; }
	public function set onfocus(value:Function):void { }

	public function get oninput():Function { return null; }
	public function set oninput(value:Function):void { }

	public function get oninvalid():Function { return null; }
	public function set oninvalid(value:Function):void { }

	public function get onkeydown():Function { return null; }
	public function set onkeydown(value:Function):void { }

	public function get onkeypress():Function { return null; }
	public function set onkeypress(value:Function):void { }

	public function get onkeyup():Function { return null; }
	public function set onkeyup(value:Function):void { }

	public function get onload():Function { return null; }
	public function set onload(value:Function):void { }

	public function get onmousedown():Function { return null; }
	public function set onmousedown(value:Function):void { }

	public function get onmousemove():Function { return null; }
	public function set onmousemove(value:Function):void { }

	public function get onmouseout():Function { return null; }
	public function set onmouseout(value:Function):void { }

	public function get onmouseover():Function { return null; }
	public function set onmouseover(value:Function):void { }

	public function get onmouseup():Function { return null; }
	public function set onmouseup(value:Function):void { }

	public function get onmousewheel():Function { return null; }
	public function set onmousewheel(value:Function):void { }

	public function get onreadystatechange():Function { return null; }
	public function set onreadystatechange(value:Function):void { }

	public function get onscroll():Function { return null; }
	public function set onscroll(value:Function):void { }

	public function get onselect():Function { return null; }
	public function set onselect(value:Function):void { }

	public function get onsubmit():Function { return null; }
	public function set onsubmit(value:Function):void { }

	public function get onbeforecut():Function { return null; }
	public function set onbeforecut(value:Function):void { }

	public function get oncut():Function { return null; }
	public function set oncut(value:Function):void { }

	public function get onbeforecopy():Function { return null; }
	public function set onbeforecopy(value:Function):void { }

	public function get oncopy():Function { return null; }
	public function set oncopy(value:Function):void { }

	public function get onbeforepaste():Function { return null; }
	public function set onbeforepaste(value:Function):void { }

	public function get onpaste():Function { return null; }
	public function set onpaste(value:Function):void { }

	public function get onreset():Function { return null; }
	public function set onreset(value:Function):void { }

	public function get onsearch():Function { return null; }
	public function set onsearch(value:Function):void { }

	public function get onselectstart():Function { return null; }
	public function set onselectstart(value:Function):void { }

	public function get onselectionchange():Function { return null; }
	public function set onselectionchange(value:Function):void { }

	public function get ontouchstart():Function { return null; }
	public function set ontouchstart(value:Function):void { }

	public function get ontouchmove():Function { return null; }
	public function set ontouchmove(value:Function):void { }

	public function get ontouchend():Function { return null; }
	public function set ontouchend(value:Function):void { }

	public function get ontouchcancel():Function { return null; }
	public function set ontouchcancel(value:Function):void { }

	/**
	*  @see randori.webkit.page.SecurityPolicy
	*/
	public function get securityPolicy():SecurityPolicy { return null; }
}

}