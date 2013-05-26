package easeljs.display
{
	import easeljs.display.DisplayObject;
	import randori.webkit.html.canvas.CanvasRenderingContext2D;
	import easeljs.display.Container;

	/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.Container")]

	public class Container extends DisplayObject
	{
		public var children:Array = null;
		
		private var DisplayObject_initialize:Function;
		private var DisplayObject_draw:Function;
		private var DisplayObject__tick:Function;
		
		public function Container()
		{
		
		}
		
		override public function isVisible():Boolean
		{
			return null;
		}
		
		override public function draw(... args):void
		{
			
		}
		
		public function addChild(child:DisplayObject):DisplayObject
		{
			return null;
		}
		
		public function addChildAt(child:DisplayObject, index:Number):DisplayObject
		{
			return null;
		}
		
		public function removeChild(child:DisplayObject):Boolean
		{
			return null;
		}
		
		public function removeChildAt(index:Number):Boolean
		{
			return null;
		}
		
		public function removeAllChildren():void
		{
			
		}
		
		public function getChildAt(index:Number):DisplayObject
		{
			return null;
		}
		
		public function getChildByName(name:String):DisplayObject
		{
			return null;
		}
		
		public function sortChildren(sortFunction:Function):void
		{
			
		}
		
		public function getChildIndex(child:DisplayObject):Number
		{
			return null;
		}
		
		public function getNumChildren():Number
		{
			return null;
		}
		
		public function swapChildrenAt(index1:Number, index2:Number):void
		{
			
		}
		
		public function swapChildren(child1:DisplayObject, child2:DisplayObject):void
		{
			
		}
		
		public function setChildIndex(child:DisplayObject, index:Number):void
		{
			
		}
		
		public function contains(child:DisplayObject):Boolean
		{
			return null;
		}
		
		override public function hitTest(x:Number, y:Number):Boolean
		{
			return null;
		}
		
		public function getObjectsUnderPoint(x:Number, y:Number):Array
		{
			return null;
		}
		
		public function getObjectUnderPoint(x:Number, y:Number):DisplayObject
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
		
		protected function _getObjectsUnderPoint(x:Number, y:Number, arr:Array, mouseEvents:Number):Array
		{
			return null;
		}
		
	}
}

