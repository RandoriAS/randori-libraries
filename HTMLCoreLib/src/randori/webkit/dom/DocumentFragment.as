
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/DocumentFragment.idl

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


[JavaScript(export="false", name="DocumentFragment")]
/**
 *  <p><code>DocumentFragment</code> is a "lightweight" or "minimal"
 *  <code>Document</code> object. It is very common to want to be able to
 *  extract a portion of a document's tree or to create a new fragment of a
 *  document. Imagine implementing a user command like cut or rearranging a
 *  document by moving fragments around. It is desirable to have an object
 *  which can hold such fragments and it is quite natural to use a Node for
 *  this purpose. While it is true that a <code>Document</code> object could
 *  fulfill this role, a <code>Document</code> object can potentially be a
 *  heavyweight object, depending on the underlying implementation. What is
 *  really needed for this is a very lightweight object.
 *  <code>DocumentFragment</code> is such an object.</p><p>Furthermore, various operations -- such as inserting nodes as children
 *  of another <code>Node</code> -- may take <code>DocumentFragment</code>
 *  objects as arguments;  this results in all the child nodes of the
 *  <code>DocumentFragment</code> being moved to the child list of this
 *  node.</p><p>The children of a <code>DocumentFragment</code> node are zero or more
 *  nodes representing the tops of any sub-trees defining the structure of
 *  the document. <code>DocumentFragment</code> nodes do not need to be
 *  well-formed XML documents (although they do need to follow the rules
 *  imposed upon well-formed XML parsed entities, which can have multiple top
 *  nodes). For example, a <code>DocumentFragment</code> might have only one
 *  child and that child node could be a <code>Text</code> node. Such a
 *  structure model represents neither an HTML document nor a well-formed XML
 *  document.</p><p>When a <code>DocumentFragment</code> is inserted into a
 *  <code>Document</code> (or indeed any other <code>Node</code> that may
 *  take children) the children of the <code>DocumentFragment</code> and not
 *  the <code>DocumentFragment</code> itself are inserted into the
 *  <code>Node</code>. This makes the <code>DocumentFragment</code> very
 *  useful when the user wishes to create nodes that are siblings; the
 *  <code>DocumentFragment</code> acts as the parent of these nodes so that
 *  the user can use the standard methods from the <code>Node</code>
 *  interface, such as <code>insertBefore</code> and
 *  <code>appendChild</code>.</p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.dom.Node
 */
public class DocumentFragment extends Node
{
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
}

}