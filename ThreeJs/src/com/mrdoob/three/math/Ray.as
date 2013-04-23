package com.mrdoob.three.math
{


[JavaScript(export="false", name="THREE.Ray")]
public class Ray
{
	public var origin : Vector3;
    public var direction : Vector3;
	
	public function Ray(origin:Vector3, direction:Vector3):void {}

	public function set(origin:Vector3, direction:Vector3):Ray { return null; }
	public function copy(ray:Ray):Ray { return null; }
	public function at(target:Vector3, optionalTarget:Vector3):Vector3 { return null; }
	public function recast():Function { return null; };
	public function closestPointToPoint(point:Vector3, origin:Vector3):Vector3 { return null; }
	public function distanceToPoint():Function { return null; };
	public function isintersectionSphere(sphere:Sphere):Boolean { return null; }
	public function isintersectionPlane(plane:Plane):Boolean { return null; }
	public function distanceToPlane(plane:Plane):Number { return null; }
	public function intersectPlane(plane:Plane, optionalTarget:Vector3):Vector3 { return null; }
	public function applyMatrix4(matrix:Matrix4):Ray { return null; }
	public function equals(ray:Ray):Boolean { return null; }
	public function clone():Ray { return null; }

}

}