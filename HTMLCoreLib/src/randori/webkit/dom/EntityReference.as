
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/EntityReference.idl

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


[JavaScript(export="false", name="EntityReference")]
/**
 *  <p><code>EntityReference</code> objects may be inserted into the
 *  structure model when an entity reference is in the source document, or
 *  when the user wishes to insert an entity reference. Note that character
 *  references and references to predefined entities are considered to be
 *  expanded by the HTML or XML processor so that characters are represented
 *  by their Unicode equivalent rather than by an entity reference. Moreover,
 *  the XML processor may completely expand references to entities while
 *  building the structure model, instead of providing
 *  <code>EntityReference</code> objects. If it does provide such objects,
 *  then for a given <code>EntityReference</code> node, it may be that there
 *  is no <code>Entity</code> node representing the referenced entity. If
 *  such an <code>Entity</code> exists, then the subtree of the
 *  <code>EntityReference</code> node is in general a copy of the
 *  <code>Entity</code> node subtree. However, this may not be true when an
 *  entity contains an unbound namespace
 *  prefix. In such a case, because the namespace prefix resolution
 *  depends on where the entity reference is, the descendants of the
 *  <code>EntityReference</code> node may be bound to different
 *  namespace URIs.</p><p>As for <code>Entity</code> nodes, <code>EntityReference</code> nodes and
 *  all their descendants are
 *  readonly.</p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.dom.Node
 */
public class EntityReference extends Node
{
}

}