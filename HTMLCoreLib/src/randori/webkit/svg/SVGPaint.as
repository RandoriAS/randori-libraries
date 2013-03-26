
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/svg/SVGPaint.idl

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


[JavaScript(export="false", nativecondition="SVG", name="SVGPaint")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.svg.SVGColor
 */
public class SVGPaint extends SVGColor
{
	public static const SVG_PAINTTYPE_UNKNOWN:uint = 0;
	public static const SVG_PAINTTYPE_RGBCOLOR:uint = 1;
	public static const SVG_PAINTTYPE_RGBCOLOR_ICCCOLOR:uint = 2;
	public static const SVG_PAINTTYPE_NONE:uint = 101;
	public static const SVG_PAINTTYPE_CURRENTCOLOR:uint = 102;
	public static const SVG_PAINTTYPE_URI_NONE:uint = 103;
	public static const SVG_PAINTTYPE_URI_CURRENTCOLOR:uint = 104;
	public static const SVG_PAINTTYPE_URI_RGBCOLOR:uint = 105;
	public static const SVG_PAINTTYPE_URI_RGBCOLOR_ICCCOLOR:uint = 106;
	public static const SVG_PAINTTYPE_URI:uint = 107;

	public function get paintType():uint { return 0; }

	public function get uri():String { return ''; }
	/**
	*  @param uri
	*/
	public function setUri(uri:String):void {}
	/**
	*  @param paintType
	*  @param uri
	*  @param rgbColor
	*  @param iccColor
	*/
	public function setPaint(paintType:uint, uri:String, rgbColor:String, iccColor:String):void {}
}

}