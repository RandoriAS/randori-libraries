package easeljs.utils
{
	import randori.webkit.html.HTMLObjectElement;

	/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.Ticker")]

	public class Ticker
	{
		public static var useRAF:Boolean = false;
		
		protected var _listeners:Array;
		protected var _pauseable:Array;
		protected var _paused:Boolean;
		protected var _inited:Boolean;
		protected var _startTime:Number;
		protected var _pausedTime:Number;
		protected var _ticks:Number;
		protected var _pausedTicks:Number;
		protected var _interval:Number;
		protected var _lastTime:Number;
		protected var _times:Array;
		protected var _tickTimes:Array;
		protected var _rafActive:Boolean;
		protected var _timeoutID:Number;
		
		public function Ticker()
		{
		
		}
		
		public static function addListener(o:HTMLObjectElement, pauseable:Boolean):void
		{
			
		}
		
		public static function init():void
		{
			
		}
		
		public static function removeListener(o:HTMLObjectElement):void
		{
			
		}
		
		public static function removeAllListeners():void
		{
			
		}
		
		public static function setInterval(interval:Number):void
		{
			
		}
		
		public static function getInterval():Number
		{
			return null;
		}
		
		public static function setFPS(value:Number):void
		{
			
		}
		
		public static function getFPS():Number
		{
			return null;
		}
		
		public static function getMeasuredFPS(ticks:Number):Number
		{
			return null;
		}
		
		public static function setPaused(value:Boolean):void
		{
			
		}
		
		public static function getTime(runTime:Boolean=false):Number
		{
			return null;
		}
		
		public static function getTicks(pauseable:Boolean):Number
		{
			return null;
		}
		
		protected function _handleAF():void
		{
			
		}
		
		protected function _handleTimeout():void
		{
			
		}
		
		protected function _setupTick():void
		{
			
		}
		
		protected function _tick():void
		{
			
		}
		
		protected function _getTime():void
		{
			
		}
		
	}
}

