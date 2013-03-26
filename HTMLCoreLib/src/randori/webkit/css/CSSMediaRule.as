
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/css/CSSMediaRule.idl

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


[JavaScript(export="false", name="CSSMediaRule")]
/**
 *  <p>
 *  The <code>CSSMediaRule</code> interface represents a @media
 *  rule in a CSS style sheet. A <code>@media</code> rule can be
 *  used to delimit style rules for specific media types.
 *  </p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/media.html#at-media-rule
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/media.html#media-types
 *  @see randori.webkit.css.CSSRule
 */
public class CSSMediaRule extends CSSRule
{

	/**
	*  <p>
	*  A list of media types for this rule.
	*  </p>
	*  @see randori.webkit.css.MediaList
	*/
	public function get media():MediaList { return null; }

	/**
	*  <p>
	*  A list of all CSS rules contained within the media block.
	*  </p>
	*  @see randori.webkit.css.CSSRuleList
	*/
	public function get cssRules():CSSRuleList { return null; }
	/**
	*  <p>
	*  Used to insert a new rule into the media block.
	*  </p>
	*  @param rule <p>
	*  The parsable text representing the rule. For rule sets
	*  this contains both the selector and the style declaration.
	*  For at-rules, this specifies both the at-identifier and the
	*  rule content.
	*  </p>
	*  @param index <p>
	*  The index within the media block's rule collection of the rule
	*  before which to insert the specified rule. If the
	*  specified index is equal to the length of the media blocks's rule
	*  collection, the rule will be added to the end of the media block.
	*  </p>
	*  @return <p>
	*  The index within the media block's rule collection of the newly
	*  inserted rule.
	*  </p>
	*  @throw DOMException <p>HIERARCHY_REQUEST_ERR: Raised if the rule cannot be inserted
	*  at the specified index, e.g., if an <code>@import</code> rule
	*  is inserted after a standard rule set or other at-rule.</p><p>INDEX_SIZE_ERR: Raised if the specified index is not a valid
	*  insertion point.</p><p>NO_MODIFICATION_ALLOWED_ERR: Raised if this media rule is
	*  readonly.</p><p>SYNTAX_ERR: Raised if the specified rule has a syntax error
	*  and is unparsable.</p>
	*/
	public function insertRule(rule:String=undefined, index:uint=undefined):uint { return 0;}
	/**
	*  <p>
	*  Used to delete a rule from the media block.
	*  </p>
	*  @param index <p>
	*  The index within the media block's rule collection of the rule
	*  to remove.
	*  </p>
	*  @throw DOMException <p>INDEX_SIZE_ERR: Raised if the specified index does not correspond
	*  to a rule in the media rule list.</p><p>NO_MODIFICATION_ALLOWED_ERR: Raised if this media rule is
	*  readonly.</p>
	*/
	public function deleteRule(index:uint=undefined):void {}
}

}