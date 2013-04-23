package com.mrdoob.three.renderers.renderables
{
import com.mrdoob.three.core.Object3D;
import com.mrdoob.three.math.Vector2;


[JavaScript(export="false", name="THREE.RenderableParticle")]
public class RenderableParticle
{
	
	public var object:Object3D;	
	
	public var x:Number;
	public var y:Number;
	public var z:Number;

	public var rotation:*; // TODO
	public var scale:Vector2;

	public function RenderableParticle():void {}

}

}