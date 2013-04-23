package com.mrdoob.three.renderers
{

import com.mrdoob.three.core.EventDispatcher;
import com.mrdoob.three.math.Vector2;

[JavaScript(export="false", name="THREE.WebGLRenderTarget")]
public class WebGLRenderTarget extends EventDispatcher
{
	
	public var wrapS:int;
	public var wrapT:int;

	public var magFilter:int;
	public var minFilter:int;

	public var anisotropy:Number;

	public var offset:Vector2;
	public var repeat:Vector2;

	public var format:int;
	public var type:int;

	public var depthBuffer:Boolean;
	public var stencilBuffer:Boolean;

	public var generateMipmaps:Boolean;

	public var shareDepthFrom:WebGLRenderTarget;
	
	public function WebGLRenderTarget(width:Number, height:Number, options:*):void { }
	public function clone():WebGLRenderTarget { return null; }
	public function dispose():void { }

}

}