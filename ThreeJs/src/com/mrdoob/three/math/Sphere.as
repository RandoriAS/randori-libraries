package com.mrdoob.three.math
{


[JavaScript(export="false", name="THREE.Sphere")]
public class Sphere
{
	
	public var center:Vector3;
	public var radius:Number;
	
	public function Sphere(center:Vector3, radius:Number):void {}

	public function set(center:Vector3, radius:Number):Sphere { return null; }
	public function setFromCenterAndPoints(center:Vector3, points:Vector.<Vector3>):Sphere { return null; }
	public function copy(sphere:Sphere):Sphere { return null; }
	public function empty():Boolean { return null; }
	public function containsPoint(point:Vector3):Boolean { return null; }
	public function distanceToPoint(point:Vector3):Number { return null; }
	public function intersectsSphere(sphere:Sphere):Boolean { return null; }
	public function clampPoint(point:Vector3, optionalTarget:Vector3):Vector3 { return null; }
	public function getBoundingBox(optionalTarget:Box3):Box3 { return null; }
	public function applyMatrix4(matrix:Matrix4):Sphere { return null; }
	public function translate(offset:Vector3):Sphere { return null; }
	public function equals(sphere:Sphere):Boolean { return null; }
	public function clone():Sphere { return null; }

}

}