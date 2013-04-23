package com.mrdoob.three.objects
{


import com.mrdoob.three.core.Object3D;
import com.mrdoob.three.math.Matrix4;

[JavaScript(export="false", name="THREE.Bone")]
public class Bone extends Object3D
{
	
	public var skin:SkinnedMesh;
	public var skinMatrix:Matrix4;
	
	public function Bone(belongsToSkin:SkinnedMesh):void {}

	public function update(parentSkinMatrix:Matrix4, forceUpdate:Boolean):void { }

}

}