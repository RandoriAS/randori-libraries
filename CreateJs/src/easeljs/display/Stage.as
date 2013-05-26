package easeljs.display
{
	import easeljs.display.Container;
	import randori.webkit.html.HTMLObjectElement;
	import easeljs.events.MouseEvent;
	import randori.webkit.dom.DomEvent;
	import randori.webkit.html.HTMLElement;

	/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.Stage")]

	public class Stage extends Container
	{
		protected static var _snapToPixelEnabled:Boolean = false;
		
		public var autoClear:Boolean = true;
		public var canvas:HTMLObjectElement;
		public var mouseX:Number;
		public var mouseY:Number;
		public var onMouseMove:Function;
		public var onMouseUp:Function;
		public var onMouseDown:Function;
		public var snapToPixelEnabled:Boolean = false;
		public var mouseInBounds:Boolean = false;
		public var tickOnUpdate:Boolean = true;
		public var mouseMoveOutside:Boolean = false;
		public var tick:Function;
		public var handleEvent:Function;
		
		protected var _mouseOverIntervalID:Number;
		
		private var _pointerData:HTMLObjectElement;
		private var _pointerCount:HTMLObjectElement;
		private var _primaryPointerID:HTMLObjectElement;
		private var Container_initialize:Function;
		
		public function Stage(canvas:*)
		{
		
		}
		
		public function update():void
		{
			
		}
		
		public function clear():void
		{
			
		}
		
		public function toDataURL(backgroundColor:String, mimeType:String):String
		{
			return null;
		}
		
		public function enableMouseOver(frequency:Number=20):void
		{
			
		}
		
		public function enableDOMEvents(enable:Boolean=true):void
		{
			
		}
		
		override public function toString():String
		{
			return null;
		}
		
		override protected function initialize(... args):void
		{
			
		}
		
		protected function _getPointerData(id:Number):void
		{
			
		}
		
		protected function _handleMouseMove(e:MouseEvent):void
		{
			
		}
		
		protected function _handlePointerMove(id:Number, e:DomEvent, pageX:Number, pageY:Number):void
		{
			
		}
		
		protected function _updatePointerPosition(id:Number, pageX:Number, pageY:Number):void
		{
			
		}
		
		protected function _getElementRect(e:HTMLElement):void
		{
			
		}
		
		protected function _handleMouseUp(e:MouseEvent):void
		{
			
		}
		
		protected function _handlePointerUp(id:Number, e:DomEvent, clear:Boolean):void
		{
			
		}
		
		protected function _handleMouseDown(e:MouseEvent):void
		{
			
		}
		
		protected function _handlePointerDown(id:Number, e:DomEvent, x:Number, y:Number):void
		{
			
		}
		
		protected function _testMouseOver():void
		{
			
		}
		
		protected function _handleDoubleClick(e:MouseEvent):void
		{
			
		}
		
	}
}

