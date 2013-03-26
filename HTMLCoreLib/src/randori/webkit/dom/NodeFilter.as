
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/NodeFilter.idl

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


[JavaScript(export="false", name="NodeFilter")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class NodeFilter
{
	public static const FILTER_ACCEPT:int = 1;
	public static const FILTER_REJECT:int = 2;
	public static const FILTER_SKIP:int = 3;
	public static const SHOW_ALL:uint = 0xFFFFFFF;
	public static const SHOW_ELEMENT:uint = 0x00000001;
	public static const SHOW_ATTRIBUTE:uint = 0x00000002;
	public static const SHOW_TEXT:uint = 0x00000004;
	public static const SHOW_CDATA_SECTION:uint = 0x00000008;
	public static const SHOW_ENTITY_REFERENCE:uint = 0x00000010;
	public static const SHOW_ENTITY:uint = 0x00000020;
	public static const SHOW_PROCESSING_INSTRUCTION:uint = 0x00000040;
	public static const SHOW_COMMENT:uint = 0x00000080;
	public static const SHOW_DOCUMENT:uint = 0x00000100;
	public static const SHOW_DOCUMENT_TYPE:uint = 0x00000200;
	public static const SHOW_DOCUMENT_FRAGMENT:uint = 0x00000400;
	public static const SHOW_NOTATION:uint = 0x00000800;
	/**
	*  @param n (optional argument, default value is <code>undefined</code>)
	*  @return A <code>int</code> instance.
	*/
	public function acceptNode(n:Node=undefined):int { return 0;}
}

}