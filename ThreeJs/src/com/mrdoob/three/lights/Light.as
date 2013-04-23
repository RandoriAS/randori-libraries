package com.mrdoob.three.lights
{


import com.mrdoob.three.core.Object3D;
import com.mrdoob.three.math.Color;

[JavaScript(export="false", name="THREE.Light")]
public class Light extends Object3D
{
	
	public var color:Color;
	public function Light(hex:Number):void {}

}

}