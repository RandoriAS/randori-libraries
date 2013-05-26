package easeljs.ui
{
	import randori.webkit.html.HTMLObjectElement;
	import easeljs.display.DisplayObject;

	/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.ButtonHelper")]

	public class ButtonHelper
	{
		public var target:HTMLObjectElement;
		public var overLabel:HTMLObjectElement;
		public var outLabel:HTMLObjectElement;
		public var downLabel:HTMLObjectElement;
		public var play:Boolean = false;
		
		protected var _isPressed:Boolean;
		protected var _isOver:Boolean;
		
		public function ButtonHelper(target:*, outLabel:String='out', overLabel:String='over', downLabel:String='down', play:Boolean=false, hitArea:DisplayObject=null, hitLabel:String='')
		{
		
		}
		
		public function setEnabled(value:Boolean):void
		{
			
		}
		
		public function toString():String
		{
			return null;
		}
		
		protected function initialize(target:*, outLabel:String='out', overLabel:String='over', downLabel:String='down', play:Boolean=false, hitArea:DisplayObject=null, hitLabel:String=''):void
		{
			
		}
		
		protected function handleEvent(evt:*):void
		{
			
		}
		
	}
}

