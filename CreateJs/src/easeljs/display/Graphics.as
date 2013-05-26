package easeljs.display
{
	import randori.webkit.html.HTMLObjectElement;
	import randori.webkit.html.canvas.CanvasRenderingContext2D;
	import easeljs.display.Graphics;
	import easeljs.geom.Matrix2D;

	/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.Graphics")]

	public class Graphics
	{
		public static var BASE_64:HTMLObjectElement;
		public static var STROKE_CAPS_MAP:Array;
		public static var STROKE_JOINTS_MAP:Array;
		
		protected static var _ctx:CanvasRenderingContext2D;
		protected static var beginCmd:Command;
		protected static var fillCmd:Command;
		protected static var strokeCmd:Command;
		
		protected var _strokeInstructions:Array;
		protected var _strokeStyleInstructions:Array;
		protected var _ignoreScaleStroke:Boolean;
		protected var _fillInstructions:Array;
		protected var _instructions:Array;
		protected var _oldInstructions:Array;
		protected var _activeInstructions:Array;
		protected var _active:Boolean = false;
		protected var _dirty:Boolean = false;
		
		public function Graphics()
		{
		
		}
		
		public static function getRGB(r:Number, g:Number, b:Number, alpha:Number):String
		{
			return null;
		}
		
		public static function getHSL(hue:Number, saturation:Number, lightness:Number, alpha:Number):String
		{
			return null;
		}
		
		public function isEmpty():Boolean
		{
			return null;
		}
		
		public function draw(ctx:CanvasRenderingContext2D):void
		{
			
		}
		
		public function drawAsPath(ctx:CanvasRenderingContext2D):void
		{
			
		}
		
		public function moveTo(x:Number, y:Number):Graphics
		{
			return null;
		}
		
		public function lineTo(x:Number, y:Number):Graphics
		{
			return null;
		}
		
		public function arcTo(x1:Number, y1:Number, x2:Number, y2:Number, radius:Number):Graphics
		{
			return null;
		}
		
		public function arc(x:Number, y:Number, radius:Number, startAngle:Number, endAngle:Number, anticlockwise:Boolean):Graphics
		{
			return null;
		}
		
		public function quadraticCurveTo(cpx:Number, cpy:Number, x:Number, y:Number):Graphics
		{
			return null;
		}
		
		public function bezierCurveTo(cp1x:Number, cp1y:Number, cp2x:Number, cp2y:Number, x:Number, y:Number):Graphics
		{
			return null;
		}
		
		public function rect(x:Number, y:Number, w:Number, h:Number):Graphics
		{
			return null;
		}
		
		public function closePath():Graphics
		{
			return null;
		}
		
		public function clear():Graphics
		{
			return null;
		}
		
		public function beginFill(color:String):Graphics
		{
			return null;
		}
		
		public function beginLinearGradientFill(colors:Array, ratios:Array, x0:Number, y0:Number, x1:Number, y1:Number):Graphics
		{
			return null;
		}
		
		public function beginRadialGradientFill(colors:Array, ratios:Array, x0:Number, y0:Number, r0:Number, x1:Number, y1:Number, r1:Number):Graphics
		{
			return null;
		}
		
		public function beginBitmapFill(image:*, repetition:String, matrix:Matrix2D):Graphics
		{
			return null;
		}
		
		public function endFill():Graphics
		{
			return null;
		}
		
		public function setStrokeStyle(thickness:Number, caps:*=0, joints:*=0, miterLimit:Number=10, ignoreScale:Boolean=false):Graphics
		{
			return null;
		}
		
		public function beginStroke(color:String):Graphics
		{
			return null;
		}
		
		public function beginLinearGradientStroke(colors:Array, ratios:Array, x0:Number, y0:Number, x1:Number, y1:Number):Graphics
		{
			return null;
		}
		
		public function beginRadialGradientStroke(colors:Array, ratios:Array, x0:Number, y0:Number, r0:Number, x1:Number, y1:Number, r1:Number):Graphics
		{
			return null;
		}
		
		public function beginBitmapStroke(image:*, repetition:String='repeat'):Graphics
		{
			return null;
		}
		
		public function endStroke():Graphics
		{
			return null;
		}
		
		public function curveTo():void
		{
			
		}
		
		public function drawRect():void
		{
			
		}
		
		public function drawRoundRect(x:Number, y:Number, w:Number, h:Number, radius:Number):Graphics
		{
			return null;
		}
		
		public function drawRoundRectComplex(x:Number, y:Number, w:Number, h:Number, radiusTL:Number, radiusTR:Number, radiusBR:Number, radiusBL:Number):Graphics
		{
			return null;
		}
		
		public function drawCircle(x:Number, y:Number, radius:Number):Graphics
		{
			return null;
		}
		
		public function drawEllipse(x:Number, y:Number, w:Number, h:Number):Graphics
		{
			return null;
		}
		
		public function drawPolyStar(x:Number, y:Number, radius:Number, sides:Number, pointSize:Number, angle:Number):Graphics
		{
			return null;
		}
		
		public function decodePath(str:String):Graphics
		{
			return null;
		}
		
		public function clone():Graphics
		{
			return null;
		}
		
		public function toString():String
		{
			return null;
		}
		
		protected function initialize():void
		{
			
		}
		
		protected function mt():void
		{
			
		}
		
		protected function lt():void
		{
			
		}
		
		protected function at():void
		{
			
		}
		
		protected function bt():void
		{
			
		}
		
		protected function qt():void
		{
			
		}
		
		protected function a():void
		{
			
		}
		
		protected function r():void
		{
			
		}
		
		protected function cp():void
		{
			
		}
		
		protected function c():void
		{
			
		}
		
		protected function f():void
		{
			
		}
		
		protected function lf():void
		{
			
		}
		
		protected function rf():void
		{
			
		}
		
		protected function bf():void
		{
			
		}
		
		protected function ef():void
		{
			
		}
		
		protected function ss():void
		{
			
		}
		
		protected function s():void
		{
			
		}
		
		protected function ls():void
		{
			
		}
		
		protected function rs():void
		{
			
		}
		
		protected function bs():void
		{
			
		}
		
		protected function es():void
		{
			
		}
		
		protected function dr():void
		{
			
		}
		
		protected function rr():void
		{
			
		}
		
		protected function rc():void
		{
			
		}
		
		protected function dc():void
		{
			
		}
		
		protected function de():void
		{
			
		}
		
		protected function dp():void
		{
			
		}
		
		protected function p():void
		{
			
		}
		
		protected function _updateInstructions():void
		{
			
		}
		
		protected function _newPath():void
		{
			
		}
		
		protected function _setProp(name:String, value:String):void
		{
			
		}
		
	}
}

import randori.webkit.html.HTMLObjectElement;
class Command
{
	public function Command()
	{
	
	}
	
	protected function exec(scope:HTMLObjectElement):void
	{
		
	}
	
}
