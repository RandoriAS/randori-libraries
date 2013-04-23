package com.mrdoob.three.materials
{


[JavaScript(export="false", name="THREE.MeshDepthMaterial")]
public class MeshDepthMaterial extends Material
{

    public var wireframe:Boolean;
    public var wireframeLinewidth:Number;
	
	public function MeshDepthMaterial(parameters:*):void { super(parameters); }
	public function clone():MeshDepthMaterial { return null; }

}

}