
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/svg/SVGMatrix.idl

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


package randori.webkit.svg
{


[JavaScript(export="false", nativecondition="SVG", name="SVGMatrix")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class SVGMatrix
{

	public function get a():Number { return 0; }
	public function set a(value:Number):void { }

	public function get b():Number { return 0; }
	public function set b(value:Number):void { }

	public function get c():Number { return 0; }
	public function set c(value:Number):void { }

	public function get d():Number { return 0; }
	public function set d(value:Number):void { }

	public function get e():Number { return 0; }
	public function set e(value:Number):void { }

	public function get f():Number { return 0; }
	public function set f(value:Number):void { }
	/**
	*  @param secondMatrix
	*  @return A <code>SVGMatrix</code> instance.
	*/
	public function multiply(secondMatrix:SVGMatrix):SVGMatrix { return null;}
	/**
	*  @return A <code>SVGMatrix</code> instance.
	*/
	public function inverse():SVGMatrix { return null;}
	/**
	*  @param x
	*  @param y
	*  @return A <code>SVGMatrix</code> instance.
	*/
	public function translate(x:Number, y:Number):SVGMatrix { return null;}
	/**
	*  @param scaleFactor
	*  @return A <code>SVGMatrix</code> instance.
	*/
	public function scale(scaleFactor:Number):SVGMatrix { return null;}
	/**
	*  @param scaleFactorX
	*  @param scaleFactorY
	*  @return A <code>SVGMatrix</code> instance.
	*/
	public function scaleNonUniform(scaleFactorX:Number, scaleFactorY:Number):SVGMatrix { return null;}
	/**
	*  @param angle
	*  @return A <code>SVGMatrix</code> instance.
	*/
	public function rotate(angle:Number):SVGMatrix { return null;}
	/**
	*  @param x
	*  @param y
	*  @return A <code>SVGMatrix</code> instance.
	*/
	public function rotateFromVector(x:Number, y:Number):SVGMatrix { return null;}
	/**
	*  @return A <code>SVGMatrix</code> instance.
	*/
	public function flipX():SVGMatrix { return null;}
	/**
	*  @return A <code>SVGMatrix</code> instance.
	*/
	public function flipY():SVGMatrix { return null;}
	/**
	*  @param angle
	*  @return A <code>SVGMatrix</code> instance.
	*/
	public function skewX(angle:Number):SVGMatrix { return null;}
	/**
	*  @param angle
	*  @return A <code>SVGMatrix</code> instance.
	*/
	public function skewY(angle:Number):SVGMatrix { return null;}
}

}