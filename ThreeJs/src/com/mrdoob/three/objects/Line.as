package com.mrdoob.three.objects
{


import com.mrdoob.three.core.Geometry;
import com.mrdoob.three.core.Object3D;
import com.mrdoob.three.materials.Material;
import com.mrdoob.three.Three;

[JavaScript(export="false", name="THREE.LOD")]
public class Line extends Object3D
{
	
	public var geometry:Geometry;
	public var material:Material;
	public var type:int;
	
	public function Line(geometry:Geometry, material:Material, type:int):void { }
	override public function clone(object:Object3D):Object3D { return null; }

}

}