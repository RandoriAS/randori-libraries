package com.mrdoob.three.objects
{


import com.mrdoob.three.core.Geometry;
import com.mrdoob.three.core.Object3D;
import com.mrdoob.three.materials.Material;
import com.mrdoob.three.objects.vo.MorphTargetVO;

[JavaScript(export="false", name="THREE.Mesh")]
public class Mesh extends Object3D
{
	
	public var geometry:Geometry;
	public var material:Material;
	
	public function Mesh(geometry:Geometry, material:Material):void {}

	public function updateMorphTargets():void { }
	public function getMorphTargetIndexByName(name:String):MorphTargetVO { return null; }
	override public function clone(object:Object3D):Object3D { return null; }
	
}

}