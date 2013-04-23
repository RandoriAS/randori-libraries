package com.mrdoob.three.materials
{


import com.mrdoob.three.math.Color;

[JavaScript(export="false", name="THREE.ParticleCanvasMaterial")]
public class ParticleCanvasMaterial extends Material
{
	
	public var color:Color;
	public var program:Function;
	
	public function ParticleCanvasMaterial(parameters:*):void { super(parameters); }
	public function clone():ParticleCanvasMaterial { return null; }	

}

}