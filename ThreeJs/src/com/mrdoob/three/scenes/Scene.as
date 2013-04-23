package com.mrdoob.three.scenes
{

import com.mrdoob.three.materials.Material;
import com.mrdoob.three.core.Object3D;

[JavaScript(export="false", name="THREE.Scene")]
public class Scene extends Object3D
{
	
	public var fog:Fog;
	public var overrideMaterial:Material;

}

}