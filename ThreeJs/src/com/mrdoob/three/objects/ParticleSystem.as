package com.mrdoob.three.objects
{


import com.mrdoob.three.core.Geometry;
import com.mrdoob.three.core.Object3D;
import com.mrdoob.three.materials.Material;

[JavaScript(export="false", name="THREE.ParticleSystem")]
public class ParticleSystem extends Object3D
{
	
	public var geometry:Geometry;
	public var material:Material;
	public var sortParticles:Boolean;

	public function ParticleSystem(geometry:Geometry, material:Material):void { }
	override public function clone(object:Object3D):Object3D { return null; }
	
}

}