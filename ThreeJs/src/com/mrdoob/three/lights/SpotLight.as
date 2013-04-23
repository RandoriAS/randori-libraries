package com.mrdoob.three.lights
{

import com.mrdoob.three.cameras.Camera;
import com.mrdoob.three.core.Object3D;
import com.mrdoob.three.math.Matrix4;
import com.mrdoob.three.math.Vector3;


[JavaScript(export="false", name="THREE.SpotLight")]
public class SpotLight extends Light
{

	public var target:Object3D;

	public var intensity:Number;
	public var distance:Number;
	public var angle:Number;
	public var exponent:Number;

	public var onlyShadow:Boolean

	public var shadowCameraNear:Number;
	public var shadowCameraFar:Number;
	public var shadowCameraFov:Number;

	public var shadowCameraVisible:Boolean;

	public var shadowBias:Number;
	public var shadowDarkness:Number;

	public var shadowMapWidth:Number;
	public var shadowMapHeight:Number;

	public var shadowMap:Number; // TODO: Which type is this
	public var shadowMapSize:Number;
	public var shadowCamera:Camera;
	public var shadowMatrix:Matrix4;
	
	public function SpotLight(color:Number, intensity:Number, distance:Number, castShadow:Boolean):void { super(color); }

}

}