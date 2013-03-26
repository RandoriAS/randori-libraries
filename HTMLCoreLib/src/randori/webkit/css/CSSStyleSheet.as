
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/css/CSSStyleSheet.idl

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


[JavaScript(export="false", name="CSSStyleSheet")]
/**
 *  <p>
 *  The <code>CSSStyleSheet</code> interface is a concrete interface used
 *  to represent a CSS style sheet i.e., a style sheet whose content type
 *  is "text/css".
 *  </p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#q8
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#at-rules
 *  @see randori.webkit.css.StyleSheet
 */
public class CSSStyleSheet extends StyleSheet
{

	/**
	*  <p>
	*  If this style sheet comes from an <code>@import</code> rule, the
	*  <code>ownerRule</code> attribute will contain the
	*  <code>CSSImportRule</code>. In that case, the <code>ownerNode</code>
	*  attribute in the <code>StyleSheet</code> interface will be
	*  <code>null</code>. If the style sheet comes from an element or a
	*  processing instruction, the <code>ownerRule</code> attribute will be
	*  <code>null</code> and the <code>ownerNode</code> attribute will contain
	*  the <code>Node</code>.
	*  </p>
	*  @see randori.webkit.css.CSSRule
	*/
	public function get ownerRule():CSSRule { return null; }

	/**
	*  <p>
	*  The list of all CSS rules contained within the style sheet.
	*  This includes both rule sets and
	*  at-rules.
	*  </p>
	*  @see randori.webkit.css.CSSRuleList
	*/
	public function get cssRules():CSSRuleList { return null; }
	/**
	*  <p>
	*  Used to insert a new rule into the style sheet. The new rule now
	*  becomes part of the cascade.
	*  </p>
	*  @param rule <p>
	*  The parsable text representing the rule. For rule sets
	*  this contains both the selector and the style declaration.
	*  For at-rules, this specifies both the at-identifier and the
	*  rule content.
	*  </p>
	*  @param index <p>
	*  The index within the style sheet's rule list of the rule
	*  before which to insert the specified rule. If the
	*  specified index is equal to the length of the style sheet's rule
	*  collection, the rule will be added to the end of the style sheet.
	*  </p>
	*  @return <p>
	*  The index within the style sheet's rule collection of the newly
	*  inserted rule.
	*  </p>
	*  @throw DOMException <p>HIERARCHY_REQUEST_ERR: Raised if the rule cannot be inserted
	*  at the specified index e.g. if an <code>@import</code> rule
	*  is inserted after a standard rule set or other at-rule.</p><p>INDEX_SIZE_ERR: Raised if the specified index is not a valid
	*  insertion point.</p><p>NO_MODIFICATION_ALLOWED_ERR: Raised if this style sheet is
	*  readonly.</p><p>SYNTAX_ERR: Raised if the specified rule has a syntax error
	*  and is unparsable.</p>
	*/
	public function insertRule(rule:String=undefined, index:uint=undefined):uint { return 0;}
	/**
	*  <p>
	*  Used to delete a rule from the style sheet.
	*  </p>
	*  @param index <p>
	*  The index within the style sheet's rule list of the rule
	*  to remove.
	*  </p>
	*  @throw DOMException <p>INDEX_SIZE_ERR: Raised if the specified index does not correspond
	*  to a rule in the style sheet's rule list.</p><p>NO_MODIFICATION_ALLOWED_ERR: Raised if this style sheet is
	*  readonly.</p>
	*/
	public function deleteRule(index:uint=undefined):void {}

	/**
	*  @see randori.webkit.css.CSSRuleList
	*/
	public function get rules():CSSRuleList { return null; }
	/**
	*  @param selector (optional argument, default value is <code>undefined</code>)
	*  @param style (optional argument, default value is <code>undefined</code>)
	*  @param index (optional argument, default value is <code>0</code>)
	*  @return A <code>uint</code> instance.
	*/
	public function addRule(selector:String=undefined, style:String=undefined, index:uint=0):uint { return 0;}
	/**
	*  @param index (optional argument, default value is <code>undefined</code>)
	*/
	public function removeRule(index:uint=undefined):void {}
}

}