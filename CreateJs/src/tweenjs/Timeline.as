package tweenjs
{
/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.Timeline")]

	public class Timeline
	{
		public var ignoreGlobalPause:Boolean;
		public var duration:Number;
		public var loop:Boolean;
		public var onChange:Function;
		public var position:Object;
		
		protected var _paused:Boolean;
		protected var _tweens:Vector.<Tween>;
		protected var _labels:Vector.<String>;
		protected var _prevPosition:Number;
		protected var _prevPos:Number;
		protected var _useTicks:Boolean;
		
		public function Timeline(tweens:Vector.<Tween>, labels:Object, props:Object)
		{
		
		}
		
		public function addTween(tween:Tween):Tween
		{
			return null;
		}
		
		public function removeTween(tween:Tween):Boolean
		{
			return null;
		}
		
		public function addLabel(label:String, position:int):void
		{
			
		}
		
		public function setLabels(o:Object):void
		{
			
		}
		
		public function gotoAndPlay(positionOrLabel:*):void
		{
			
		}
		
		public function gotoAndStop(positionOrLabel:*):void
		{
			
		}
		
		public function setPosition(value:Number, actionsMode:String):Boolean
		{
			return null;
		}
		
		public function setPaused(value:Boolean):void
		{
			
		}
		
		public function updateDuration():void
		{
			
		}
		
		public function tick(delta:Number):void
		{
			
		}
		
		public function resolve(positionOrLabel:*):void
		{
			
		}
		
		public function toString():String
		{
			return null;
		}
		
		protected function initialize(tweens:Tween, labels:Object, props:Object):void
		{
			
		}
		
		protected function clone():void
		{
			
		}
		
		protected function _goto(positionOrLabel:*):void
		{
			
		}
		
	}
}

