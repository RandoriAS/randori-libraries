
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/css/CSSCharsetRule.idl

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


[JavaScript(export="false", name="CSSCharsetRule")]
/**
 *  <p>
 *  The <code>CSSCharsetRule</code> interface represents a @charset
 *  rule in a CSS style sheet. The value of the
 *  <code>encoding</code> attribute does not affect the encoding of
 *  text data in the DOM objects; this encoding is always UTF-16. After a
 *  stylesheet is loaded, the value of the <code>encoding</code> attribute is
 *  the value found in the <code>@charset</code> rule. If there was no
 *  <code>@charset</code> in the original document, then no
 *  <code>CSSCharsetRule</code> is created.  The value of the
 *  <code>encoding</code> attribute may also be used as a hint for the
 *  encoding used on serialization of the style sheet.
 *  </p><p>
 *  The value of the @charset
 *  rule (and therefore of the <code>CSSCharsetRule</code>) may
 *  not correspond to the encoding the document actually came in; character
 *  encoding information e.g. in an HTTP header, has priority (see CSS document representation) but this is
 *  not reflected in the <code>CSSCharsetRule</code>.
 *  </p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#x66
 *  @see randori.webkit.css.CSSRule
 */
public class CSSCharsetRule extends CSSRule
{

	/**
	*  <p>
	*  The encoding information used in this <code>@charset</code> rule.
	*  </p>
	*/
	public function get encoding():String { return ''; }
	public function set encoding(value:String):void { }
}

}