package com.mrdoob.three.lights
{
import com.mrdoob.three.cameras.Camera;
import com.mrdoob.three.core.Object3D;
import com.mrdoob.three.math.Matrix4;
import com.mrdoob.three.math.Vector3;


[JavaScript(export="false", name="THREE.DirectionalLight")]
public class DirectionalLight extends Light
{
	
	public var target:Object3D;

	public var intensity:Number;

	public var onlyShadow:Boolean;

	public var shadowCameraNear:Number;
	public var shadowCameraFar:Number;

	public var shadowCameraLeft:Number;
	public var shadowCameraRight:Number;
	public var shadowCameraTop:Number;
	public var shadowCameraBottom :Number;

	public var shadowCameraVisible:Boolean;

	public var shadowBias:Number;
	public var shadowDarkness:Number;

	public var shadowMapWidth:Number;
	public var shadowMapHeight:Number;

	public var shadowCascade:Boolean;

	public var shadowCascadeOffset:Vector3;
	public var shadowCascadeCount:Number

	public var shadowCascadeBias:Vector.<Number>;
	public var shadowCascadeWidth:Vector.<Number>;
	public var shadowCascadeHeight:Vector.<Number>;

	public var shadowCascadeNearZ:Vector.<Number>;
	public var shadowCascadeFarZ:Vector.<Number>;

	public var shadowCascadeArray:Array; // TODO: Not sure what type this should be

	public var shadowMap:Number; // TODO: Which type is this
	public var shadowMapSize:Number;
	public var shadowCamera:Camera;
	public var shadowMatrix:Matrix4
	
	public function DirectionalLight(hex:Number, intensity:Number):void { super(hex); };

}

}