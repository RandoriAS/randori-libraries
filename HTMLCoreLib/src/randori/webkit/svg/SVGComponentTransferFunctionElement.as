
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/svg/SVGComponentTransferFunctionElement.idl

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


[JavaScript(export="false", nativecondition="SVG", name="SVGComponentTransferFunctionElement")]
[JavaScriptConstructor(factoryMethod="document.createElement('componenttransferfunction')")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.svg.SVGElement
 */
public class SVGComponentTransferFunctionElement extends SVGElement
{
	/**
	*  Creates a new <code>SVGComponentTransferFunctionElement</code> instance.
	*/
	public function SVGComponentTransferFunctionElement() {super();}
	public static const SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN:uint = 0;
	public static const SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY:uint = 1;
	public static const SVG_FECOMPONENTTRANSFER_TYPE_TABLE:uint = 2;
	public static const SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE:uint = 3;
	public static const SVG_FECOMPONENTTRANSFER_TYPE_LINEAR:uint = 4;
	public static const SVG_FECOMPONENTTRANSFER_TYPE_GAMMA:uint = 5;

	/**
	*  @see randori.webkit.svg.SVGAnimatedEnumeration
	*/
	public function get type():SVGAnimatedEnumeration { return undefined; }

	/**
	*  @see randori.webkit.svg.SVGAnimatedNumberList
	*/
	public function get tableValues():SVGAnimatedNumberList { return undefined; }

	/**
	*  @see randori.webkit.svg.SVGAnimatedNumber
	*/
	public function get slope():SVGAnimatedNumber { return undefined; }

	/**
	*  @see randori.webkit.svg.SVGAnimatedNumber
	*/
	public function get intercept():SVGAnimatedNumber { return undefined; }

	/**
	*  @see randori.webkit.svg.SVGAnimatedNumber
	*/
	public function get amplitude():SVGAnimatedNumber { return undefined; }

	/**
	*  @see randori.webkit.svg.SVGAnimatedNumber
	*/
	public function get exponent():SVGAnimatedNumber { return undefined; }

	/**
	*  @see randori.webkit.svg.SVGAnimatedNumber
	*/
	public function get offset():SVGAnimatedNumber { return undefined; }
}

}