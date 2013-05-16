package com.mrdoob.three.lights
{


[JavaScript(export="false", name="THREE.PointLight")]
public class PointLight extends Light
{
	
	public var intensity:Number;
	public var distance:Number;
	
	public function PointLight(hex:Number, intensity:Number = 1, distance:Number = 0):void { super(hex); }


}

}