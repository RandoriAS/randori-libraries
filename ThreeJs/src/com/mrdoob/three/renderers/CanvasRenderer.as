package com.mrdoob.three.renderers
{


import com.mrdoob.three.cameras.Camera;
import com.mrdoob.three.math.Color;
import com.mrdoob.three.scenes.Scene;

import randori.webkit.dom.Element;

[JavaScript(export="false", name="THREE.CanvasRenderer")]
public class CanvasRenderer implements IRenderer
{

    private var _domElement:Element; // canvas
    public function get domElement():Element {
        return _domElement;
    }

    public function set domElement(value:Element):void {
        _domElement = value;
    }

    public var devicePixelRatio:Number;
    
    public var autoClear:Boolean; // true
    public var sortObjects:Boolean; // true
    public var sortElements:Boolean; // true
    
    public var infos:Object;
    public var smoothstep:Function;
    
    public function supportsVertexTextures():void { }
	public function setFaceCulling():void { }
    
    public function CanvasRenderer(parameters:*=null):void { }
    public function setSize(width:Number, height:Number):void { }
    public function setClearColor(color:Color, opacity:Number):void { }
    public function setClearColorHex(hex:int, opacity:Number):void { }
    
    public function getMaxAnisotropy():Number { return null; }
    public function clear():void { }
    public function render(scene:Scene, camera:Camera, renderTarget:WebGLRenderTarget=null, forceClear:Boolean=false):void { }
    
    public function setOpacity(value:Number):void { }
    public function setBlending(value:int):void { }
    
    public function setLineWidth(value:Number):void { }
    public function setLineCap(value:String):void { }
    public function setLineJoin(value:String):void { }
    public function setStrokeStyle(value:String):void { }
    public function setFillStyle(value:String):void { }
    public function setDashAndGap(dashSizeValue:Number, gapSizeValue:Number):void { }

}

}