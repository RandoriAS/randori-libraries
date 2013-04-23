package com.mrdoob.three.core
{


[JavaScript(export="false", name="THREE.EventDispatcher")]
public class EventDispatcher
{
	
	public var listeners:Vector.<Function>;
	
	public function EventDispatcher():void {}
	public function addEventListener(type:String, listener:Function):void { }
	public function removeEventListener(type:String, listener:Function):void { }
	public function dispatchEvent(event:String):void { };

}

}