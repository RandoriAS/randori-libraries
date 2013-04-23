package com.mrdoob.three.materials
{
import com.mrdoob.three.math.Color;


[JavaScript(export="false", name="THREE.LineDashedMaterial")]
public class LineDashedMaterial extends Material
{
	
	public var color:Color;

	public var linewidth:Number;

	public var scale:Number;
	public var dashSize:Number;
	public var gapSize:Number;

	public var vertexColors:Boolean

	public var fog:Boolean;
	
	public function LineDashedMaterial(parameters:*):void { super(parameters); }
	public function clone():LineDashedMaterial { return null; }

}

}