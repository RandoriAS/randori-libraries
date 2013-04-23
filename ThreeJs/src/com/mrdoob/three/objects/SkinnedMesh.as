package com.mrdoob.three.objects
{


import com.mrdoob.three.core.Geometry;
import com.mrdoob.three.core.Object3D;
import com.mrdoob.three.materials.Material;
import com.mrdoob.three.math.Matrix4;
import com.mrdoob.three.textures.DataTexture;

[JavaScript(export="false", name="THREE.SkinnedMesh")]
public class SkinnedMesh extends Mesh
{
	
	public static var offsetMatrix:Matrix4;

	public var useVertexTexture:Boolean;
	public var identityMatrix:Matrix4;

	public var bones:Vector.<Bone>;
	public var boneMatrices:Vector.<Number>;
	
	public var boneTextureWidth:Number;
	public var boneTextureHeight:Number;
	public var boneTexture:DataTexture;
	
	public function SkinnedMesh(geometry:Geometry, material:Material, useVertexTexture:Boolean):void { super(geometry, material); }

	public function addBone(bone:Bone):Bone { return null; }
	public function pose():void { }
	
	override public function clone(object:Object3D):Object3D { return null; }

}

}