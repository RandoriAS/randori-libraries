package com.mrdoob.three.materials
{
import com.mrdoob.three.math.Color;
import com.mrdoob.three.math.Vector3;
import com.mrdoob.three.textures.Texture;


[JavaScript(export="false", name="THREE.MeshLambertMaterial")]
public class MeshLambertMaterial extends Material
{

	public var color:Color; // diffuse
	public var ambient:Color;
	public var emissive:Color;

	public var wrapAround:Boolean;
	public var wrapRGB:Vector3;

	public var map:Texture;

	public var lightMap:Texture;

	public var specularMap:Texture;

	public var envMap:Texture;
	public var combine:int;
	public var reflectivity:Number;
	public var refractionRatio:Number;

	public var fog:Boolean;

	public var shading:int;

	public var wireframe:Boolean;
	public var wireframeLinewidth:Number;
	public var wireframeLinecap:String;
	public var wireframeLinejoin:String;

	public var vertexColors:int;

	public var skinning:Boolean;
	public var morphTargets:Boolean;
	public var morphNormals:Boolean;
			
	public function MeshLambertMaterial(parameters:*):void { super(parameters); }
	public function clone():MeshLambertMaterial { return null; }

}

}