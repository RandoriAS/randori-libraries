package com.mrdoob.three.core
{
import com.mrdoob.three.math.Ray;
import com.mrdoob.three.math.Vector3;


[JavaScript(export="false", name="THREE.Raycaster")]
public class Raycaster
{
	
	public var ray:Ray;
	public var near:Number;
	public var far:Number;
	public var precision:Number;
	
	public function Raycaster(origin:Vector3, direction:Vector3, near:Number, far:Number):void {}

	public function set(origin:Vector3, direction:Vector3):void { }
	public function intersectObject(origin:Vector3, recursive:Boolean):void { }
	public function intersectObjects(origin:Vector3, recursive:Boolean):void { }
	
}

}