
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/svg/SVGAngle.idl

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


[JavaScript(export="false", nativecondition="SVG", name="SVGAngle")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class SVGAngle
{
	public static const SVG_ANGLETYPE_UNKNOWN:uint = 0;
	public static const SVG_ANGLETYPE_UNSPECIFIED:uint = 1;
	public static const SVG_ANGLETYPE_DEG:uint = 2;
	public static const SVG_ANGLETYPE_RAD:uint = 3;
	public static const SVG_ANGLETYPE_GRAD:uint = 4;

	public function get unitType():uint { return 0; }

	public function get value():Number { return 0; }
	public function set value(value:Number):void { }

	public function get valueInSpecifiedUnits():Number { return 0; }
	public function set valueInSpecifiedUnits(value:Number):void { }

	public function get valueAsString():String { return ''; }
	public function set valueAsString(value:String):void { }
	/**
	*  @param unitType
	*  @param valueInSpecifiedUnits
	*/
	public function newValueSpecifiedUnits(unitType:uint, valueInSpecifiedUnits:Number):void {}
	/**
	*  @param unitType
	*/
	public function convertToSpecifiedUnits(unitType:uint):void {}
}

}