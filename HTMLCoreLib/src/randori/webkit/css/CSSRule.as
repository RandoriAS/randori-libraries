
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/css/CSSRule.idl

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


[JavaScript(export="false", name="CSSRule")]
/**
 *  <p>
 *  The <code>CSSRule</code> interface is the abstract base interface for any
 *  type of CSS statement.
 *  This includes both rule sets
 *  and at-rules. An
 *  implementation is expected to preserve all rules specified in a CSS style
 *  sheet, even if the rule is not recognized by the parser. Unrecognized
 *  rules are represented using the <code>CSSUnknownRule</code> interface.
 *  </p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#q5
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#q8
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#at-rules
 */
public class CSSRule
{
	public static const UNKNOWN_RULE:uint = 0;
	public static const STYLE_RULE:uint = 1;
	public static const CHARSET_RULE:uint = 2;
	public static const IMPORT_RULE:uint = 3;
	public static const MEDIA_RULE:uint = 4;
	public static const FONT_FACE_RULE:uint = 5;
	public static const PAGE_RULE:uint = 6;

	/**
	*  <p>
	*  The type of the rule, as defined above. The expectation is that
	*  binding-specific casting methods can be used to cast down from an
	*  instance of the <code>CSSRule</code> interface to the specific derived
	*  interface implied by the <code>type</code>.
	*  </p>
	*/
	public function get type():uint { return 0; }

	/**
	*  <p>
	*  The parsable textual representation of the rule. This reflects the
	*  current state of the rule and not its initial value.
	*  </p>
	*/
	public function get cssText():String { return ''; }
	public function set cssText(value:String):void { }

	/**
	*  <p>
	*  The style sheet that contains this rule.
	*  </p>
	*  @see randori.webkit.css.CSSStyleSheet
	*/
	public function get parentStyleSheet():CSSStyleSheet { return null; }

	/**
	*  <p>
	*  If this rule is contained inside another rule (e.g. a style rule inside
	*  an @media block), this is the containing rule. If this rule is not
	*  nested inside any other rules, this returns <code>null</code>.
	*  </p>
	*  @see randori.webkit.css.CSSRule
	*/
	public function get parentRule():CSSRule { return null; }
}

}