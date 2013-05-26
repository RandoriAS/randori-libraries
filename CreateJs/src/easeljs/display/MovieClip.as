package easeljs.display
{
	import easeljs.display.Container;
	import tweenjs.Timeline;
	import randori.webkit.html.HTMLObjectElement;
	import randori.webkit.html.canvas.CanvasRenderingContext2D;
	import easeljs.display.DisplayObject;

	/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.MovieClip")]

	public class MovieClip extends Container
	{
		public static var INDEPENDENT:String = 'independent';
		public static var SINGLE_FRAME:String = 'single';
		public static var SYNCHED:String = 'synched';
		
		public var mode:String = 'null';
		public var startPosition:Number = 0;
		public var loop:Boolean = true;
		public var currentFrame:Number;
		public var timeline:Timeline = null;
		public var paused:Boolean = false;
		public var actionsEnabled:Boolean = true;
		public var autoReset:Boolean = true;
		
		private var _synchOffset:Number = 0;
		private var _prevPos:Number = -1;
		private var _prevPosition:Number = 0;
		private var _managed:HTMLObjectElement;
		private var Container_initialize:Function;
		private var Container_draw:Function;
		private var Container__tick:Function;
		
		public function MovieClip(mode:String='independent', startPosition:Number=0, loop:Boolean=true, labels:HTMLObjectElement=null)
		{
		
		}
		
		override public function isVisible():Boolean
		{
			return null;
		}
		
		override public function draw(... args):void
		{
			
		}
		
		public function play():void
		{
			
		}
		
		public function stop():void
		{
			
		}
		
		public function gotoAndPlay(positionOrLabel:*):void
		{
			
		}
		
		public function gotoAndStop(positionOrLabel:*):void
		{
			
		}
		
		override public function clone(... args):*
		{
			
		}
		
		override public function toString():String
		{
			return null;
		}
		
		override protected function initialize(... args):void
		{
			
		}
		
		private function _tick(params:*):void
		{
			
		}
		
		private function _goto(positionOrLabel:*):void
		{
			
		}
		
		private function _reset():void
		{
			
		}
		
		private function _updateTimeline():void
		{
			
		}
		
		private function _setState(state:*, offset:*):void
		{
			
		}
		
		private function _addManagedChild(child:DisplayObject, offset:Number):void
		{
			
		}
		
	}
}

class MovieClipPlugin
{
	public function MovieClipPlugin()
	{
	
	}
	
	private function priority():void
	{
		
	}
	
	private function install():void
	{
		
	}
	
	private function init(tween:*, prop:*, value:*):void
	{
		
	}
	
	private function step():void
	{
		
	}
	
	private function tween(tween:*, prop:*, value:*, startValues:*, endValues:*, ratio:*, wait:*, end:*):void
	{
		
	}
	
}
