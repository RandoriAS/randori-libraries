package com.mrdoob.three.loaders
{

import randori.webkit.dom.Element;

[JavaScript(export="false", name="THREE.Loader")]
public class Loader
{
	public var showStatus:Boolean;
	public var statusDomElement:Element;

	public var onLoadStart:Function;
	public var onLoadProgress:Function;
	public var onLoadComplete:Function;
	
	public function Loader(showStatus:Boolean):void { }

}

}