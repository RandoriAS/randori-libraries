package com.mrdoob.three.materials
{


import com.mrdoob.three.core.EventDispatcher;

[JavaScript(export="false", name="THREE.Material")]
public class Material extends EventDispatcher
{
	
	public var id:int;

	public var name:String;

	public var side:int;

	public var opacity:Number;
	public var transparent:Boolean;

	public var blending:int;

	public var blendSrc:int;
	public var blendDst:int;
	public var blendEquation:int;

	public var depthTest:Boolean;
	public var depthWrite:Boolean;

	public var polygonOffset:Boolean;
	public var polygonOffsetFactor:int
	public var polygonOffsetUnits:int;

	public var alphaTest:Number;

	public var overdraw:Boolean; // Booleanean for fixing antialiasing gaps in CanvasRenderer

	public var visible:Boolean;

	public var needsUpdate:Boolean;
	
	public function Material(parameters:*):void { }

}

}