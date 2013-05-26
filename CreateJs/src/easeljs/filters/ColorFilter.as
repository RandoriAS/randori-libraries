package easeljs.filters
{
	import easeljs.filters.Filter;
	import easeljs.filters.ColorFilter;

	/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.ColorFilter")]

	public class ColorFilter extends Filter
	{
		public var redMultiplier:Number;
		public var greenMultiplier:Number;
		public var blueMultiplier:Number;
		public var alphaMultiplier:Number;
		public var redOffset:Number;
		public var greenOffset:Number;
		public var blueOffset:Number;
		public var alphaOffset:Number;
		
		public function ColorFilter(redMultiplier:Number=1, greenMultiplier:Number=1, blueMultiplier:Number=1, alphaMultiplier:Number=1, redOffset:Number=0, greenOffset:Number=0, blueOffset:Number=0, alphaOffset:Number=0)
		{
		
		}
		
		override public function clone():*
		{
			return null;
		}
		
		override protected function initialize(... args):void
		{
			
		}
		
	}
}

