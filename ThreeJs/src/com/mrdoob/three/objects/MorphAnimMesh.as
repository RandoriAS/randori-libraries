package com.mrdoob.three.objects
{


import com.mrdoob.three.core.Geometry;
import com.mrdoob.three.core.Object3D;
import com.mrdoob.three.materials.Material;

[JavaScript(export="false", name="THREE.MorphAnimMesh")]
public class MorphAnimMesh extends Mesh
{
	
	public var duration:Number;
	public var mirroredLoop:Boolean;
	public var time:Number;

	public var lastKeyframe:Number
	public var currentKeyframe:Number;

	public var direction:Number;
	public var directionBackwards:Boolean;
	
	public function MorphAnimMesh(geometry:Geometry, material:Material):void { super(geometry, material); }

	public function setFrameRange(start:Number, end:Number):void { }
	public function setDirectionForward():void { }
	public function setDirectionBackward():void { }
	public function parseAnimations():void { }
	public function setAnimationLabel(label:String, start:Number, end:Number):void { }
	public function playAnimation(label:String, fps:Number):void { }
	public function updateAnimation(delta:Number):void { }
	override public function clone(object:Object3D):Object3D { return null; }

}

}