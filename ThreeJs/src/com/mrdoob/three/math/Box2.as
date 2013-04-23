package com.mrdoob.three.math
{


[JavaScript(export="false", name="THREE.Box2")]
public class Box2
{
	
	public var min:Number;
	public var max:Number;
	
	public function set(min:Number, max:Number):Box2 { return null; }
	public function Box2(min:Number, max:Number):void {}

	public function setFromPoints(points:Array):Box2 { return null; }
	public function setFromCenterAndSize():Box2 { return null; }
	public function copy(box:Box2):Box2 { return null; }
	public function makeEmpy():Box2 { return null; }
	public function empty():Box2 { return null; }
	public function center(optionalTarget:Vector2):Vector2 { return null; }
	public function size(optionalTarget:Vector2):Vector2 { return null; }
	public function expandByPoint(point:Vector2):Box2 { return null; }
	public function expandByVector(vector:Vector2):Box2 { return null; }
	public function expandByScalar(scalar:Number):Box2 { return null; }
	public function containsPoint(point:Vector2):Boolean { return null; }
	public function containsBox(box:Box2):Boolean { return null; }
	public function getParameter(point:Vector2):Vector2 { return null; }
	public function isintersectionBox(box:Box2):Boolean { return null; }
	public function clampPoint(point:Vector2, optionalTarget:Vector2):Vector2 { return null; }
	public function distanceToPoint():Function { return null; };
	public function intersect(box:Box2):Box2 { return null; }
	public function union(box:Box2):Box2 { return null; }
	public function translate(offset:Number):Box2 { return null; }
	public function equals(box:Box2):Boolean { return null; }
	public function clone():Box2 { return null; }

}

}