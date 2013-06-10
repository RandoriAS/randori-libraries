package randori.two
{
	import randori.two.params.TwoParams;
	import randori.webkit.dom.Element;

	[JavaScript(export="false",name="Two")]
	public class Two
	{
		public function Two(params:TwoParams)
		{
		}
		
		public var type:String;
		public var frameCount:int;
		public var timeDelta:int;
		public var width:int;
		public var height:int;
		public var playing:Boolean;
		public var renderer:String;
		public var scene:Group;
		
		public function appendTo(element:Element):void {
		}

		public function play():void {
		}
		
		public function pause():void{
		}

		public function update():void{
		}

		public function render():void{
		}

		public function add(...objects):void{
		}
		
		public function remove(...objects):void{
		}
		
		public function clear():void{
		}

		public function makeLine(x1:int, y1:int, x2:int, y2:int):Polygon {
			return null;
		}
		
		public function makeRectangle(x:int, y:int, width:int, height:int):Polygon {
			return null;
		}
		
		public function makeCircle(x:int, y:int, radius:int):Polygon {
			return null;
		}
		
		public function makeEllipse(x:int, y:int, width:int, height:int):Polygon {
			return null;
		}
		
		public function makeCurve(x1:int, y1:int, x2:int, y2:int, xN:int, yN:int, open:Boolean):Polygon {
			return null;
		}

		public function makePolygon(x1:int, y1:int, x2:int, y2:int, xN:int, yN:int, open:Boolean):Polygon {
			return null;
		}
		
		public function makeGroup(...objects):Group {
			return null;
		}
		
		public function interpret(svgNode:Element):Group {
			return null;
		}
		
		public function bind(event:String, callback:Function):void {
		}

		public function unbind(event:String, callback:Function):void {
		}
		
		public static function Error(message:String):void {
		}
		
		public static function noConflict():void {
		}

		public static var Resolution:int = 8;
	
		public static var Instances:Vector.<Two>;
	}
}