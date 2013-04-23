package com.mrdoob.three.math
{
import com.mrdoob.three.math.vo.PointVO;


[JavaScript(export="false", name="THREE.Frustum")]
public class Frustum
{
	
	public var planes:Vector.<Plane>;
	
	public function Frustum(p1:Plane, p2:Plane, p3:Plane, p4:Plane, p5:Plane, p6:Plane):void {}

	public function set(p1:Plane, p2:Plane, p3:Plane, p4:Plane, p5:Plane, p6:Plane):Frustum { return null; }
	public function copy(frustum:Frustum):Frustum { return null; }
	public function setFromMatrix(matrix:Matrix4):Frustum { return null; }
	public function intersectsObject():Boolean { return null; }
	public function intersectSphere(sphere:Sphere):Boolean { return null; }
	public function containsPoint(point:PointVO):Boolean { return null; }
	public function clone():Frustum { return null; }

}

}