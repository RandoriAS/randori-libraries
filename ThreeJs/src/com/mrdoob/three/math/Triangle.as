package com.mrdoob.three.math
{


[JavaScript(export="false", name="THREE.Triangle")]
public class Triangle
{
	
	public var a:Vector3;
	public var b:Vector3;
	public var c:Vector3;
	
	public function Triangle(a:Vector3, b:Vector3, c:Vector3):void {}

	public function set(a:Vector3, b:Vector3, c:Vector3):void { }
	public function setFromPointsAndIndices(points:Vector.<Vector3>, index1:int, index2:int, index3:int):Triangle { return null; }
	public function copy(triangle:Triangle):Triangle { return null; }
	public function area():Function { return null; }
	public function midpoint(optionalTarget:Vector3):Vector3 { return null; }
	public function normal(optionalTarget:Vector3):Vector3 { return null; }
	public function plane(optionalTarget:Plane):Plane { return null; }
	public function barycoordFromPoint(point:Vector3, optionalTarget):Vector3 { return null; }
	public function containsPoint(point:Vector3):Boolean { return null; }
	public function equals(triangle:Triangle):Boolean { return null; }
	public function clone():Triangle { return null; }
	
	public static function normal():Function { return null };
	public static function barycoordFromPoint():Function { return null };
	public static function containsPoint():Function { return null };

}

}