
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/svg/SVGPreserveAspectRatio.idl

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


[JavaScript(export="false", nativecondition="SVG", name="SVGPreserveAspectRatio")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class SVGPreserveAspectRatio
{
	public static const SVG_PRESERVEASPECTRATIO_UNKNOWN:uint = 0;
	public static const SVG_PRESERVEASPECTRATIO_NONE:uint = 1;
	public static const SVG_PRESERVEASPECTRATIO_XMINYMIN:uint = 2;
	public static const SVG_PRESERVEASPECTRATIO_XMIDYMIN:uint = 3;
	public static const SVG_PRESERVEASPECTRATIO_XMAXYMIN:uint = 4;
	public static const SVG_PRESERVEASPECTRATIO_XMINYMID:uint = 5;
	public static const SVG_PRESERVEASPECTRATIO_XMIDYMID:uint = 6;
	public static const SVG_PRESERVEASPECTRATIO_XMAXYMID:uint = 7;
	public static const SVG_PRESERVEASPECTRATIO_XMINYMAX:uint = 8;
	public static const SVG_PRESERVEASPECTRATIO_XMIDYMAX:uint = 9;
	public static const SVG_PRESERVEASPECTRATIO_XMAXYMAX:uint = 10;
	public static const SVG_MEETORSLICE_UNKNOWN:uint = 0;
	public static const SVG_MEETORSLICE_MEET:uint = 1;
	public static const SVG_MEETORSLICE_SLICE:uint = 2;

	public function get align():uint { return 0; }
	public function set align(value:uint):void { }

	public function get meetOrSlice():uint { return 0; }
	public function set meetOrSlice(value:uint):void { }
}

}