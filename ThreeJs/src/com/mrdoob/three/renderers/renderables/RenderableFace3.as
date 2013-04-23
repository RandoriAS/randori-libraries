package com.mrdoob.three.renderers.renderables
{

import com.mrdoob.three.materials.Material;
import com.mrdoob.three.math.Color;
import com.mrdoob.three.math.Vector3;


[JavaScript(export="false", name="THREE.RenderableFace3")]
public class RenderableFace3
{
	
	public var v1:RenderableVertex;
	public var v2:RenderableVertex;
	public var v3:RenderableVertex;

	public var centroidModel:Vector3;

	public var normalModel:Vector3;
	public var normalModelView:Vector3;

	public var vertexNormalsLength:int;
	public var vertexNormalsModel:Vector.<Vector3>;
	public var vertexNormalsModelView:Vector.<Vector3>;

	public var color:Color
	public var material:Material
	public var uvs:Vector.<Array>;

	public var z:Number;
	public function RenderableFace():void {}

}

}