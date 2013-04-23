package com.mrdoob.three.core
{
import com.mrdoob.three.core.vo.BoundingBoxVO;
import com.mrdoob.three.core.vo.BoundingSphereVO;
import com.mrdoob.three.math.Matrix4;

[JavaScript(export="false", name="THREE.BufferGeometry")]
public class BufferGeometry
{
	
	public var id:int;
	public var attributes:*;
	public var dynamic:Boolean;
	public var offsets:Array;

	public var boundingBox:BoundingBoxVO;
	public var boundingSphere:BoundingSphereVO;

	public var hasTangents:Boolean;

	public var morphTargets:Array;
	
	public function BufferGeometry():void {}
	public function applyMatrix(matrix:Matrix4):void { }
	public function computeVertexNormals():void { }
	public function computeTangents():void { }
	public function computeBoundingBox():void { }
	public function computeBoundingSphere():void { }
	public function dispose():void { }

}

}