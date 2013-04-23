package com.mrdoob.three.renderers
{


import com.mrdoob.three.cameras.Camera;
import com.mrdoob.three.core.Geometry;
import com.mrdoob.three.core.Object3D;
import com.mrdoob.three.lights.Light;
import com.mrdoob.three.materials.Material;
import com.mrdoob.three.math.Color;
import com.mrdoob.three.renderers.vo.InfoVO;
import com.mrdoob.three.scenes.Fog;
import com.mrdoob.three.scenes.Scene;
import com.mrdoob.three.textures.Texture;

import randori.webkit.dom.Element;
import com.mrdoob.three.renderers.context.WebGLContext;

[JavaScript(export="false", name="THREE.WebGLRenderer")]
public class WebGLRenderer implements IRenderer
{

	private var _domElement:Element; // canvas
    public function get domElement():Element {
        return _domElement;
    }

    public function set domElement(value:Element):void {
        _domElement = value;
    }

    public var context:WebGLContext; // initGL()
    
    public var devicePixelRatio:Number;
    
    public var autoClear:Boolean; // true
    public var autoClearColor:Boolean; // true
    public var autoClearDepth:Boolean; // true
    public var autoClearStencil:Boolean; // true
    
    public var sortObjects:Boolean; // true
    public var autoUpdateObjects:Boolean; // true
    public var autoUpdateScene:Boolean; // true
    public var gammaInput:Boolean; // false
    public var gammaOutput:Boolean; // false
    public var physicallyBasedShading:Boolean; // false

    public var shadowMapEnabled:Boolean; // false
    public var shadowMapAutoUpdate:Boolean; // true
    public var shadowMapType:int;
	public var shadowMapCullFace:Boolean; // true
	public var shadowMapDebug:Boolean; // true
	public var shadowMapCascade:Boolean; // true
	
    public var maxMorphTargets:int; // 8
    public var maxMorphNormals:int;
    
    public var autoScaleCubemaps:Boolean; // true
    public var renderPluginsPre:Array; // TODO
    public var renderPluginsPost:Array; // TODO
    
    public var info:InfoVO;
    
    public function WebGLRenderer(parameters:*):void { }
    public function getContext():WebGLContext { return null; }
    public function supportsVertexTextures():Boolean { return null; }
   	public function supportsNumberTextures():Boolean { return null; }
   	public function supportsStandardDerivatives():Boolean { return null }
    public function supportsCompressedTextureS3TC():Boolean { return null; }
    public function getMaxAnisotropy():Number { return null; }
    public function getPrecision():Number { return null; }
    
    public function setSize(width:Number, height:Number):void { }
    public function setViewport(x:Number, y:Number, width:Number, height:Number):void { }
    public function setScissor(x:Number, y:Number, width:Number, height:Number):void { }
    public function enableScissorTest(enable:Boolean):void { }
    public function setClearColorHex(hexColor:int, opacity:Number):void { }
    public function setClearColor(color:Color, opacity:Number):void { }
    public function getClearColor():Color { return null; }
    public function getClearAlpha():Number { return null; }
    public function clear(color:Boolean, depth:Boolean, stencil:Boolean):void { }
    public function clearTarget(renderTarget:WebGLRenderTarget, color:Boolean, depth:Boolean, stencil:Boolean):void { }
    
    public function addPostPlugin(plugin:*):void { } // TODO
    public function addPrePlugin(plugin:*):void { } // TODO
    
    public function deallocateGeometry(geometry:Geometry):void { }
    public function deallocateRenderTarget(renderTarget:WebGLRenderTarget):void { }
    public function deallocateMaterial(material:Material):void { }
    public function deallocateTexture(texture:Texture):void { }
    public function updateShadowMap(scene:Scene, camera:Camera):void { }
    
    public function renderBufferImmediate(object:Object3D, program:*, material:Material):void { }
    public function renderBufferDirect(camera:Camera, lights:Vector.<Light>, fog:Fog, material:Material, geometry:Geometry, object:Object3D):void { }
    public function renderBuffer(camera:Camera, lights:Vector.<Light>, fog:Fog, material:Material, geometry:Geometry, object:Object3D):void { }
    public function renderImmediateObject(camera:Camera, lights:Vector.<Light>, fog:Fog, material:Material, geometry:Geometry, object:Object3D):void { }
    public function render(scene:Scene, camera:Camera, renderTarget:WebGLRenderTarget=null, forceClear:Boolean=false):void { }

	public function renderPlugins(plugins:Array, scene:Scene, camera:Camera):void { }
	public function initWebGLObjects(scene:Scene):void { }
	public function initMaterial(material:Material, lights:Vector.<Light>, fog:Fog, object:Object3D):void { }
	public function setFaceCulling(cullFace:*, frontFace:String):void { }
	public function setMaterialFaces(material:Material):void { }
	public function setDepthTest(depthTest:Boolean):void { }
	
	public function setDepthWrite(depthWrite:Boolean):void { }
	public function setBlending(blending:int, blendEquation:int, blendSrc:int, blendDst:int):void { }
	public function setTexture(texture:Texture, slot:int):void { }
	public function setRenderTarget(renderTarget:WebGLRenderTarget):void { }

}

}