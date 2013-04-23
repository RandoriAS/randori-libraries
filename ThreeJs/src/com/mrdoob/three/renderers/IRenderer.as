package com.mrdoob.three.renderers
{

import com.mrdoob.three.cameras.Camera;
import com.mrdoob.three.scenes.Scene;

import randori.webkit.dom.Element;

public interface IRenderer
{
    function get domElement():Element;
    function set domElement(value:Element):void;

    function setSize(width:Number, height:Number):void;
    function render(scene:Scene, camera:Camera, renderTarget:WebGLRenderTarget=null, forceClear:Boolean=false):void;

}

}