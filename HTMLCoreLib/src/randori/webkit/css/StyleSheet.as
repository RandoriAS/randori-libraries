
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/css/StyleSheet.idl

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


package randori.webkit.css
{

import randori.webkit.dom.Node;

[JavaScript(export="false", name="StyleSheet")]
/**
 *  <p>
 *  The <code>StyleSheet</code> interface is the abstract base interface for
 *  any type of style sheet. It represents a single style sheet associated
 *  with a structured document. In HTML, the StyleSheet interface represents
 *  either an external style sheet, included via the HTML
 *  LINK element, or an inline
 *  STYLE element. In XML, this interface represents an external
 *  style sheet, included via a style sheet
 *  processing instruction.
 *  </p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see http://www.w3.org/TR/1998/REC-html40-19980424/struct/links.html#h-12.3
 *  @see http://www.w3.org/TR/1998/REC-html40-19980424/present/styles.html#h-14.2.3
 *  @see http://www.w3.org/1999/06/REC-xml-stylesheet-19990629
 *  @see http://www.w3.org/TR/1998/REC-html40-19980424/types.html#type-content-type
 *  @see http://www.w3.org/TR/1998/REC-html40-19980424/struct/links.html#adef-type-A
 *  @see http://www.w3.org/TR/1998/REC-html40-19980424/struct/links.html#adef-href
 *  @see http://www.w3.org/1999/06/REC-xml-stylesheet-19990629/#The xml-stylesheet processing instruction
 *  @see http://www.w3.org/TR/1998/REC-html40-19980424/struct/global.html#adef-title
 *  @see http://www.w3.org/TR/1998/REC-html40-19980424/present/styles.html#adef-media
 */
public class StyleSheet
{

	/**
	*  <p>
	*  This specifies the style sheet language for this style sheet. The style
	*  sheet language is specified as a content type (e.g. "text/css").  The
	*  content
	*  type is often specified in the <code>ownerNode</code>.  Also
	*  see the type
	*  attribute definition for the <code>LINK</code> element in
	*  HTML 4.0, and the type pseudo-attribute for the XML style sheet processing instruction.
	*  </p>
	*/
	public function get type():String { return ''; }

	/**
	*  <p><code>false</code> if the style sheet is applied to the document.
	*  <code>true</code> if it is not. Modifying this attribute may cause a
	*  new resolution of style for the document. A stylesheet only applies if
	*  both an appropriate medium definition is present and the disabled
	*  attribute is false. So, if the media doesn't apply to the current user
	*  agent, the <code>disabled</code> attribute is ignored.
	*  </p>
	*/
	public function get disabled():Boolean { return false; }
	public function set disabled(value:Boolean):void { }

	/**
	*  <p>
	*  The node that associates this style sheet with the document. For HTML,
	*  this may be the corresponding <code>LINK</code> or <code>STYLE</code>
	*  element. For XML, it may be the linking processing instruction. For
	*  style sheets that are included by other style sheets, the value of this
	*  attribute is <code>null</code>.
	*  </p>
	*  @see randori.webkit.dom.Node
	*/
	public function get ownerNode():Node { return null; }

	/**
	*  <p>
	*  For style sheet languages that support the concept of style sheet
	*  inclusion, this attribute represents the including style sheet, if one
	*  exists. If the style sheet is a top-level style sheet, or the style
	*  sheet language does not support inclusion, the value of this attribute
	*  is <code>null</code>.
	*  </p>
	*  @see randori.webkit.css.StyleSheet
	*/
	public function get parentStyleSheet():StyleSheet { return null; }

	/**
	*  <p>
	*  If the style sheet is a linked style sheet, the value of its attribute
	*  is its location. For inline style sheets, the value of this attribute
	*  is <code>null</code>. See the href
	*  attribute definition for the <code>LINK</code> element in HTML
	*  4.0, and the href pseudo-attribute for the XML style sheet processing
	*  instruction.
	*  </p>
	*/
	public function get href():String { return ''; }

	/**
	*  <p>
	*  The advisory title.  The title is often specified in the
	*  <code>ownerNode</code>.  See the title attribute
	*  definition for the <code>LINK</code> element in HTML 4.0,
	*  and the title pseudo-attribute for the XML style sheet processing instruction.
	*  </p>
	*/
	public function get title():String { return ''; }

	/**
	*  <p>
	*  The intended destination media for style information.  The media is
	*  often specified in the <code>ownerNode</code>. If no media has been
	*  specified, the <code>MediaList</code> will be empty. See the media
	*  attribute definition for the <code>LINK</code> element in
	*  HTML 4.0, and the media pseudo-attribute for the XML style sheet processing
	*  instruction . Modifying the media list may cause a change to
	*  the attribute <code>disabled</code>.
	*  </p>
	*  @see randori.webkit.css.MediaList
	*/
	public function get media():MediaList { return null; }
}

}