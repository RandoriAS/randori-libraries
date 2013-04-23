package com.mrdoob.three.renderers.renderables
{
import com.mrdoob.three.math.Vector3;
import com.mrdoob.three.math.Vector4;


[JavaScript(export="false", name="THREE.RenderableVertex")]
public class RenderableVertex
{
	
	public var positionWorld:Vector3;
	public var positionScreen:Vector4;
	
	public function RenderableVertex():void {}
	public function clone(vertex:RenderableVertex):void { }

}

}