package com.mrdoob.three.materials
{
import com.mrdoob.three.math.Color;


[JavaScript(export="false", name="THREE.Material")]
public class LineBasicMaterial extends Material
{
	
	public var color:Color;

	public var linewidth:Number;
	public var linecap:String;
	public var linejoin:String;

	public var vertexColors:Boolean;

	public var fog:Boolean;
	
	public function LineBasicMaterial(parameters:*):void { super(parameters); }
	public function clone():LineBasicMaterial { return null; }

}

}