package randori.two
{
	[JavaScript(export="false",name="Two.Polygon")]
	public class Polygon extends Base
	{
		public function Polygon(vertices:Vector.<Object>, closed:Boolean, curved:Boolean) {
		}
		
		public var linewidth:int;
		public var vertices:Vector.<TwoVector>;
		public var closed:Boolean;
		public var curved:Boolean;
		public var beginning:Number;
		public var ending:Number;
		
		public function clone():Polygon {
			return null;
		}
		
		public function remove():void {
		}
		
	}
}