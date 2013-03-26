
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/Attr.idl

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


[JavaScript(export="false", name="Attr")]
/**
 *  <p>
 *  The <code>Attr</code> interface represents an attribute in an <code>Element</code> object.
 *  Typically the allowable values for the attribute are defined in a document
 *  type definition.</p><p><code>Attr</code> objects inherit the <code>Node</code>
 *  interface, but since they are not actually child nodes of the element
 *  they describe, the DOM does not consider them part of the document
 *  tree.  Thus, the <code>Node</code> attributes <code>parentNode</code>,
 *  <code>previousSibling</code>, and <code>nextSibling</code> have a
 *  <code>null</code> value for <code>Attr</code> objects. The DOM takes the
 *  view that attributes are properties of elements rather than having a
 *  separate identity from the elements they are associated with;
 *  this should make it more efficient to implement
 *  such features as default attributes associated with all elements of a
 *  given type.  Furthermore, <code>Attr</code>
 *  nodes may not be immediate children of a <code>DocumentFragment</code>.
 *  However, they can be associated with <code>Element</code> nodes contained within
 *  a <code>DocumentFragment</code>.
 *  In short, users and implementors of the DOM need to be aware that
 *  <code>Attr</code> nodes have some things in
 *  common with other objects inheriting the <code>Node</code> interface,
 *  but they also are quite distinct.</p><p> The attribute's effective value is determined as follows: if this
 *  attribute has been explicitly assigned any value, that value is the
 *  attribute's effective value; otherwise, if there is a declaration for
 *  this attribute, and that declaration includes a default value, then
 *  that default value is the attribute's effective value; otherwise, the
 *  attribute does not exist on this element in the structure model until
 *  it has been explicitly added.  Note that the <code>nodeValue</code>
 *  attribute on the <code>Attr</code> instance can also be used to
 *  retrieve the string version of the attribute's value(s). </p><p>In XML, where the value of an attribute can contain entity references,
 *  the child nodes of the <code>Attr</code> node may be either
 *  <code>Text</code> or <code>EntityReference</code> nodes (when these are in
 *  use; see the description of <code>EntityReference</code> for
 *  discussion). Because the DOM Core is not aware of attribute types, it
 *  treats all attribute values as simple strings, even if the DTD or schema
 *  declares them as having tokenized
 *  types.
 *  </p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.dom.Node
 */
public class Attr extends Node
{

	/**
	*  <p>Returns the name of this attribute. </p>
	*/
	public function get name():String { return ''; }

	/**
	*  <p>If this attribute was explicitly given a value in the original
	*  document, this is <code>true</code>; otherwise, it is <code>false</code>.
	*  Note that the implementation is in charge of this attribute, not the
	*  user. If the user changes the value of the attribute (even if it ends up
	*  having the same value as the default value) then the <code>specified</code>
	*  flag is automatically flipped to <code>true</code>.  To re-specify the
	*  attribute as the default value from the DTD, the user must delete the
	*  attribute. The implementation will then make a new attribute available
	*  with <code>specified</code> set to <code>false</code> and the default value
	*  (if one exists).</p><p>In summary:
	*  <ulist><item><p> If the attribute has an assigned value in the document then
	*  <code>specified</code> is <code>true</code>, and the value is the
	*  assigned value.
	*  </p></item><item><p> If the attribute has no assigned value in the document and has
	*  a default value in the DTD, then  <code>specified</code> is <code>false</code>,
	*  and the value is the default value in the DTD.</p></item><item><p> If the attribute has no assigned value in the document and has
	*  a value of #IMPLIED in the DTD, then the  attribute does not appear
	*  in the structure model of the document.
	*  </p></item><item><p>If the <code>ownerElement</code> attribute is
	*  <code>null</code> (i.e. because it was just created or was set to
	*  <code>null</code> by the various removal and cloning operations)
	*  <code>specified</code> is <code>true</code>.</p></item></ulist></p>
	*/
	public function get specified():Boolean { return false; }

	/**
	*  <p>On retrieval, the value of the attribute is returned as a
	*  string. Character and general entity references are replaced with their
	*  values. See also the method <code>getAttribute</code> on the
	*  <code>Element</code> interface.</p><p>On setting, this creates a <code>Text</code> node with the unparsed
	*  contents of the string. I.e. any characters that an XML processor would
	*  recognize as markup are instead treated as literal text.
	*  See also the method <code>setAttribute</code> on the
	*  <code>Element</code> interface.</p>
	*/
	public function get value():String { return ''; }
	public function set value(value:String):void { }

	/**
	*  <p>The <code>Element</code> node this attribute is attached to or
	*  <code>null</code> if this attribute is not in use.</p>
	*  @see randori.webkit.dom.Element
	*/
	public function get ownerElement():Element { return null; }

	public function get isId():Boolean { return false; }
}

}