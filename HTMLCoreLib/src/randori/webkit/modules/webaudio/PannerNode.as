
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/Modules/webaudio/PannerNode.idl

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


package randori.webkit.modules.webaudio
{


[JavaScript(export="false", nativecondition="WEB_AUDIO", name="PannerNode")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.modules.webaudio.AudioNode
 */
public class PannerNode extends AudioNode
{
	public static const EQUALPOWER:uint = 0;
	public static const HRTF:uint = 1;
	public static const SOUNDFIELD:uint = 2;
	public static const LINEAR_DISTANCE:uint = 0;
	public static const INVERSE_DISTANCE:uint = 1;
	public static const EXPONENTIAL_DISTANCE:uint = 2;

	public function get panningModel():String { return ''; }
	public function set panningModel(value:String):void { }
	/**
	*  @param x
	*  @param y
	*  @param z
	*/
	public function setPosition(x:Number, y:Number, z:Number):void {}
	/**
	*  @param x
	*  @param y
	*  @param z
	*/
	public function setOrientation(x:Number, y:Number, z:Number):void {}
	/**
	*  @param x
	*  @param y
	*  @param z
	*/
	public function setVelocity(x:Number, y:Number, z:Number):void {}

	public function get distanceModel():String { return ''; }
	public function set distanceModel(value:String):void { }

	public function get refDistance():Number { return 0; }
	public function set refDistance(value:Number):void { }

	public function get maxDistance():Number { return 0; }
	public function set maxDistance(value:Number):void { }

	public function get rolloffFactor():Number { return 0; }
	public function set rolloffFactor(value:Number):void { }

	public function get coneInnerAngle():Number { return 0; }
	public function set coneInnerAngle(value:Number):void { }

	public function get coneOuterAngle():Number { return 0; }
	public function set coneOuterAngle(value:Number):void { }

	public function get coneOuterGain():Number { return 0; }
	public function set coneOuterGain(value:Number):void { }
}

}