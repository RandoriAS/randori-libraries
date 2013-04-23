package com.mrdoob.three.renderers.renderables
{

import com.mrdoob.three.materials.Material;

[JavaScript(export="false", name="THREE.RenderableLine")]
public class RenderableLine
{
	
	public var v1:RenderableVertex;
	public var v2:RenderableVertex;
	public var material:Material
	public var z:Number;

	public function RenderableLine():void {}

}

}