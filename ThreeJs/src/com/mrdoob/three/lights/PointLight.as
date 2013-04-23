package com.mrdoob.three.lights
{
import com.mrdoob.three.math.Vector3;


[JavaScript(export="false", name="THREE.PointLight")]
public class PointLight extends Light
{
	
	public var intensity:Number;
	public var distance:Number;
	
	public function PointLight(hex:Number, intensity:Number, distance:Number):void { super(hex); }


}

}