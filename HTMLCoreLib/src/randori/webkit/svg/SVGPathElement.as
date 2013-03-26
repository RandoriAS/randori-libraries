
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/svg/SVGPathElement.idl

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


[JavaScript(export="false", nativecondition="SVG", name="SVGPathElement")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.svg.SVGStyledElement
 *  @see randori.webkit.svg.SVGTests
 *  @see randori.webkit.svg.SVGLangSpace
 *  @see randori.webkit.svg.SVGExternalResourcesRequired
 *  @see randori.webkit.svg.SVGTransformable
 */
public class SVGPathElement extends SVGStyledElement implements SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGTransformable
{

	/**
	*  @see randori.webkit.svg.SVGAnimatedNumber
	*/
	public function get pathLength():SVGAnimatedNumber { return null; }
	/**
	*  @return A <code>Number</code> instance.
	*/
	public function getTotalLength():Number { return 0;}
	/**
	*  @param distance (optional argument, default value is <code>undefined</code>)
	*  @return A <code>SVGPoint</code> instance.
	*/
	public function getPointAtLength(distance:Number=undefined):SVGPoint { return null;}
	/**
	*  @param distance (optional argument, default value is <code>undefined</code>)
	*  @return A <code>uint</code> instance.
	*/
	public function getPathSegAtLength(distance:Number=undefined):uint { return 0;}
	/**
	*  @return A <code>SVGPathSegClosePath</code> instance.
	*/
	public function createSVGPathSegClosePath():SVGPathSegClosePath { return null;}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @return A <code>SVGPathSegMovetoAbs</code> instance.
	*/
	public function createSVGPathSegMovetoAbs(x:Number=undefined, y:Number=undefined):SVGPathSegMovetoAbs { return null;}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @return A <code>SVGPathSegMovetoRel</code> instance.
	*/
	public function createSVGPathSegMovetoRel(x:Number=undefined, y:Number=undefined):SVGPathSegMovetoRel { return null;}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @return A <code>SVGPathSegLinetoAbs</code> instance.
	*/
	public function createSVGPathSegLinetoAbs(x:Number=undefined, y:Number=undefined):SVGPathSegLinetoAbs { return null;}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @return A <code>SVGPathSegLinetoRel</code> instance.
	*/
	public function createSVGPathSegLinetoRel(x:Number=undefined, y:Number=undefined):SVGPathSegLinetoRel { return null;}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @param x1 (optional argument, default value is <code>undefined</code>)
	*  @param y1 (optional argument, default value is <code>undefined</code>)
	*  @param x2 (optional argument, default value is <code>undefined</code>)
	*  @param y2 (optional argument, default value is <code>undefined</code>)
	*  @return A <code>SVGPathSegCurvetoCubicAbs</code> instance.
	*/
	public function createSVGPathSegCurvetoCubicAbs(x:Number=undefined, y:Number=undefined, x1:Number=undefined, y1:Number=undefined, x2:Number=undefined, y2:Number=undefined):SVGPathSegCurvetoCubicAbs { return null;}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @param x1 (optional argument, default value is <code>undefined</code>)
	*  @param y1 (optional argument, default value is <code>undefined</code>)
	*  @param x2 (optional argument, default value is <code>undefined</code>)
	*  @param y2 (optional argument, default value is <code>undefined</code>)
	*  @return A <code>SVGPathSegCurvetoCubicRel</code> instance.
	*/
	public function createSVGPathSegCurvetoCubicRel(x:Number=undefined, y:Number=undefined, x1:Number=undefined, y1:Number=undefined, x2:Number=undefined, y2:Number=undefined):SVGPathSegCurvetoCubicRel { return null;}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @param x1 (optional argument, default value is <code>undefined</code>)
	*  @param y1 (optional argument, default value is <code>undefined</code>)
	*  @return A <code>SVGPathSegCurvetoQuadraticAbs</code> instance.
	*/
	public function createSVGPathSegCurvetoQuadraticAbs(x:Number=undefined, y:Number=undefined, x1:Number=undefined, y1:Number=undefined):SVGPathSegCurvetoQuadraticAbs { return null;}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @param x1 (optional argument, default value is <code>undefined</code>)
	*  @param y1 (optional argument, default value is <code>undefined</code>)
	*  @return A <code>SVGPathSegCurvetoQuadraticRel</code> instance.
	*/
	public function createSVGPathSegCurvetoQuadraticRel(x:Number=undefined, y:Number=undefined, x1:Number=undefined, y1:Number=undefined):SVGPathSegCurvetoQuadraticRel { return null;}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @param r1 (optional argument, default value is <code>undefined</code>)
	*  @param r2 (optional argument, default value is <code>undefined</code>)
	*  @param angle (optional argument, default value is <code>undefined</code>)
	*  @param largeArcFlag (optional argument, default value is <code>undefined</code>)
	*  @param sweepFlag (optional argument, default value is <code>undefined</code>)
	*  @return A <code>SVGPathSegArcAbs</code> instance.
	*/
	public function createSVGPathSegArcAbs(x:Number=undefined, y:Number=undefined, r1:Number=undefined, r2:Number=undefined, angle:Number=undefined, largeArcFlag:Boolean=undefined, sweepFlag:Boolean=undefined):SVGPathSegArcAbs { return null;}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @param r1 (optional argument, default value is <code>undefined</code>)
	*  @param r2 (optional argument, default value is <code>undefined</code>)
	*  @param angle (optional argument, default value is <code>undefined</code>)
	*  @param largeArcFlag (optional argument, default value is <code>undefined</code>)
	*  @param sweepFlag (optional argument, default value is <code>undefined</code>)
	*  @return A <code>SVGPathSegArcRel</code> instance.
	*/
	public function createSVGPathSegArcRel(x:Number=undefined, y:Number=undefined, r1:Number=undefined, r2:Number=undefined, angle:Number=undefined, largeArcFlag:Boolean=undefined, sweepFlag:Boolean=undefined):SVGPathSegArcRel { return null;}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @return A <code>SVGPathSegLinetoHorizontalAbs</code> instance.
	*/
	public function createSVGPathSegLinetoHorizontalAbs(x:Number=undefined):SVGPathSegLinetoHorizontalAbs { return null;}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @return A <code>SVGPathSegLinetoHorizontalRel</code> instance.
	*/
	public function createSVGPathSegLinetoHorizontalRel(x:Number=undefined):SVGPathSegLinetoHorizontalRel { return null;}
	/**
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @return A <code>SVGPathSegLinetoVerticalAbs</code> instance.
	*/
	public function createSVGPathSegLinetoVerticalAbs(y:Number=undefined):SVGPathSegLinetoVerticalAbs { return null;}
	/**
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @return A <code>SVGPathSegLinetoVerticalRel</code> instance.
	*/
	public function createSVGPathSegLinetoVerticalRel(y:Number=undefined):SVGPathSegLinetoVerticalRel { return null;}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @param x2 (optional argument, default value is <code>undefined</code>)
	*  @param y2 (optional argument, default value is <code>undefined</code>)
	*  @return A <code>SVGPathSegCurvetoCubicSmoothAbs</code> instance.
	*/
	public function createSVGPathSegCurvetoCubicSmoothAbs(x:Number=undefined, y:Number=undefined, x2:Number=undefined, y2:Number=undefined):SVGPathSegCurvetoCubicSmoothAbs { return null;}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @param x2 (optional argument, default value is <code>undefined</code>)
	*  @param y2 (optional argument, default value is <code>undefined</code>)
	*  @return A <code>SVGPathSegCurvetoCubicSmoothRel</code> instance.
	*/
	public function createSVGPathSegCurvetoCubicSmoothRel(x:Number=undefined, y:Number=undefined, x2:Number=undefined, y2:Number=undefined):SVGPathSegCurvetoCubicSmoothRel { return null;}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @return A <code>SVGPathSegCurvetoQuadraticSmoothAbs</code> instance.
	*/
	public function createSVGPathSegCurvetoQuadraticSmoothAbs(x:Number=undefined, y:Number=undefined):SVGPathSegCurvetoQuadraticSmoothAbs { return null;}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @return A <code>SVGPathSegCurvetoQuadraticSmoothRel</code> instance.
	*/
	public function createSVGPathSegCurvetoQuadraticSmoothRel(x:Number=undefined, y:Number=undefined):SVGPathSegCurvetoQuadraticSmoothRel { return null;}

	/**
	*  @see randori.webkit.svg.SVGPathSegList
	*/
	public function get pathSegList():SVGPathSegList { return null; }

	/**
	*  @see randori.webkit.svg.SVGPathSegList
	*/
	public function get normalizedPathSegList():SVGPathSegList { return null; }

	/**
	*  @see randori.webkit.svg.SVGPathSegList
	*/
	public function get animatedPathSegList():SVGPathSegList { return null; }

	/**
	*  @see randori.webkit.svg.SVGPathSegList
	*/
	public function get animatedNormalizedPathSegList():SVGPathSegList { return null; }

	/**
	*  @see randori.webkit.svg.SVGStringList
	*/
	public function get requiredFeatures():SVGStringList { return null; }

	/**
	*  @see randori.webkit.svg.SVGStringList
	*/
	public function get requiredExtensions():SVGStringList { return null; }

	/**
	*  @see randori.webkit.svg.SVGStringList
	*/
	public function get systemLanguage():SVGStringList { return null; }
	/**
	*  @param extension (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function hasExtension(extension:String=undefined):Boolean { return false;}

	public function get xmllang():String { return ''; }
	public function set xmllang(value:String):void { }

	public function get xmlspace():String { return ''; }
	public function set xmlspace(value:String):void { }

	/**
	*  @see randori.webkit.svg.SVGAnimatedBoolean
	*/
	public function get externalResourcesRequired():SVGAnimatedBoolean { return null; }

	/**
	*  @see randori.webkit.svg.SVGAnimatedTransformList
	*/
	public function get transform():SVGAnimatedTransformList { return null; }

	/**
	*  @see randori.webkit.svg.SVGElement
	*/
	public function get nearestViewportElement():SVGElement { return null; }

	/**
	*  @see randori.webkit.svg.SVGElement
	*/
	public function get farthestViewportElement():SVGElement { return null; }
	/**
	*  @return A <code>SVGRect</code> instance.
	*/
	public function getBBox():SVGRect { return null;}
	/**
	*  @return A <code>SVGMatrix</code> instance.
	*/
	public function getCTM():SVGMatrix { return null;}
	/**
	*  @return A <code>SVGMatrix</code> instance.
	*/
	public function getScreenCTM():SVGMatrix { return null;}
	/**
	*  @param element (optional argument, default value is <code>undefined</code>)
	*  @return A <code>SVGMatrix</code> instance.
	*/
	public function getTransformToElement(element:SVGElement=undefined):SVGMatrix { return null;}
}

}