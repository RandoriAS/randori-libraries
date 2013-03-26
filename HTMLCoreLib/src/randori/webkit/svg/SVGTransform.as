
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/svg/SVGTransform.idl

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


[JavaScript(export="false", nativecondition="SVG", name="SVGTransform")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class SVGTransform
{
	public static const SVG_TRANSFORM_UNKNOWN:uint = 0;
	public static const SVG_TRANSFORM_MATRIX:uint = 1;
	public static const SVG_TRANSFORM_TRANSLATE:uint = 2;
	public static const SVG_TRANSFORM_SCALE:uint = 3;
	public static const SVG_TRANSFORM_ROTATE:uint = 4;
	public static const SVG_TRANSFORM_SKEWX:uint = 5;
	public static const SVG_TRANSFORM_SKEWY:uint = 6;

	public function get type():uint { return 0; }

	/**
	*  @see randori.webkit.svg.SVGMatrix
	*/
	public function get matrix():SVGMatrix { return null; }

	public function get angle():Number { return 0; }
	/**
	*  @param matrix
	*/
	public function setMatrix(matrix:SVGMatrix):void {}
	/**
	*  @param tx
	*  @param ty
	*/
	public function setTranslate(tx:Number, ty:Number):void {}
	/**
	*  @param sx
	*  @param sy
	*/
	public function setScale(sx:Number, sy:Number):void {}
	/**
	*  @param angle
	*  @param cx
	*  @param cy
	*/
	public function setRotate(angle:Number, cx:Number, cy:Number):void {}
	/**
	*  @param angle
	*/
	public function setSkewX(angle:Number):void {}
	/**
	*  @param angle
	*/
	public function setSkewY(angle:Number):void {}
}

}