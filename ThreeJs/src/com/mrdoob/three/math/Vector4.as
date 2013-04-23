package com.mrdoob.three.math
{


[JavaScript(export="false", name="THREE.Vector4")]
public class Vector4
{
	
	public var x:Number;
	public var y:Number;
	public var z:Number;
	public var w:Number;
	
	public function Vector4(x:Number, y:Number, z:Number, w:Number):void {}

	public function set(x:Number, y:Number, z:Number, w:Number):Vector4 { return null; }
	public function setX(x:Number):Vector4 { return null; }
	public function setY(y:Number):Vector4 { return null; }
	public function setZ(y:Number):Vector4 { return null; }
	public function setW(w:Number):Vector4 { return null; }
	public function setComponent(index:int, value:Number):void { }
	public function getComponent(index:int):Number { return null; }
	public function copy(vector:Vector4):Vector4 { return null; }
	
	public function add(vector:Vector4):Vector4 { return null; }
	public function addVectors(vector1:Vector4, vector2:Vector4):Vector4 { return null; }
	public function addScalar(scalar:Number):Vector4 { return null; }
	
	public function sub(vector:Vector4):Vector4 { return null; }
	public function subVectors(vector1:Vector4, vector2:Vector4):Vector4 { return null; }
	public function multiplyScalar(scalar:Number):Vector4 { return null; }

	public function applyMatrix4(matrix:Matrix4):Vector4 { return null; }
	
	public function setAxisAngleFromQuaternion(quaternion:Quaternion):Vector4 { return null; }
	public function setAxisAngleFromRotationMatrix(m:Matrix3):Vector4 { return null; }

	public function divideScalar(scalar:Number):Vector4 { return null; }
	
	public function min(vector:Vector4):Vector4 { return null; }
	public function max(vector:Vector4):Vector4 { return null; }
	public function clamp(min:Vector4, max:Vector4):Vector4 { return null; }
	public function negate():Vector4 { return null; }
	public function dot(vector:Vector4):Number { return null; }
	public function lengthSq():Number { return null; }
	public function length():Number { return null; }
	public function lengthManhattan():Number { return null; }
	
	public function normalize():Vector4 { return null; }
	public function setLength(length:Number):Vector4 { return null; }
	public function lerp(vector:Vector4, alpha:Number):Vector4 { return null; }

	public function equals(vector:Vector4):Boolean { return null; }
	public function toArray():Vector.<Number> { return null; };
	public function clone():Vector4 { return null; }

}

}