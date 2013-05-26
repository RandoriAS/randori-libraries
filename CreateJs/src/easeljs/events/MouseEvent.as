package easeljs.events
{
	import easeljs.events.MouseEvent;
	import easeljs.display.DisplayObject;

	/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.MouseEvent")]

	public class MouseEvent
	{
		public var stageX:Number;
		public var stageY:Number;
		public var rawX:Number;
		public var rawY:Number;
		public var type:String;
		public var nativeEvent:MouseEvent = null;
		public var onMouseMove:Function;
		public var onMouseUp:Function;
		public var target:DisplayObject = null;
		public var pointerID:Number;
		public var primary:Boolean;
		
		public function MouseEvent(type:String, stageX:Number, stageY:Number, target:DisplayObject, nativeEvent:MouseEvent, pointerID:Number, primary:Boolean, rawX:Number, rawY:Number)
		{
		
		}
		
		public function clone():MouseEvent
		{
			return null;
		}
		
		public function toString():String
		{
			return null;
		}
		
		protected function initialize(type:String, stageX:Number, stageY:Number, target:DisplayObject, nativeEvent:MouseEvent, pointerID:Number, primary:Boolean, rawX:Number, rawY:Number):void
		{
			
		}
		
	}
}

