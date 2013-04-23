package com.mrdoob.three.math
{


[JavaScript(export="false", name="THREE.Quaternion")]
public class Quaternion
{
	
	public var x:Number;
	public var y:Number;
	public var z:Number;
	public var w:Number;
	
	public function Quaternion(x:Number, y:Number, z:Number, w:Number):void {}

	public function set(x:Number, y:Number, z:Number, w:Number):Quaternion { return null; }
	public function copy(quaternion:Quaternion):Quaternion { return null; }
	public function setFromEuler(vector:Vector3, order:String):Quaternion { return null; }
	public function setFromRotationMatrix(matrix:Matrix4):Quaternion { return null; }
	public function inverse():Quaternion { return null; }
	public function conjugate():Quaternion { return null; }
	public function lengthSq():Quaternion { return null; }
	public function length():Quaternion { return null; }
	public function normaline():Quaternion { return null; }
	public function multiplyQuaternions(quaternion1:Quaternion, quaternion2:Quaternion):Quaternion { return null; }
	public function equals(vector:Quaternion):Boolean { return null; }
	public function clone():Quaternion { return null; }	
	
	public static function slerp(quaternion1:Quaternion, quaternion2:Quaternion, quaternion3:Quaternion, theta:Number):Quaternion { return null; }

}

}