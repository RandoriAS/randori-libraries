
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/Notation.idl

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


[JavaScript(export="false", name="Notation")]
/**
 *  <p>This interface represents a notation declared in the DTD. A notation
 *  either declares, by name, the format of an unparsed entity (see  section 4.7
 *  of the XML 1.0 specification <bibref ref="XML" />), or is used for formal
 *  declaration of
 *  processing instruction targets (see section 2.6 of the XML 1.0
 *  specification <bibref ref="XML" />). The <code>nodeName</code> attribute
 *  inherited from
 *  <code>Node</code> is set to the declared name of the notation.</p><p>The DOM Level 1 does not support editing <code>Notation</code>
 *  nodes; they are therefore
 *  readonly.</p><p>A <code>Notation</code> node does not have any parent.</p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see http://www.w3.org/TR/1998/REC-xml-19980210#Notations
 *  @see http://www.w3.org/TR/1998/REC-xml-19980210#sec-pi
 *  @see randori.webkit.dom.Node
 */
public class Notation extends Node
{

	/**
	*  <p>The public identifier of this notation. If the
	*  public identifier was not specified, this is <code>null</code>.</p>
	*/
	public function get publicId():String { return ''; }

	/**
	*  <p>The system identifier of this notation. If the
	*  system identifier was not specified, this is <code>null</code>.</p>
	*/
	public function get systemId():String { return ''; }
}

}