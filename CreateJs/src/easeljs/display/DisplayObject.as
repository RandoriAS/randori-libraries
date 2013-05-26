package easeljs.display
{
	import randori.webkit.html.HTMLObjectElement;
	import easeljs.display.Container;
	import randori.webkit.html.shadow.HTMLShadowElement;
	import easeljs.display.Shape;
	import easeljs.display.DisplayObject;
	import randori.webkit.html.canvas.CanvasRenderingContext2D;
	import easeljs.geom.Matrix2D;
	import easeljs.display.Stage;
	import easeljs.geom.Point;

	/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.DisplayObject")]

	public class DisplayObject
	{
		public static var suppressCrossDomainErrors:Boolean = false;
		
		protected static var _hitTestCanvas:HTMLObjectElement;
		protected static var _hitTestContext:CanvasRenderingContext2D;
		protected static var _nextCacheID:Number;
		
		public var alpha:Number = 1;
		public var cacheCanvas:HTMLObjectElement = null;
		public var id:Number = -1;
		public var mouseEnabled:Boolean = true;
		public var name:String = 'null';
		public var parent:Container = null;
		public var regX:Number = 0;
		public var regY:Number = 0;
		public var rotation:Number = 0;
		public var scaleX:Number = 1;
		public var scaleY:Number = 1;
		public var skewX:Number = 0;
		public var skewY:Number = 0;
		public var shadow:HTMLShadowElement = null;
		public var visible:Boolean = true;
		public var x:Number = 0;
		public var y:Number = 0;
		public var compositeOperation:String = 'null';
		public var snapToPixel:Boolean = false;
		public var onPress:Function;
		public var onClick:Function;
		public var onDoubleClick:Function;
		public var onMouseOver:Function;
		public var onMouseOut:Function;
		public var onTick:Function;
		public var filters:Array = null;
		public var cacheID:Number = 0;
		public var mask:Shape = null;
		public var hitArea:DisplayObject = null;
		public var cursor:String = 'null';
		
		protected var _cacheOffsetX:Number = 0;
		protected var _cacheOffsetY:Number = 0;
		protected var _cacheScale:Number = 1;
		protected var _cacheDataURLID:Number = 0;
		protected var _cacheDataURL:String = 'null';
		protected var _matrix:Matrix2D = null;
		
		public function DisplayObject()
		{
		
		}
		
		public function isVisible():Boolean
		{
			return null;
		}
		
		public function draw(... args):void
		{
			
		}
		
		public function updateContext(ctx:CanvasRenderingContext2D):void
		{
			
		}
		
		public function cache(... args):void
		{
			
		}
		
		public function updateCache(... args):void
		{
			
		}
		
		public function uncache():void
		{
			
		}
		
		public function getCacheDataURL():void
		{
			
		}
		
		public function getStage():Stage
		{
			return null;
		}
		
		public function localToGlobal(... args):*
		{
			return null;
		}
		
		public function globalToLocal(... args):Point
		{
			return null;
		}
		
		public function localToLocal(... args):Point
		{
			return null;
		}
		
		public function setTransform(x:Number=0, y:Number=0, scaleX:Number=1, scaleY:Number=1, rotation:Number=0, skewX:Number=0, skewY:Number=0, regX:Number=0, regY:Number=0):DisplayObject
		{
			return null;
		}
		
		public function getMatrix(matrix:Matrix2D):Matrix2D
		{
			return null;
		}
		
		public function getConcatenatedMatrix(mtx:Matrix2D):Matrix2D
		{
			return null;
		}
		
		public function hitTest(x:Number, y:Number):Boolean
		{
			return null;
		}
		
		public function set(props:HTMLObjectElement):DisplayObject
		{
			return null;
		}
		
		public function clone(... args):*
		{
			return null;
		}
		
		public function toString():String
		{
			return null;
		}
		
		protected function initialize(... args):void
		{
			
		}
		
		protected function cloneProps(... args):void
		{
			
		}
		
		protected function _applyShadow(ctx:CanvasRenderingContext2D, shadow:HTMLShadowElement):void
		{
			
		}
		
		protected function _tick(params:*):void
		{
			
		}
		
		protected function _testHit(ctx:CanvasRenderingContext2D):Boolean
		{
			return null;
		}
		
		protected function _applyFilters():void
		{
			
		}
		
		protected function _hasMouseHandler(typeMask:Number):Boolean
		{
			return null;
		}
		
	}
}

