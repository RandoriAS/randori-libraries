package com.mrdoob.three.materials
{
import com.mrdoob.three.math.Color;
import com.mrdoob.three.textures.Texture;


[JavaScript(export="false", name="THREE.ParticleBasicMaterial")]
public class ParticleBasicMaterial extends Material
{
	
	public var color:Color;

	public var map:Texture;

	public var size:Number;
	public var sizeAttenuation:Boolean;

	public var vertexColors:Boolean;

	public var fog:Boolean;
	
	public function ParticleBasicMaterial(parameters:*):void { super(parameters); }
	public function clone():ParticleBasicMaterial { return null; }	
	
}

}