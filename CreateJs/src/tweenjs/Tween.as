package tweenjs
{
import randori.webkit.html.HTMLObjectElement;

/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.Tween")]

	public class Tween
	{
		public static var NONE:Number = 0;
		public static var LOOP:Number = 1;
		public static var REVERSE:Number = 2;
		public static var IGNORE:HTMLObjectElement;
		
		protected static var _listeners:Vector.<Tween>;
		protected static var _plugins:HTMLObjectElement;
		
		public var ignoreGlobalPause:Boolean = false;
		public var loop:Boolean = false;
		public var duration:Number = 0;
		public var onChange:Function;
		public var target:HTMLObjectElement;
		public var position:HTMLObjectElement;
		
		protected var _paused:Boolean = false;
		protected var _curQueueProps:HTMLObjectElement;
		protected var _initQueueProps:HTMLObjectElement;
		protected var _steps:Array;
		protected var _actions:Array;
		protected var _prevPosition:Number = 0;
		protected var _stepPosition:Number = 0;
		protected var _prevPos:Number = -1;
		protected var _target:HTMLObjectElement;
		protected var _useTicks:Boolean = false;
		
		public function Tween()
		{
		
		}
		
		public static function get(target:Object, props:Object=null, pluginData:Object=null, override:Boolean=false):Tween
		{
			return null;
		}
		
		public static function tick(delta:Number, paused:Boolean):void
		{
			
		}
		
		public static function removeTweens(target:Object):void
		{
			
		}
		
		public static function removeAllTweens():void
		{
			
		}
		
		public static function hasActiveTweens(target:Object):Boolean
		{
			return null;
		}
		
		public static function installPlugin(plugin:Object, properties:Object):void
		{
			
		}
		
		protected static function _register(tween:*, value:*):void
		{
			
		}
		
		public function wait(duration:Number):Tween
		{
			return null;
		}
		
		public function to(props:Object, duration:Number, ease:Function):Tween
		{
			return null;
		}
		
		public function call(callback:Function, params:Object=null, scope:Object=null):Tween
		{
			return null;
		}
		
		public function set(props:Object, target:Object):Tween
		{
			return null;
		}
		
		public function play(tween:Tween):Tween
		{
			return null;
		}
		
		public function pause(tween:Tween):Tween
		{
			return null;
		}
		
		public function setPosition(value:Number, actionsMode:Number):Boolean
		{
			return null;
		}
		
		public function tick(delta:Number):void
		{
			
		}
		
		public function setPaused(value:Boolean):Tween
		{
			return null;
		}
		
		public function toString():String
		{
			return null;
		}
		
		protected function initialize(target:Object, props:Object, pluginData:Object):void
		{
			
		}
		
		protected function clone():void
		{
			
		}
		
		protected function _updateTargetProps(step:Object, ratio:Number):void
		{
			
		}
		
		protected function _runActions(startPos:Number, endPos:Number, includeStart:Boolean):void
		{
			
		}
		
		protected function _appendQueueProps(o:Object):void
		{
			
		}
		
		protected function _cloneProps(props:Object):void
		{
			
		}
		
		protected function _addStep(o:Object):void
		{
			
		}
		
		protected function _addAction(o:Object):void
		{
			
		}
		
		protected function _set(props:Object, o:Object):void
		{
			
		}
		
	}
}

