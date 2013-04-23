package com.mrdoob.three.materials
{


[JavaScript(export="false", name="THREE.MeshNormalMaterial")]
public class MeshNormalMaterial extends Material
{
	
	public var shading:int;

	public var wireframe:Boolean;
	public var wireframeLinewidth:Number
	
	public function MeshNormalMaterial(parameters:*):void { super(parameters); }
	public function clone():MeshNormalMaterial { return null; }

}

}