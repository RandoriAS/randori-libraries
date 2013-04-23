package com.mrdoob.three.math
{


[JavaScript(export="false", name="THREE.Box3")]
public class Box3
{

	public var min:Number;
	public var max:Number;
	
	public function Box3(min:Number, max:Number):void {}

	public function set(min:Number, max:Number):Box3 { return null; }
	public function setFromPoints(points:Array):Box3 { return null; }
	public function setFromCenterAndSize():Box3 { return null; }
	public function copy(box:Box3):Box3 { return null; }
	public function makeEmpy():Box3 { return null; }
	public function empty():Box3 { return null; }
	public function center(optionalTarget:Vector2):Vector2 { return null; }
	public function size(optionalTarget:Vector2):Vector2 { return null; }
	public function expandByPoint(point:Vector2):Box3 { return null; }
	public function expandByVector(vector:Vector2):Box3 { return null; }
	public function expandByScalar(scalar:Number):Box3 { return null; }
	public function containsPoint(point:Vector2):Boolean { return null; }
	public function containsBox(box:Box3):Boolean { return null; }
	public function getParameter(point:Vector2):Vector2 { return null; }
	public function isintersectionBox(box:Box3):Boolean { return null; }
	public function clampPoint(point:Vector2, optionalTarget:Vector2):Vector2 { return null; }
	public function distanceToPoint():Function { return null }
	public function getBoundingSphere():Sphere { return null; }
	public function intersect(box:Box3):Box3 { return null; }
	public function union(box:Box3):Box3 { return null; }
	public function applyMatrix4():Function { return null; }
	public function translate(offset:Number):Box3 { return null; }
	public function equals(box:Box3):Boolean { return null; }
	public function clone():Box3 { return null; }

}

}