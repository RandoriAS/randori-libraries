package easeljs.display
{
	import easeljs.display.DisplayObject;
	import easeljs.display.Graphics;
	import randori.webkit.html.canvas.CanvasRenderingContext2D;

	/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.Shape")]

	public class Shape extends DisplayObject
	{
		public var graphics:Graphics;
		
		private var DisplayObject_initialize:Function;
		private var DisplayObject_draw:Function;
		
		public function Shape(graphics:Graphics)
		{
		
		}
		
		override public function isVisible():Boolean
		{
			return null;
		}
		
		override public function draw(... args):void
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
		
	}
}

