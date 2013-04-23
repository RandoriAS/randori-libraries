package com.mrdoob.three.objects
{


import com.mrdoob.three.core.Object3D;
import com.mrdoob.three.materials.Material;
import com.mrdoob.three.math.Vector3;

[JavaScript(export="false", name="THREE.Sprite")]
public class Sprite extends Object3D
{
	
	public var material:Material;
	
	public var rotation3d:Vector3;

	public function Sprite(material:Material):void {}

	override public function clone(object:Object3D):Object3D { return null; }

}

}