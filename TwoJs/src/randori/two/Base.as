package randori.two
{
	[JavaScript(export="false")]
	public class Base
	{
		public function Base()
		{
		}
		
		public var id:int;
		public var stroke:String;
		public var fill:String;
		public var opacity:Number;
		public var cap:String;
		public var join:String;
		public var miter:int;
		public var rotation:Number;
		public var scale:Number;
		public var parent:Group;
		public var translation:TwoVector;

		public function center():void{
		}
		
		public function addTo(group:Group):void {
		}
		
		public function getBoundingClientRect():Rectangle {
			return null;
		}
		
		public function noFill():void {
		}
		
		public function noStroke():void {
		}

	}
}