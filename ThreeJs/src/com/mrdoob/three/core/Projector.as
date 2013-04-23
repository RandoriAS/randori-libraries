package com.mrdoob.three.core
{
import com.mrdoob.three.cameras.Camera;
import com.mrdoob.three.math.Vector3;
import com.mrdoob.three.scenes.Scene;


[JavaScript(export="false", name="THREE.Projector")]
public class Projector
{
	
	public function Projector():void {}
	public function projectVector(vector:Vector3, camera:Camera):Vector3 { return null; }
	public function unprojectVector(vector:Vector3, camera:Camera):Vector3 { return null; }
	public function pickingRay(vector:Vector3, camera:Camera):Raycaster { return null; }
	public function projectScene(scene:Scene, camera:Camera, sort:Boolean):* { return null; }

}

}