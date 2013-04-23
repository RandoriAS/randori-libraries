package com.mrdoob.three.objects
{


import com.mrdoob.three.core.Object3D;
import com.mrdoob.three.cameras.Camera;

[JavaScript(export="false", name="THREE.LOD")]
public class LOD extends Object3D
{
	
	public var LODs:Array;
	
	public function LOD():void {}
	public function addLevel(object3D:Object3D, visibleAtDistance:Boolean):void { }
	public function update(camera:Camera):void { }

	override public function clone(object:Object3D):Object3D { return null; } // Not implemented yet

}

}