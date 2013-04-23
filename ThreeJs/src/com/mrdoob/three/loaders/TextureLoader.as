package com.mrdoob.three.loaders
{

import com.mrdoob.three.core.EventDispatcher;

import randori.webkit.html.HTMLImageElement;

[JavaScript(export="false", name="THREE.TextureLoader")]
public class TextureLoader extends EventDispatcher
{
	
	public var crossOrigin:HTMLImageElement;
	
	public function TextureLoader():void {}
	public function load(url:String):void { }

}

}