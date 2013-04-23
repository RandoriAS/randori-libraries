package com.mrdoob.three.math
{
import com.mrdoob.three.math.vo.HSLVO;


[JavaScript(export="false", name="THREE.Color")]
public class Color
{

	public var r:Number;
	public var g:Number;
	public var b:Number;

	public function Color(value:Number):void {}

	public function set(value:*):void { } // takes int or string
	public function copy(color:Color):Color { return null; }
	public function copyGammaToLinear(color:Color):Color { return null; }
	public function copyLinearToGamma(color:Color):Color { return null; }
	public function convertGammaToLinear():Color { return null; }
	public function convertLinearToGamma():Color { return null; }
	public function setRGB(r:Number, g:Number, b:Number):Color { return null; }
	public function setHSV(h:Number, s:Number, v:Number):Color { return null; }
	public function setHSL(h:Number, s:Number, l:Number):Color { return null; }
	public function getHex():int { return null; }
	public function getHexString():String { return null; }
	public function getHSL():HSLVO { return null };
	public function setHex(hex:Number):Color { return null; }
	public function getStyle():String { return null; }
	public function setStyle(contextStyle:String):Color { return null; }
	public function offsetHSL(h:Number, s:Number, l:Number):Color { return null; }
	public function add(color:Color):Color { return null; }
	public function addColors(color1:Color, color2:Color):Color { return null; }
	public function addScalar(scalar:Number):Color { return null; }
	public function multiply(color:Color):Color { return null; }
	public function multiplyScalar(scalar:Number):Color { return null; }
	public function lerp(color:Color, alpha:Number):Color { return null; }
	public function clone():Color { return null; }
}

}