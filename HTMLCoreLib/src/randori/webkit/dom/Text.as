
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/Text.idl

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


[JavaScript(export="false", name="Text")]
/**
 *  <p>The <code>Text</code> interface inherits from <code>CharacterData</code> and represents the textual content (termed
 *  character data in XML) of an <code>Element</code> or <code>Attr</code>. If there is no markup inside an element's content, the text is
 *  contained in a single object implementing the <code>Text</code> interface that is the only child of the element. If there is markup, it
 *  is parsed into the information items
 *  (elements, comments, etc.) and <code>Text</code> nodes that form the list of children of the element.</p><p>When a document is first made available via the DOM, there is only one <code>Text</code> node for each block of text. Users may create adjacent <code>Text</code> nodes that represent the contents of a given element without any
 *  intervening markup, but should be aware that there is no way to represent the
 *  separations between these nodes in XML or HTML, so they will not (in general)
 *  persist between DOM editing sessions. The <code>normalize()</code> method on <code>Node</code> merges any such adjacent <code>Text</code> objects into a single node for each block of text.</p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see http://www.w3.org/TR/1998/REC-xml-19980210#syntax
 *  @see randori.webkit.dom.CharacterData
 */
public class Text extends CharacterData
{
	/**
	*  <p>Breaks this node into two nodes at the specified <code>offset</code>, keeping both in the tree as siblings. After being split, this node will contain
	*  all the content up to the <code>offset</code> point. A new node of the same type, which contains all the content at
	*  and after the <code>offset</code> point, is returned. If the original node had a parent node, the new
	*  node is inserted as the next sibling of the
	*  original node. When the <code>offset</code> is equal to the length of this node, the new node has no data.</p>
	*  @param offset <p>The 16-bit unit offset at
	*  which to split, starting from <code>0</code>.</p>
	*  @return <p>The new node, of the same type as this node.</p>
	*  @throw DOMException <p>INDEX_SIZE_ERR: Raised if the specified offset is negative or
	*  greater than the number of 16-bit units in <code>data</code>.</p><p>NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.</p>
	*/
	public function splitText(offset:uint=undefined):Text { return null;}

	public function get wholeText():String { return ''; }
	/**
	*  @param content (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Text</code> instance.
	*/
	public function replaceWholeText(content:String=undefined):Text { return null;}
}

}