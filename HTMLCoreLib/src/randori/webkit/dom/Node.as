
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/Node.idl

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


[JavaScript(export="false", name="Node")]
/**
 *  <p>The <code>Node</code> interface is the primary datatype for the entire Document Object Model.
 *  It represents a single node in the document tree. While all objects
 *  implementing the <code>Node</code> interface expose methods for dealing with children, not all objects
 *  implementing the <code>Node</code> interface may have children. For example, <code>Text</code> nodes may not have children, and adding children to such nodes results
 *  in a <code>DOMException</code> being raised.</p><p>The attributes <code>nodeName</code>, <code>nodeValue</code> and <code>attributes</code> are included as a mechanism to get at node information without casting
 *  down to the specific derived interface. In cases where there is no obvious
 *  mapping of these attributes for a specific <code>nodeType</code> (e.g., <code>nodeValue</code> for an <code>Element</code> or <code>attributes</code> for a <code>Comment</code>), this returns <code>null</code>. Note that the specialized interfaces may contain additional and more
 *  convenient mechanisms to get and set the relevant information.</p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class Node
{
	public static const ELEMENT_NODE:uint = 1;
	public static const ATTRIBUTE_NODE:uint = 2;
	public static const TEXT_NODE:uint = 3;
	public static const CDATA_SECTION_NODE:uint = 4;
	public static const ENTITY_REFERENCE_NODE:uint = 5;
	public static const ENTITY_NODE:uint = 6;
	public static const PROCESSING_INSTRUCTION_NODE:uint = 7;
	public static const COMMENT_NODE:uint = 8;
	public static const DOCUMENT_NODE:uint = 9;
	public static const DOCUMENT_TYPE_NODE:uint = 10;
	public static const DOCUMENT_FRAGMENT_NODE:uint = 11;
	public static const NOTATION_NODE:uint = 12;

	/**
	*  <p>The name of this node, depending on its type; see the table above.
	*  </p>
	*/
	public function get nodeName():String { return ''; }

	/**
	*  <p>The value of this node, depending on its type; see the table above.
	*  When it is defined to be <code>null</code>, setting it has no effect.</p>
	*/
	public function get nodeValue():String { return ''; }
	public function set nodeValue(value:String):void { }

	/**
	*  <p>A code representing the type of the underlying object, as defined
	*  above.</p>
	*/
	public function get nodeType():uint { return 0; }

	/**
	*  <p>The parent of this node. All nodes,
	*  except <code>Attr</code>, <code>Document</code>, <code>DocumentFragment</code>, <code>Entity</code>, and <code>Notation</code> may have a parent. However, if a node has just been created and not yet
	*  added to the tree, or if it has been removed from the tree, this is <code>null</code>.</p>
	*  @see randori.webkit.dom.Node
	*/
	public function get parentNode():Node { return null; }

	/**
	*  <p>A <code>NodeList</code> that contains all children of this node. If there are no children, this
	*  is a <code>NodeList</code> containing no nodes.</p>
	*  @see randori.webkit.dom.NodeList
	*/
	public function get childNodes():NodeList { return null; }

	/**
	*  <p>The first child of this node. If there is no such node, this returns <code>null</code>.</p>
	*  @see randori.webkit.dom.Node
	*/
	public function get firstChild():Node { return null; }

	/**
	*  <p>The last child of this node. If there is no such node, this returns <code>null</code>.</p>
	*  @see randori.webkit.dom.Node
	*/
	public function get lastChild():Node { return null; }

	/**
	*  <p>The node immediately preceding this node. If there is no such node,
	*  this returns <code>null</code>.</p>
	*  @see randori.webkit.dom.Node
	*/
	public function get previousSibling():Node { return null; }

	/**
	*  <p>The node immediately following this node. If there is no such node,
	*  this returns <code>null</code>.</p>
	*  @see randori.webkit.dom.Node
	*/
	public function get nextSibling():Node { return null; }

	/**
	*  <p>The <code>Document</code> object associated with this node. This is also the <code>Document</code> object used to create new nodes. When this node is a <code>Document</code> or a <code>DocumentType</code> which is not used with any <code>Document</code> yet, this is <code>null</code>.</p>
	*  @see randori.webkit.dom.Document
	*/
	public function get ownerDocument():Document { return null; }
	/**
	*  <p>Inserts the node <code>newChild</code> before the existing child node <code>refChild</code>. If <code>refChild</code> is <code>null</code>, insert <code>newChild</code> at the end of the list of children.</p><p>If <code>newChild</code> is a <code>DocumentFragment</code> object, all of its children are inserted, in the same order, before <code>refChild</code>. If the <code>newChild</code> is already in the tree, it is first removed.</p>
	*  @param newChild <p>The node to insert.</p>
	*  @param refChild <p>The reference node, i.e., the node before which the new node must
	*  be inserted.</p>
	*  @return <p>The node being inserted.</p>
	*  @throw DOMException <p>HIERARCHY_REQUEST_ERR: Raised if this node is of a type that does
	*  not allow children of the type of the <code>newChild</code> node, or if the node to insert is one of this node's
	*  ancestors.</p><p>WRONG_DOCUMENT_ERR: Raised if <code>newChild</code> was created from a different document than the one that created this
	*  node.</p><p>NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly or if
	*  the parent of the node being inserted is readonly.</p><p>NOT_FOUND_ERR: Raised if <code>refChild</code> is not a child of this node.</p>
	*/
	public function insertBefore(newChild:Node, refChild:Node):Node { return null;}
	/**
	*  <p>Replaces the child node <code>oldChild</code> with <code>newChild</code> in the list of children, and returns the <code>oldChild</code> node.</p><p>If <code>newChild</code> is a <code>DocumentFragment</code> object, <code>oldChild</code> is replaced by all of the <code>DocumentFragment</code> children, which are inserted in the same order. If the <code>newChild</code> is already in the tree, it is first removed.</p>
	*  @param newChild <p>The new node to put in the child list.</p>
	*  @param oldChild <p>The node being replaced in the list.</p>
	*  @return <p>The node replaced.</p>
	*  @throw DOMException <p>HIERARCHY_REQUEST_ERR: Raised if this node is of a type that does
	*  not allow children of the type of the <code>newChild</code> node, or if the node to put in is one of this node's
	*  ancestors.</p><p>WRONG_DOCUMENT_ERR: Raised if <code>newChild</code> was created from a different document than the one that created this
	*  node.</p><p>NO_MODIFICATION_ALLOWED_ERR: Raised if this node or the parent of
	*  the new node is readonly.</p><p>NOT_FOUND_ERR: Raised if <code>oldChild</code> is not a child of this node.</p>
	*/
	public function replaceChild(newChild:Node, oldChild:Node):Node { return null;}
	/**
	*  <p>Removes the child node indicated by <code>oldChild</code> from the list of children, and returns it.</p>
	*  @param oldChild <p>The node being removed.</p>
	*  @return <p>The node removed.</p>
	*  @throw DOMException <p>NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.</p><p>NOT_FOUND_ERR: Raised if <code>oldChild</code> is not a child of this node.</p>
	*/
	public function removeChild(oldChild:Node):Node { return null;}
	/**
	*  <p>Adds the node <code>newChild</code> to the end of the list of children of this node. If the <code>newChild</code> is already in the tree, it is first removed.</p>
	*  @param newChild <p>The node to add.</p><p>If it is a <code>DocumentFragment</code> object, the entire contents of the document fragment are moved into the
	*  child list of this node</p>
	*  @return <p>The node added.</p>
	*  @throw DOMException <p>HIERARCHY_REQUEST_ERR: Raised if this node is of a type that does
	*  not allow children of the type of the <code>newChild</code> node, or if the node to append is one of this node's
	*  ancestors.</p><p>WRONG_DOCUMENT_ERR: Raised if <code>newChild</code> was created from a different document than the one that created this
	*  node.</p><p>NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.</p>
	*/
	public function appendChild(newChild:Node):Node { return null;}
	/**
	*  <p>Returns whether this node has any children.</p>
	*  @return <p><code>true</code> if this node has any children, <code>false</code> otherwise.</p>
	*/
	public function hasChildNodes():Boolean { return false;}
	/**
	*  <p>Returns a duplicate of this node, i.e., serves as a generic copy
	*  constructor for nodes. The duplicate node has no parent; (<code>parentNode</code> is <code>null</code>.).</p><p>Cloning an <code>Element</code> copies all attributes and their values, including those generated by
	*  the XML processor to represent defaulted attributes, but this method does not
	*  copy any text it contains unless it is a deep clone, since the text is
	*  contained in a child <code>Text</code> node. Cloning an <code>Attribute</code> directly, as opposed to be cloned as part of an <code>Element</code> cloning operation, returns a specified attribute (<code>specified</code> is <code>true</code>). Cloning any other type of node simply returns a copy of this
	*  node.</p><p>Note that cloning an immutable subtree results in a mutable copy, but
	*  the children of an <code>EntityReference</code> clone are readonly. In
	*  addition, clones of unspecified <code>Attr</code> nodes are specified. And, cloning <code>Document</code>, <code>DocumentType</code>, <code>Entity</code>, and <code>Notation</code> nodes is implementation dependent.</p>
	*  @param deep <p>If <code>true</code>, recursively clone the subtree under the specified node; if <code>false</code>, clone only the node itself (and its attributes, if it is an <code>Element</code>). </p>
	*  @return <p>The duplicate node.</p>
	*/
	public function cloneNode(deep:Boolean=undefined):Node { return null;}
	/**
	*  <p>Puts all <code>Text</code> nodes in the full depth of the sub-tree underneath this <code>Node</code>, including attribute nodes, into a "normal" form where only structure
	*  (e.g., elements, comments, processing instructions, CDATA sections, and entity
	*  references) separates <code>Text</code> nodes, i.e., there are neither adjacent <code>Text</code> nodes nor empty <code>Text</code> nodes. This can be used to ensure that the DOM view of a document is
	*  the same as if it were saved and re-loaded, and is useful when operations (such
	*  as XPointer <bibref ref="XPointer" /> lookups) that depend on a particular
	*  document tree structure are to be used.</p><note><p>In cases where the document contains <code>CDATASections</code>, the normalize operation alone may not be sufficient, since XPointers
	*  do not differentiate between <code>Text</code> nodes and <code>CDATASection</code> nodes.</p></note>
	*/
	public function normalize():void {}
	/**
	*  <p>Tests whether the DOM implementation implements a specific feature and
	*  that feature is supported by this node.</p>
	*  @param feature <p>The name of the feature to test. This is the same name which can
	*  be passed to the method <code>hasFeature</code> on <code>DOMImplementation</code>.</p>
	*  @param version <p>This is the version number of the feature to test. In Level 2,
	*  version 1, this is the string "2.0". If the version is not specified,
	*  supporting any version of the feature will cause the method to return <code>true</code>.</p>
	*  @return <p>Returns <code>true</code> if the specified feature is supported on this node, <code>false</code> otherwise.</p>
	*/
	public function isSupported(feature:String=undefined, version:String=undefined):Boolean { return false;}

	/**
	*  <p>The namespace URI of this
	*  node, or <code>null</code> if it is unspecified.</p><p>This is not a computed value that is the result of a namespace lookup
	*  based on an examination of the namespace declarations in scope. It is merely
	*  the namespace URI given at creation time.</p><p>For nodes of any type other than <code>ELEMENT_NODE</code> and <code>ATTRIBUTE_NODE</code> and nodes created with a DOM Level 1 method, such as <code>createElement</code> from the <code>Document</code> interface, this is always <code>null</code>.</p><note><p>Per the <emph>Namespaces in XML</emph> Specification
	*  <bibref ref="Namespaces" /> an attribute does not inherit its namespace from the
	*  element it is attached to. If an attribute is not explicitly given a namespace,
	*  it simply has no namespace.</p></note>
	*/
	public function get namespaceURI():String { return ''; }

	/**
	*  <p>The namespace prefix of
	*  this node, or <code>null</code> if it is unspecified.</p><p>Note that setting this attribute, when permitted, changes the <code>nodeName</code> attribute, which holds the qualified
	*  name, as well as the <code>tagName</code> and <code>name</code> attributes of the <code>Element</code> and <code>Attr</code> interfaces, when applicable.</p><p>Note also that changing the prefix of an attribute that is known to
	*  have a default value, does not make a new attribute with the default value and
	*  the original prefix appear, since the <code>namespaceURI</code> and <code>localName</code> do not change.</p><p>For nodes of any type other than <code>ELEMENT_NODE</code> and <code>ATTRIBUTE_NODE</code> and nodes created with a DOM Level 1 method, such as <code>createElement</code> from the <code>Document</code> interface, this is always <code>null</code>.</p>
	*/
	public function get prefix():String { return ''; }
	public function set prefix(value:String):void { }

	/**
	*  <p>Returns the local part of the qualified name of this node.</p><p>For nodes of any type other than <code>ELEMENT_NODE</code> and <code>ATTRIBUTE_NODE</code> and nodes created with a DOM Level 1 method, such as <code>createElement</code> from the <code>Document</code> interface, this is always <code>null</code>.</p>
	*/
	public function get localName():String { return ''; }

	public function get baseURI():String { return ''; }

	public function get textContent():String { return ''; }
	public function set textContent(value:String):void { }
	/**
	*  @param other (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function isSameNode(other:Node=undefined):Boolean { return false;}
	/**
	*  @param other (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function isEqualNode(other:Node=undefined):Boolean { return false;}
	/**
	*  @param namespaceURI (optional argument, default value is <code>undefined</code>)
	*  @return A <code>String</code> instance.
	*/
	public function lookupPrefix(namespaceURI:String=undefined):String { return '';}
	/**
	*  @param namespaceURI (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function isDefaultNamespace(namespaceURI:String=undefined):Boolean { return false;}
	/**
	*  @param prefix (optional argument, default value is <code>undefined</code>)
	*  @return A <code>String</code> instance.
	*/
	public function lookupNamespaceURI(prefix:String=undefined):String { return '';}
	public static const DOCUMENT_POSITION_DISCONNECTED:uint = 0x01;
	public static const DOCUMENT_POSITION_PRECEDING:uint = 0x02;
	public static const DOCUMENT_POSITION_FOLLOWING:uint = 0x04;
	public static const DOCUMENT_POSITION_CONTAINS:uint = 0x08;
	public static const DOCUMENT_POSITION_CONTAINED_BY:uint = 0x10;
	public static const DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC:uint = 0x20;
	/**
	*  @param other (optional argument, default value is <code>undefined</code>)
	*  @return A <code>uint</code> instance.
	*/
	public function compareDocumentPosition(other:Node=undefined):uint { return 0;}
	/**
	*  @param other (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function contains(other:Node=undefined):Boolean { return false;}

	/**
	*  @see randori.webkit.dom.Element
	*/
	public function get parentElement():Element { return null; }
	/**
	*  @param type
	*  @param listener
	*  @param useCapture (optional argument, default value is <code>false</code>)
	*/
	public function addEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	/**
	*  @param type
	*  @param listener
	*  @param useCapture (optional argument, default value is <code>false</code>)
	*/
	public function removeEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	/**
	*  @param event
	*  @return A <code>Boolean</code> instance.
	*/
	public function dispatchEvent(event:DomEvent):Boolean { return false;}
}

}