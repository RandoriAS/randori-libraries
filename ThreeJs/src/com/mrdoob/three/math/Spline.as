package com.mrdoob.three.math
{
import com.mrdoob.three.math.vo.SubdivisionLengthVO;

[JavaScript(export="false", name="THREE.Spline")]
public class Spline
{
    public var points:Array;
    
    public function Spline(points:Vector.<Number>): void { }
    public function initFromArray(a:Array):void { }
    public function getPoint(k:Number):Vector3 { return null; }
    public function getControlPointsArray():Vector.<Vector.<Number>> { return null; }
    public function getLength(nSubDivisions:int):SubdivisionLengthVO { return null; }
    public function reparametrizeByArcLength(samplingCoef:Number):void { }
    public function interpolate(p0:Number, p1:Number, p2:Number, p4:Number, t:Number, t2:Number, t3:Number): Number { return null; }
    
}

}