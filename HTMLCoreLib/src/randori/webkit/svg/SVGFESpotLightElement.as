
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/svg/SVGFESpotLightElement.idl

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


[JavaScript(export="false", nativecondition="SVG", name="SVGFESpotLightElement")]
[JavaScriptConstructor(factoryMethod="document.createElement('fespotlight')")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.svg.SVGElement
 */
public class SVGFESpotLightElement extends SVGElement
{
	/**
	*  Creates a new <code>SVGFESpotLightElement</code> instance.
	*/
	public function SVGFESpotLightElement() {super();}

	/**
	*  @see randori.webkit.svg.SVGAnimatedNumber
	*/
	public function get x():SVGAnimatedNumber { return undefined; }

	/**
	*  @see randori.webkit.svg.SVGAnimatedNumber
	*/
	public function get y():SVGAnimatedNumber { return undefined; }

	/**
	*  @see randori.webkit.svg.SVGAnimatedNumber
	*/
	public function get z():SVGAnimatedNumber { return undefined; }

	/**
	*  @see randori.webkit.svg.SVGAnimatedNumber
	*/
	public function get pointsAtX():SVGAnimatedNumber { return undefined; }

	/**
	*  @see randori.webkit.svg.SVGAnimatedNumber
	*/
	public function get pointsAtY():SVGAnimatedNumber { return undefined; }

	/**
	*  @see randori.webkit.svg.SVGAnimatedNumber
	*/
	public function get pointsAtZ():SVGAnimatedNumber { return undefined; }

	/**
	*  @see randori.webkit.svg.SVGAnimatedNumber
	*/
	public function get specularExponent():SVGAnimatedNumber { return undefined; }

	/**
	*  @see randori.webkit.svg.SVGAnimatedNumber
	*/
	public function get limitingConeAngle():SVGAnimatedNumber { return undefined; }
}

}