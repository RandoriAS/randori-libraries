
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/css/Rect.idl

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


[JavaScript(export="false", name="Rect")]
/**
 *  <p>
 *  The <code>Rect</code> interface is used to represent any rect
 *  value. This interface reflects the values in the underlying style
 *  property. Hence, modifications made to the <code>CSSPrimitiveValue</code>
 *  objects modify the style property.
 *  </p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/visufx.html#value-def-shape
 */
public class Rect
{

	/**
	*  <p>
	*  This attribute is used for the top of the rect.
	*  </p>
	*  @see randori.webkit.css.CSSPrimitiveValue
	*/
	public function get top():CSSPrimitiveValue { return null; }

	/**
	*  <p>
	*  This attribute is used for the right of the rect.
	*  </p>
	*  @see randori.webkit.css.CSSPrimitiveValue
	*/
	public function get right():CSSPrimitiveValue { return null; }

	/**
	*  <p>
	*  This attribute is used for the bottom of the rect.
	*  </p>
	*  @see randori.webkit.css.CSSPrimitiveValue
	*/
	public function get bottom():CSSPrimitiveValue { return null; }

	/**
	*  <p>
	*  This attribute is used for the left of the rect.
	*  </p>
	*  @see randori.webkit.css.CSSPrimitiveValue
	*/
	public function get left():CSSPrimitiveValue { return null; }
}

}