package easeljs.display
{
	import easeljs.display.DisplayObject;
	import randori.webkit.html.HTMLElement;
	import randori.webkit.html.canvas.CanvasRenderingContext2D;
	import easeljs.geom.Point;
	import easeljs.display.DOMElement;

	/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.DOMElement")]

	public class DOMElement extends DisplayObject
	{
		public var htmlElement:HTMLElement;
		
		protected var _oldMtx:*;
		protected var DisplayObject__tick:Function;
		
		private var DisplayObject_initialize:Function;
		
		public function DOMElement(htmlElement:HTMLElement)
		{
		
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
		
		override public function uncache():void
		{
			
		}
		
		override public function updateCache(... args):void
		{
			
		}
		
		public function hitArea():void
		{
			
		}
		
		override public function localToGlobal(... args):*
		{
			
		}
		
		override public function globalToLocal(... args):Point
		{
			return null;
		}
		
		override public function localToLocal(... args):Point
		{
			return null;
		}
		
		override public function clone(... args):*
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
		
	}
}

