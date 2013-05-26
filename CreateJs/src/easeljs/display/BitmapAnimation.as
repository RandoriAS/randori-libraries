package easeljs.display
{
	import easeljs.display.DisplayObject;
	import easeljs.display.SpriteSheet;
	import randori.webkit.html.HTMLObjectElement;
	import randori.webkit.html.canvas.CanvasRenderingContext2D;
	import easeljs.geom.Rectangle;
	import easeljs.display.BitmapAnimation;
	import easeljs.display.Text;

	/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.BitmapAnimation")]

	public class BitmapAnimation extends DisplayObject
	{
		public var onAnimationEnd:Function;
		public var currentFrame:Number = -1;
		public var currentAnimation:String;
		public var paused:Boolean = false;
		public var spriteSheet:SpriteSheet;
		public var offset:Number = 0;
		public var currentAnimationFrame:Number = 0;
		
		protected var _advanceCount:Number = 0;
		protected var _animation:HTMLObjectElement = null;
		
		private var DisplayObject_initialize:Function;
		private var DisplayObject_draw:Function;
		private var DisplayObject__tick:Function;
		private var _dispatchAnimationEnd:Function;
		private var DisplayObject_cloneProps:Function;
		
		public function BitmapAnimation(spriteSheet:SpriteSheet)
		{
			snapToPixel = true;
		}
		
		override public function isVisible():Boolean
		{
			return null;
		}
		
		override public function draw(... args):void
		{
			
		}
		
		override public function cache(... args):void
		{
			
		}
		
		override public function updateCache(... args):void
		{
			
		}
		
		override public function uncache():void
		{
			
		}
		
		public function play():void
		{
			
		}
		
		public function stop():void
		{
			
		}
		
		public function gotoAndPlay(frameOrAnimation:*):void
		{
			
		}
		
		public function gotoAndStop(frameOrAnimation:*):void
		{
			
		}
		
		public function advance():void
		{
			
		}
		
		public function getBounds():Rectangle
		{
			return null;
		}
		
		override public function clone():*
		{
			return null;
		}
		
		override public function toString():String
		{
			return null;
		}
		
		override protected function initialize(... args):void
		{
			
		}
		
		override protected function _tick(params:*):void
		{
			
		}
		
		protected function _normalizeCurrentFrame():void
		{
			
		}
		
		override protected function cloneProps(... args):void
		{
			
		}
		
		protected function _goto(frameOrAnimation:*):void
		{
			
		}
		
	}
}

