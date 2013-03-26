
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/Entity.idl

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


[JavaScript(export="false", name="Entity")]
/**
 *  <p>This interface represents an entity, either parsed or
 *  unparsed, in an XML document. Note that this models the entity
 *  itself <emph>not</emph> the entity declaration. <code>Entity</code>
 *  declaration modeling has been left for a later Level of the DOM
 *  specification.</p><p>The <code>nodeName</code> attribute that is inherited from
 *  <code>Node</code> contains the name of the entity.</p><p>An XML processor may choose to completely expand entities before
 *  the structure model is passed to the DOM; in this case there will
 *  be no <code>EntityReference</code> nodes in the document tree.</p><p>XML does not mandate that a non-validating XML processor read
 *  and process entity declarations made in the external subset or
 *  declared in external parameter entities. This means
 *  that parsed entities declared in the external subset
 *  need not be expanded by some classes of applications, and that
 *  the replacement value of the entity may not be available. When the
 *  replacement value is available, the corresponding
 *  <code>Entity</code> node's child list represents the structure of
 *  that replacement text. Otherwise, the child list is empty.</p><p>The DOM Level 2 does not support editing <code>Entity</code>
 *  nodes; if a user wants to make changes to the contents of an
 *  <code>Entity</code>, every related <code>EntityReference</code> node
 *  has to be replaced in the structure model by a clone of the
 *  <code>Entity</code>'s contents, and then the desired changes must be made
 *  to each of those clones instead. <code>Entity</code> nodes and all their
 *  descendants are readonly.</p><p>An <code>Entity</code> node does not have any parent.</p><note><p>If the entity contains an unbound namespace prefix, the
 *  <code>namespaceURI</code> of the corresponding node in the
 *  <code>Entity</code> node subtree is <code>null</code>. The same is
 *  true for <code>EntityReference</code> nodes that refer to this entity,
 *  when they are created using the <code>createEntityReference</code>
 *  method of the <code>Document</code> interface. The DOM Level 2 does not
 *  support any mechanism to resolve namespace prefixes.</p></note>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.dom.Node
 */
public class Entity extends Node
{

	/**
	*  <p>The public identifier associated with the entity, if
	*  specified. If the public identifier was not specified, this
	*  is <code>null</code>.</p>
	*/
	public function get publicId():String { return ''; }

	/**
	*  <p>The system identifier associated with the entity, if
	*  specified. If the system identifier was not specified, this
	*  is <code>null</code>.</p>
	*/
	public function get systemId():String { return ''; }

	/**
	*  <p>For unparsed entities, the name of the notation for the
	*  entity. For parsed entities, this is <code>null</code>. </p>
	*/
	public function get notationName():String { return ''; }
}

}