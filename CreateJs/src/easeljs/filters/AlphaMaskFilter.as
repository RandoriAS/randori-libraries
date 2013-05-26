package easeljs.filters
{
	import easeljs.filters.Filter;
	import randori.webkit.html.HTMLImageElement;
	import randori.webkit.html.canvas.CanvasRenderingContext2D;

	/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.AlphaMaskFilter")]

	public class AlphaMaskFilter extends Filter
	{
		public var mask:HTMLImageElement;
		
		public function AlphaMaskFilter(mask:HTMLImageElement)
		{
		
		}
		
		override public function applyFilter(... args):Boolean
		{
			return null;
		}
		
	}
}

