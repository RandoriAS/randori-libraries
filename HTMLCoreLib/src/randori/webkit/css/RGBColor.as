
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/css/RGBColor.idl

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


[JavaScript(export="false", name="RGBColor")]
/**
 *  <p>
 *  The <code>RGBColor</code> interface is used to represent any RGB
 *  color value. This interface reflects the values in the
 *  underlying style property. Hence, modifications made to the
 *  <code>CSSPrimitiveValue</code> objects modify the style property.
 *  </p><p>
 *  A specified RGB color is not clipped (even if the number is outside the
 *  range 0-255 or 0%-100%). A computed RGB color is clipped depending on the
 *  device.
 *  </p><p>
 *  Even if a style sheet can only contain an integer for a color value, the
 *  internal storage of this integer is a float, and this can be used as a
 *  float in the specified or the computed style.
 *  </p><p>
 *  A color percentage value can always be converted to a number and vice
 *  versa.
 *  </p>
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#value-def-color
 */
public class RGBColor
{

	/**
	*  <p>
	*  This attribute is used for the red value of the RGB color.
	*  </p>
	*  @see randori.webkit.css.CSSPrimitiveValue
	*/
	public function get red():CSSPrimitiveValue { return null; }

	/**
	*  <p>
	*  This attribute is used for the green value of the RGB color.
	*  </p>
	*  @see randori.webkit.css.CSSPrimitiveValue
	*/
	public function get green():CSSPrimitiveValue { return null; }

	/**
	*  <p>
	*  This attribute is used for the blue value of the RGB color.
	*  </p>
	*  @see randori.webkit.css.CSSPrimitiveValue
	*/
	public function get blue():CSSPrimitiveValue { return null; }
}

}