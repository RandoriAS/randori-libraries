
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/svg/SVGSVGElement.idl

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

import randori.webkit.dom.NodeList;
import randori.webkit.dom.Element;

[JavaScript(export="false", nativecondition="SVG", name="SVGSVGElement")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.svg.SVGStyledElement
 *  @see randori.webkit.svg.SVGTests
 *  @see randori.webkit.svg.SVGLangSpace
 *  @see randori.webkit.svg.SVGExternalResourcesRequired
 *  @see randori.webkit.svg.SVGTransformable
 *  @see randori.webkit.svg.SVGFitToViewBox
 *  @see randori.webkit.svg.SVGZoomAndPan
 */
public class SVGSVGElement extends SVGStyledElement implements SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGTransformable, SVGFitToViewBox, SVGZoomAndPan
{

	/**
	*  @see randori.webkit.svg.SVGAnimatedLength
	*/
	public function get x():SVGAnimatedLength { return null; }

	/**
	*  @see randori.webkit.svg.SVGAnimatedLength
	*/
	public function get y():SVGAnimatedLength { return null; }

	/**
	*  @see randori.webkit.svg.SVGAnimatedLength
	*/
	public function get width():SVGAnimatedLength { return null; }

	/**
	*  @see randori.webkit.svg.SVGAnimatedLength
	*/
	public function get height():SVGAnimatedLength { return null; }

	public function get contentScriptType():String { return ''; }
	public function set contentScriptType(value:String):void { }

	public function get contentStyleType():String { return ''; }
	public function set contentStyleType(value:String):void { }

	/**
	*  @see randori.webkit.svg.SVGRect
	*/
	public function get viewport():SVGRect { return null; }

	public function get pixelUnitToMillimeterX():Number { return 0; }

	public function get pixelUnitToMillimeterY():Number { return 0; }

	public function get screenPixelToMillimeterX():Number { return 0; }

	public function get screenPixelToMillimeterY():Number { return 0; }

	public function get useCurrentView():Boolean { return false; }

	/**
	*  @see randori.webkit.svg.SVGViewSpec
	*/
	public function get currentView():SVGViewSpec { return null; }

	public function get currentScale():Number { return 0; }
	public function set currentScale(value:Number):void { }

	/**
	*  @see randori.webkit.svg.SVGPoint
	*/
	public function get currentTranslate():SVGPoint { return null; }
	/**
	*  @param maxWaitMilliseconds (optional argument, default value is <code>undefined</code>)
	*  @return A <code>uint</code> instance.
	*/
	public function suspendRedraw(maxWaitMilliseconds:uint=undefined):uint { return 0;}
	/**
	*  @param suspendHandleId (optional argument, default value is <code>undefined</code>)
	*/
	public function unsuspendRedraw(suspendHandleId:uint=undefined):void {}
	public function unsuspendRedrawAll():void {}
	public function forceRedraw():void {}
	public function pauseAnimations():void {}
	public function unpauseAnimations():void {}
	/**
	*  @return A <code>Boolean</code> instance.
	*/
	public function animationsPaused():Boolean { return false;}
	/**
	*  @return A <code>Number</code> instance.
	*/
	public function getCurrentTime():Number { return 0;}
	/**
	*  @param seconds (optional argument, default value is <code>undefined</code>)
	*/
	public function setCurrentTime(seconds:Number=undefined):void {}
	/**
	*  @param rect (optional argument, default value is <code>undefined</code>)
	*  @param referenceElement (optional argument, default value is <code>undefined</code>)
	*  @return A <code>NodeList</code> instance.
	*/
	public function getIntersectionList(rect:SVGRect=undefined, referenceElement:SVGElement=undefined):NodeList { return null;}
	/**
	*  @param rect (optional argument, default value is <code>undefined</code>)
	*  @param referenceElement (optional argument, default value is <code>undefined</code>)
	*  @return A <code>NodeList</code> instance.
	*/
	public function getEnclosureList(rect:SVGRect=undefined, referenceElement:SVGElement=undefined):NodeList { return null;}
	/**
	*  @param element (optional argument, default value is <code>undefined</code>)
	*  @param rect (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function checkIntersection(element:SVGElement=undefined, rect:SVGRect=undefined):Boolean { return false;}
	/**
	*  @param element (optional argument, default value is <code>undefined</code>)
	*  @param rect (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function checkEnclosure(element:SVGElement=undefined, rect:SVGRect=undefined):Boolean { return false;}
	public function deselectAll():void {}
	/**
	*  @return A <code>SVGNumber</code> instance.
	*/
	public function createSVGNumber():SVGNumber { return null;}
	/**
	*  @return A <code>SVGLength</code> instance.
	*/
	public function createSVGLength():SVGLength { return null;}
	/**
	*  @return A <code>SVGAngle</code> instance.
	*/
	public function createSVGAngle():SVGAngle { return null;}
	/**
	*  @return A <code>SVGPoint</code> instance.
	*/
	public function createSVGPoint():SVGPoint { return null;}
	/**
	*  @return A <code>SVGMatrix</code> instance.
	*/
	public function createSVGMatrix():SVGMatrix { return null;}
	/**
	*  @return A <code>SVGRect</code> instance.
	*/
	public function createSVGRect():SVGRect { return null;}
	/**
	*  @return A <code>SVGTransform</code> instance.
	*/
	public function createSVGTransform():SVGTransform { return null;}
	/**
	*  @param matrix (optional argument, default value is <code>undefined</code>)
	*  @return A <code>SVGTransform</code> instance.
	*/
	public function createSVGTransformFromMatrix(matrix:SVGMatrix=undefined):SVGTransform { return null;}
	/**
	*  @param elementId (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Element</code> instance.
	*/
	public function getElementById(elementId:String=undefined):Element { return null;}

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

	/**
	*  @see randori.webkit.svg.SVGAnimatedRect
	*/
	public function get viewBox():SVGAnimatedRect { return null; }

	/**
	*  @see randori.webkit.svg.SVGAnimatedPreserveAspectRatio
	*/
	public function get preserveAspectRatio():SVGAnimatedPreserveAspectRatio { return null; }

	public function get SVG_ZOOMANDPAN_UNKNOWN():uint { return 0; }

	public function get SVG_ZOOMANDPAN_DISABLE():uint { return 0; }

	public function get SVG_ZOOMANDPAN_MAGNIFY():uint { return 0; }

	public function get zoomAndPan():uint { return 0; }
	public function set zoomAndPan(value:uint):void { }
}

}