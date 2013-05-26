package easeljs.filters
{
	import easeljs.filters.ColorMatrix;

	/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.ColorMatrix")]

	public class ColorMatrix extends Array
	{
		protected static var DELTA_INDEX:Array;
		protected static var IDENTITY_MATRIX:Array;
		protected static var LENGTH:Number;
		
		public function ColorMatrix(brightness:Number, contrast:Number, saturation:Number, hue:Number)
		{
		
		}
		
		public function reset():ColorMatrix
		{
			return null;
		}
		
		public function adjustColor(brightness:Number, contrast:Number, saturation:Number, hue:Number):ColorMatrix
		{
			return null;
		}
		
		public function adjustBrightness(value:Number):ColorMatrix
		{
			return null;
		}
		
		public function adjustContrast(value:Number):ColorMatrix
		{
			return null;
		}
		
		public function adjustSaturation(value:Number):ColorMatrix
		{
			return null;
		}
		
		public function adjustHue(value:Number):ColorMatrix
		{
			return null;
		}
		
		public function concat(matrix:Array):ColorMatrix
		{
			return null;
		}
		
		public function clone():ColorMatrix
		{
			return null;
		}
		
		public function toArray():Array
		{
			return null;
		}
		
		public function copyMatrix(matrix:Array):ColorMatrix
		{
			return null;
		}
		
		protected function initialize(brightness:Number, contrast:Number, saturation:Number, hue:Number):void
		{
			
		}
		
		protected function _multiplyMatrix(matrix:*):void
		{
			
		}
		
		protected function _cleanValue(value:Number, limit:Number):void
		{
			
		}
		
		protected function _fixMatrix(matrix:*):void
		{
			
		}
		
	}
}

