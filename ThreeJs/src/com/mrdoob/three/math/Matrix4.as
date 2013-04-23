package com.mrdoob.three.math
{


import com.mrdoob.three.Three;

[JavaScript(export="false", name="THREE.Matrix4")]
public class Matrix4
{
	
	public var elements:Vector.<Number>;

	public function Matrix4(n11:Number=NaN, n12:Number=NaN, n13:Number=NaN, n14:Number=NaN, n21:Number=NaN, n22:Number=NaN, n23:Number=NaN, n24:Number=NaN, n31:Number=NaN, n32:Number=NaN, n33:Number=NaN, n34:Number=NaN, n41:Number=NaN, n42:Number=NaN, n43:Number=NaN, n44:Number=NaN):void {}

	public function set(n11:Number, n12:Number, n13:Number, n14:Number, n21:Number, n22:Number, n23:Number, n24:Number, n31:Number, n32:Number, n33:Number, n34:Number, n41:Number, n42:Number, n43:Number, n44:Number):Matrix4 { return null; }
	public function identity():Matrix4 { return null; }
	public function copy():Matrix4 { return null; }
	
	public function setRotationFromEuler(vector:Vector3, order:String):Matrix4 { return null; }
	public function setRotationFromQuaternion(quaternion:Quaternion):Matrix4 { return null; }
	
	public function lookAt():Function { return null; }
	
	public function multiplyMatrices(matrix1:Matrix4, matrix2:Matrix4):Matrix4 { return null; }
	public function multiplyToArray(matrix1:Matrix4, matrix2:Matrix4, array:Vector.<Number>):Matrix4 { return null; }
	public function multiplyVector3Array():Function { return null; }
	public function multiplyScalar(scalar:Number):Matrix4 { return null; }
	
	public function crossVector(vector:Vector4):Vector4 { return null; }
	public function determinant():Number { return null; }
	
	public function flattenToArray(flat:Vector.<Number>):Vector.<Number> { return null; }
	public function flattenToArrayOffset(flat:Vector.<Number>, offset:int):Vector.<Number> { return null; }
	
	public function setPosition(vector:Vector3):Matrix4 { return null; }
	public function getInverse(matrix:Matrix4, throwOnInvertible:Boolean):Matrix4 { return null; }

	public function extractPosition(matrix:Matrix4):Matrix4 { return null; }
	public function extractRotation():Function { return null };
	public function translate(vector:Vector3):Matrix4 { return null; }
	
	public function rotateX(angle:Number):Matrix4 { return null; }
	public function rotateY(angle:Number):Matrix4 { return null; }
	public function rotateZ(angle:Number):Matrix4 { return null; }
	public function rotateByAxis(axis:int, angle:Number):Matrix4 { return null; }
	
	public function scale(vector:Vector3):Matrix4 { return null; }
	public function getMaxScaleOnAxis():Number { return null; }
	public function makeTranslation(x:Number, y:Number, z:Number):Matrix4 { return null; }
	public function makeScale(x:Number, y:Number, z:Number):Matrix4 { return null; }
	
	public function makeRotationX(theta:Number):Matrix4 { return null; }
	public function makeRotationY(theta:Number):Matrix4 { return null; }
	public function makeRotationZ(theta:Number):Matrix4 { return null; }
	public function makeRotationAxis(vector:Vector3, angle:Number):Matrix4 { return null; }
	
	public function makeFrustum(left:Number, right:Number, bottom:Number, top:Number, near:Number, far:Number):Matrix4 { return null; }
	public function makePerspective(fov:Number, aspect:Number, near:Number, far:Number):Matrix4 { return null; }
	public function makeOrthographic(left:Number, right:Number, bottom:Number, top:Number, near:Number, far:Number):Matrix4 { return null; }
	
	public function compose(translation:Vector3, rotation:Quaternion, scale:Vector3):Matrix4 { return null; }
	public function decompose(translation:Vector3, rotation:Quaternion, scale:Vector3):Matrix4 { return null; }
	
	public function transpose():Matrix4 { return null; }
	public function clone():Matrix4 { return null; }

}

}