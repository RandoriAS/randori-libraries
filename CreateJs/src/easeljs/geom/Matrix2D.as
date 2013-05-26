package easeljs.geom
{
	import easeljs.geom.Matrix2D;
	import randori.webkit.html.shadow.HTMLShadowElement;
	import randori.webkit.html.HTMLObjectElement;

	/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.Matrix2D")]

	public class Matrix2D
	{
		public static var identity:Matrix2D;
		public static var DEG_TO_RAD:Number;
		
		public var a:Number;
		public var b:Number;
		public var c:Number;
		public var d:Number;
		public var tx:Number;
		public var ty:Number;
		public var alpha:Number;
		public var shadow:HTMLShadowElement;
		public var compositeOperation:String;
		
		public function Matrix2D(a:Number, b:Number, c:Number, d:Number, tx:Number, ty:Number)
		{
		
		}
		
		public function prepend(a:Number, b:Number, c:Number, d:Number, tx:Number, ty:Number):Matrix2D
		{
			return null;
		}
		
		public function append(a:Number, b:Number, c:Number, d:Number, tx:Number, ty:Number):Matrix2D
		{
			return null;
		}
		
		public function prependMatrix(matrix:Matrix2D):void
		{
			
		}
		
		public function appendMatrix(matrix:Matrix2D):Matrix2D
		{
			return null;
		}
		
		public function prependTransform(x:Number, y:Number, scaleX:Number, scaleY:Number, rotation:Number, skewX:Number, skewY:Number, regX:Number, regY:Number):Matrix2D
		{
			return null;
		}
		
		public function appendTransform(x:Number, y:Number, scaleX:Number, scaleY:Number, rotation:Number, skewX:Number, skewY:Number, regX:Number, regY:Number):Matrix2D
		{
			return null;
		}
		
		public function rotate(angle:Number):Matrix2D
		{
			return null;
		}
		
		public function skew(skewX:Number, skewY:Number):Matrix2D
		{
			return null;
		}
		
		public function scale(x:Number, y:Number):Matrix2D
		{
			return null;
		}
		
		public function translate(x:Number, y:Number):Matrix2D
		{
			return null;
		}
		
		public function identity():Matrix2D
		{
			return null;
		}
		
		public function invert():Matrix2D
		{
			return null;
		}
		
		public function isIdentity():Boolean
		{
			return null;
		}
		
		public function decompose(target:HTMLObjectElement):Matrix2D
		{
			return null;
		}
		
		public function reinitialize(a:Number, b:Number, c:Number, d:Number, tx:Number, ty:Number, alpha:Number, shadow:HTMLShadowElement, compositeOperation:String):Matrix2D
		{
			return null;
		}
		
		public function appendProperties(alpha:Number, shadow:HTMLShadowElement, compositeOperation:String):Matrix2D
		{
			return null;
		}
		
		public function prependProperties(alpha:Number, shadow:HTMLShadowElement, compositeOperation:String):Matrix2D
		{
			return null;
		}
		
		public function clone():Matrix2D
		{
			return null;
		}
		
		public function toString():String
		{
			return null;
		}
		
		protected function initialize(a:Number, b:Number, c:Number, d:Number, tx:Number, ty:Number):Matrix2D
		{
			return null;
		}
		
	}
}

