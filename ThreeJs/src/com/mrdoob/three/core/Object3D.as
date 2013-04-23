package com.mrdoob.three.core
{
import com.mrdoob.three.math.Matrix4;
import com.mrdoob.three.math.Quaternion;
import com.mrdoob.three.math.Vector3;

[JavaScript(export="false", name="THREE.Object3D")]
    public class Object3D
    {

        public static var defaultEulerOrder:String;

        public var id:int;

        public var name:String;
        public var properties:*;

        public var parent:Object3D;
        public var children:Vector.<Object3D>;

        public var up:Vector3;

        public var position:Vector3;
        public var rotation:Vector3;
        public var eulerOrder:String;
        public var scale:Vector3;

        public var renderDepth:Number;

        public var rotationAutoUpdate:Boolean;

        public var matrix:Matrix4;
        public var matrixWorld:Matrix4;
        public var matrixRotationWorld:Matrix4;

        public var matrixAutoUpdate:Boolean;
        public var matrixWorldNeedsUpdate:Boolean;

        public var quaternion:Quaternion;
        public var useQuaternion:Boolean;

        public var visible:Boolean;

        public var castShadow:Boolean;
        public var receiveShadow:Boolean;

        public var frustumCulled:Boolean;

        public function Object3D():void {}

        public function applyMatrix(matrix:Matrix4):void { }
        public function translate(distance:Number, axis:Vector3):void { }
        public function translateX(distance:Number):void { }
        public function translateY(distance:Number):void { }
        public function translateZ(distance:Number):void { }
        public function localToWorld(vector:Vector3):Vector3 { return null; }
        public function worldToLocal(vector:Vector3):Vector3 { return null; }
        public function lookAt(vector:Vector3):void { }
        public function add(object:Object3D):void { }
        public function remove(object:Object3D):void { }
        public function traverse(call:Function):void { }

        public function getChildByName(name:String, recursive:Boolean):Object3D { return null; }
        public function getDescendants(array:Vector.<Object3D>):Vector.<Object3D> { return null; }

        public function updateMatrix():void { }
        public function updateMatrixWorld(force:Boolean=false):void { }

        public function clone(object:Object3D):Object3D { return null; }

    }

}