package com.mrdoob.three.loaders
{

[JavaScript(export="false", name="THREE.SceneLoader")]
public class SceneLoader
{

    public var onLoadStart:Function;
    public var onLoadProgress:Function;
    public var onLoadComplete:Function;

    public var callbackSync:Function;
    public var callbackProgress:Function;

    public function SceneLoader():void {}
    public function load(url:String, callBackFinished:Function):void { }

}

}

