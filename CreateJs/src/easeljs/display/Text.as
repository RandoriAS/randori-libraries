package easeljs.display
{
	import easeljs.display.DisplayObject;
	import randori.webkit.html.canvas.CanvasRenderingContext2D;
	import easeljs.display.Text;

	/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.Text")]

	public class Text extends DisplayObject
	{
		public var text:String;
		public var font:String;
		public var color:String;
		public var textAlign:String;
		public var textBaseline:String;
		public var maxWidth:Number;
		public var outline:Boolean;
		public var lineHeight:Number;
		public var lineWidth:Number;
		
		private var _workingContext:CanvasRenderingContext2D;
		private var DisplayObject_initialize:Function;
		private var DisplayObject_draw:Function;
		private var DisplayObject_cloneProps:Function;
		
		public function Text(text:String, font:String, color:String)
		{
		
		}
		
		override public function isVisible():Boolean
		{
			return null;
		}
		
		override public function draw(... args):void
		{
			
		}
		
		public function getMeasuredWidth():Number
		{
			return null;
		}
		
		public function getMeasuredLineHeight():Number
		{
			return null;
		}
		
		public function getMeasuredHeight():Number
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
		
		override protected function cloneProps(... args):void
		{
			
		}
		
		protected function _getWorkingContext():void
		{
			
		}
		
		protected function _drawText(ctx:CanvasRenderingContext2D):Number
		{
			return null;
		}
		
		protected function _drawTextLine(ctx:CanvasRenderingContext2D, text:Text, y:Number):void
		{
			
		}
		
	}
}

