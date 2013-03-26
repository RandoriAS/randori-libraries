
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/css/CSSStyleDeclaration.idl

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


[JavaScript(export="false", name="CSSStyleDeclaration")]
/**
 *  <p>
 *  The <code>CSSStyleDeclaration</code> interface represents a single
 *  CSS declaration block. This interface may be used to determine the style properties
 *  currently set in a block or to set style properties explicitly within
 *  the block.
 *  </p><p>
 *  While an implementation may not recognize all CSS properties within a CSS
 *  declaration block, it is expected to provide access to all specified
 *  properties in the style sheet through the
 *  <code>CSSStyleDeclaration</code> interface.  Furthermore, implementations
 *  that support a specific level of CSS should correctly handle CSS shorthand properties
 *  for that level. For a further discussion of shorthand properties, see the
 *  <code>CSS2Properties</code> interface.
 *  </p><p>
 *  This interface is also used to provide a <b>read-only</b> access to the
 *  computed
 *  values of an element. See also the <code>ViewCSS</code>
 *  interface.
 *  </p><note><p>
 *  The CSS Object Model doesn't provide an access to the specified or
 *  actual values of the
 *  CSS cascade.
 *  </p></note>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#block
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/about.html#shorthand
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/cascade.html#computed-value
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/cascade.html#specified-value
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/propidx.html
 */
public dynamic class CSSStyleDeclaration
{

	/**
	*  <p>
	*  The parsable textual representation of the declaration block (excluding
	*  the surrounding curly braces). Setting this attribute will result in
	*  the parsing of the new value and resetting of all the properties in the
	*  declaration block including the removal or addition of properties.
	*  </p>
	*/
	public function get cssText():String { return ''; }
	public function set cssText(value:String):void { }
	/**
	*  <p>
	*  Used to retrieve the value of a CSS property if it has been explicitly
	*  set within this declaration block.
	*  </p>
	*  @param propertyName <p>
	*  The name of the CSS property. See the CSS property index.
	*  </p>
	*  @return <p>
	*  Returns the value of the property if it has been explicitly set
	*  for this declaration block. Returns the empty string if the property
	*  has not been set.
	*  </p>
	*/
	public function getPropertyValue(propertyName:String=undefined):String { return '';}
	/**
	*  <p>
	*  Used to retrieve the object representation of the value of a CSS
	*  property if it has been explicitly set within this declaration block.
	*  This method returns <code>null</code> if the property is a shorthand property. Shorthand
	*  property values can only be accessed and modified as strings, using
	*  the <code>getPropertyValue</code> and <code>setProperty</code> methods.
	*  </p>
	*  @param propertyName <p>
	*  The name of the CSS property. See the CSS property index.
	*  </p>
	*  @return <p>
	*  Returns the value of the property if it has been explicitly set for
	*  this declaration block. Returns <code>null</code> if the property
	*  has not been set.
	*  </p>
	*/
	public function getPropertyCSSValue(propertyName:String=undefined):CSSValue { return null;}
	/**
	*  <p>
	*  Used to remove a CSS property if it has been explicitly
	*  set within this declaration block.
	*  </p>
	*  @param propertyName <p>
	*  The name of the CSS property. See the CSS property index.
	*  </p>
	*  @return <p>
	*  Returns the value of the property if it has been explicitly set
	*  for this declaration block. Returns the empty string if the property
	*  has not been set or the property name does not correspond to
	*  a known CSS property.
	*  </p>
	*  @throw DOMException <p>NO_MODIFICATION_ALLOWED_ERR: Raised if this declaration is
	*  readonly or the property is readonly.</p>
	*/
	public function removeProperty(propertyName:String=undefined):String { return '';}
	/**
	*  <p>
	*  Used to retrieve the priority of a CSS property
	*  (e.g. the <code>"important"</code> qualifier) if the property
	*  has been explicitly set in this declaration block.
	*  </p>
	*  @param propertyName <p>
	*  The name of the CSS property. See the CSS property
	*  index.
	*  </p>
	*  @return <p>
	*  A string representing the priority (e.g. <code>"important"</code>)
	*  if one exists. The empty string if none exists.
	*  </p>
	*/
	public function getPropertyPriority(propertyName:String=undefined):String { return '';}
	/**
	*  <p>
	*  Used to set a property value and priority within this declaration
	*  block.
	*  </p>
	*  @param propertyName <p>
	*  The name of the CSS property. See the CSS property index.
	*  </p>
	*  @param value <p>
	*  The new value of the property.
	*  </p>
	*  @param priority <p>
	*  The new priority of the property (e.g. <code>"important"</code>).
	*  </p>
	*  @throw DOMException <p>SYNTAX_ERR: Raised if the specified value has a syntax error
	*  and is unparsable.</p><p>NO_MODIFICATION_ALLOWED_ERR: Raised if this declaration is
	*  readonly or the property is readonly.</p>
	*/
	public function setProperty(propertyName:String=undefined, value:String=undefined, priority:String=undefined):void {}

	/**
	*  <p>
	*  The number of properties that have been explicitly set in this
	*  declaration block. The range of valid indices is 0 to length-1
	*  inclusive.
	*  </p>
	*/
	public function get length():uint { return 0; }

	/**
	*  <p>
	*  The CSS rule that contains this declaration block or <code>null</code>
	*  if this <code>CSSStyleDeclaration</code> is not attached to a
	*  <code>CSSRule</code>.
	*  </p>
	*  @see randori.webkit.css.CSSRule
	*/
	public function get parentRule():CSSRule { return null; }
	/**
	*  @param propertyName (optional argument, default value is <code>undefined</code>)
	*  @return A <code>String</code> instance.
	*/
	public function getPropertyShorthand(propertyName:String=undefined):String { return '';}
	/**
	*  @param propertyName (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function isPropertyImplicit(propertyName:String=undefined):Boolean { return false;}
}

}