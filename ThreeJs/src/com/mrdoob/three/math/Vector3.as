package com.mrdoob.three.math
{


[JavaScript(export="false", name="THREE.Vector3")]
public class Vector3
{

	public var x:Number;
	public var y:Number;
	public var z:Number;
	
	public function Vector3(x:Number, y:Number, z:Number):void {}

	public function set(x:Number, y:Number, z:Number):Vector3 { return null; }
	public function setX(x:Number):Vector3 { return null; }
	public function setY(y:Number):Vector3 { return null; }
	public function setZ(y:Number):Vector3 { return null; }
	public function setComponent(index:int, value:Number):void { }
	public function getComponent(index:int):Number { return null; }
	public function copy(vector:Vector3):Vector3 { return null; }
	
	public function add(vector:Vector3):Vector3 { return null; }
	public function addVectors(vector1:Vector3, vector2:Vector3):Vector3 { return null; }
	public function addScalar(scalar:Number):Vector3 { return null; }
	
	public function sub(vector:Vector3):Vector3 { return null; }
	public function subVectors(vector1:Vector3, vector2:Vector3):Vector3 { return null; }
	public function multiplyScalar(scalar:Number):Vector3 { return null; }
	public function multiplyVectors(vector1:Vector3, vector2:Vector3):Vector3 { return null; }
	
	public function applyMatrix3(matrix:Matrix3):Vector3 { return null; }
	public function applyMatrix4(matrix:Matrix4):Vector3 { return null; }
	
	public function applyProjection(matrix:Matrix4):Vector3 { return null; }
	public function applyQuaternion(quaternion:Quaternion):Vector3 { return null; }
	public function transformDirection(matrix:Matrix4):Vector3 { return null; }
	
	public function divide(vector:Vector3):Vector3 { return null; }
	public function divideScalar(scalar:Number):Vector3 { return null; }
	
	public function min(vector:Vector3):Vector3 { return null; }
	public function max(vector:Vector3):Vector3 { return null; }
	public function clamp(min:Vector3, max:Vector3):Vector3 { return null; }
	public function negate():Vector3 { return null; }
	public function dot(vector:Vector3):Number { return null; }
	public function lengthSq():Number { return null; }
	public function length():Number { return null; }
	public function lengthManhattan():Number { return null; }
	
	public function normalize():Vector3 { return null; }
	public function setLength(length:Number):Vector3 { return null; }
	public function lerp(vector:Vector3, alpha:Number):Vector3 { return null; }
	public function cross(vector:Vector3):Vector3 { return null; }
	public function crossVectors(vector1:Vector3, vector2:Vector3):Vector3 { return null; }
	
	public function angleTo(vector:Vector3):Number { return null; }
	
	public function distanceTo(vector:Vector3):Number { return null; }
	public function distanceToSquared(vector:Vector3):Number { return null; }
	public function setEulerFromRotationMatrix(matrix:Matrix3, order:String):Vector3 { return null; }
	public function setEulerFromQuaternion(quaternion:Quaternion, order:String):Vector3 { return null; }
	public function getPositionFromMatrix(matrix:Matrix3):Vector3 { return null; }
	public function getScaleFromMatrix(matrix:Matrix3):Vector3 { return null; }
	public function getColumnFromMatrix(index:int, matrix:Matrix4):Vector3 { return null; }
	
	public function equals(vector:Vector3):Boolean { return null; }
	public function toArray():Vector.<Number> { return null; }
	public function clone():Vector3 { return null; }

	public function applyEuler():Function { return null; }
	public function applyAxisAngle():Function { return null; }
	public function projectOnVector():Function { return null; }
	public function projectOnPlane():Function { return null; }
	public function reflect():Function { return null; }

}

}