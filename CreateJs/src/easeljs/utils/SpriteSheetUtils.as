package easeljs.utils
{
	import randori.webkit.html.HTMLObjectElement;
	import randori.webkit.html.canvas.CanvasRenderingContext2D;
	import easeljs.display.SpriteSheet;
	import randori.webkit.html.HTMLImageElement;
	import randori.webkit.html.HTMLCanvasElement;

	/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.SpriteSheetUtils")]

	public class SpriteSheetUtils
	{
		protected static var _workingCanvas:HTMLObjectElement;
		protected static var _workingContext:CanvasRenderingContext2D;
		
		public function SpriteSheetUtils()
		{
		
		}
		
		public static function addFlippedFrames(spriteSheet:SpriteSheet, horizontal:Boolean, vertical:Boolean, both:Boolean):void
		{
			
		}
		
		public static function extractFrame(spriteSheet:HTMLImageElement, frame:*):HTMLImageElement
		{
			return null;
		}
		
		public static function mergeAlpha(rbgImage:HTMLImageElement, alphaImage:HTMLImageElement, canvas:HTMLCanvasElement):HTMLCanvasElement
		{
			return null;
		}
		
	}
}

