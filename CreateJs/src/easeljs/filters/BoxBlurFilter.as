package easeljs.filters
{
	import easeljs.filters.Filter;
	import easeljs.geom.Rectangle;

	/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.BoxBlurFilter")]

	public class BoxBlurFilter extends Filter
	{
		public var blurX:Number = 0;
		public var blurY:Number = 0;
		public var quality:Number = 1;
		
		public function BoxBlurFilter(blurX:Number=0, blurY:Number=0, quality:Number=1)
		{
		
		}
		
		override public function getBounds():Rectangle
		{
			return null;
		}
		
	}
}

