package easeljs.display
{
	import easeljs.display.DisplayObject;
	import randori.webkit.html.HTMLObjectElement;
	import easeljs.geom.Rectangle;
	import randori.webkit.html.canvas.CanvasRenderingContext2D;
	import easeljs.display.Bitmap;

	/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.Bitmap")]

	public class Bitmap extends DisplayObject
	{
		public var image:HTMLObjectElement;
		public var sourceRect:Rectangle = null;
		
		private var DisplayObject_initialize:Function;
		private var DisplayObject_draw:Function;
		
		public function Bitmap(imageOrUri:*)
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
		
	}
}

