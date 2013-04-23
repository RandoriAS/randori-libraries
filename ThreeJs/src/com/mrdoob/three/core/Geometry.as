package com.mrdoob.three.core
{

import com.mrdoob.three.core.vo.BoundingSphereVO;
import com.mrdoob.three.materials.Material;
import com.mrdoob.three.math.Color;
import com.mrdoob.three.math.Matrix4;
import com.mrdoob.three.math.Vector3;
import com.mrdoob.three.math.Vector4;
import com.mrdoob.three.objects.Bone;

[JavaScript(export="false", name="THREE.Geometry")]
public class Geometry
{

    public var id:int;

    public var name:String;

    public var vertices:Vector.<Vector3>;
    public var colors:Vector.<Color>;
    public var materials:Vector.<Material>;

    public var faces:Vector.<Face4>;

    public var faceUvs:Vector.<Array>;
    public var faceVertexUvs:Vector.<Array>;

    public var morphTargets:Array;
    public var morphColors:Array;
    public var morphNormals:Array;

    public var skinWeights:Vector.<Vector4>;
    public var skinIndices:Vector.<Vector4>;

    public var lineDistances:Number;

    public var boundingBox:Vector3;
    public var boundingSphere:BoundingSphereVO;

    public var hasTangents:Boolean;
    /*	public var *:Boolean; // the intermediate typed arrays will be deleted when set to false*/

    public var verticesNeedUpdate:Boolean;
    public var elementsNeedUpdate:Boolean;
    public var uvsNeedUpdate:Boolean;
    public var normalsNeedUpdate:Boolean;
    public var tangentsNeedUpdate:Boolean;
    public var colorsNeedUpdate:Boolean;
    public var lineDistancesNeedUpdate:Boolean;

    public var buffersNeedUpdate:Boolean;

    public var bones:Vector.<Bone>;

    public function Geometry():void {}
    public function applyMatrix(matrix:Matrix4):void { }
    public function computeCentroids():void { }
    public function computeFaceNormals():void { }
    public function computeVertexNormals():void { }
    public function computeMorphNormals():void { }
    public function computeTangents():void { }
    public function computeLineDistances():void { }
    public function computeBoundingBox():void { }
    public function computeBoundingSphere():void { }
    public function mergeVertices():void { }
    public function clone():void { }
    public function dispose():void { }

}

}

    
