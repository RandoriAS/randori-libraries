package com.mrdoob.three.materials
{
import com.mrdoob.three.math.Color;
import com.mrdoob.three.math.Vector2;
import com.mrdoob.three.textures.Texture;


[JavaScript(export="false", name="THREE.ShaderMaterial")]
public class ShaderMaterial extends Material
{
	
	public var color:Color;
	public var map:Texture;

	public var useScreenCoordinates :Boolean;
	public var sizeAttenuation:Boolean;
	public var scaleByViewport:Boolean;
	public var alignment:Vector2;

	public var fog:Boolean;

	public var uvOffset:Vector2;
	public var uvScale:Vector2;

	public function ShaderMaterial(parameters:*):void { super(parameters); }
	public function clone():ShaderMaterial { return null; }	

}

}