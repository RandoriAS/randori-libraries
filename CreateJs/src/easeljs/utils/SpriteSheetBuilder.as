package easeljs.utils
{
	import easeljs.display.SpriteSheet;
	import easeljs.display.DisplayObject;
	import easeljs.geom.Rectangle;
	import randori.webkit.html.HTMLObjectElement;
	import easeljs.display.MovieClip;
	import randori.webkit.html.HTMLImageElement;

	/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.SpriteSheetBuilder")]

	public class SpriteSheetBuilder
	{
		public var maxWidth:Number = 2048;
		public var maxHeight:Number = 2048;
		public var spriteSheet:SpriteSheet;
		public var scale:Number = 1;
		public var padding:Number = 1;
		public var timeSlice:Number = 0.3;
		public var progress:Number = -1;
		public var onComplete:Function;
		public var onProgress:Function;
		
		protected var _frames:Array;
		protected var _animations:Array;
		protected var _data:Array;
		protected var _nextFrameIndex:Number;
		protected var _index:Number;
		protected var _timerID:Number;
		protected var _scale:Number;
		
		public function SpriteSheetBuilder()
		{
		
		}
		
		public function addFrame(source:DisplayObject, sourceRect:Rectangle, scale:Number=1, setupFunction:Function=null, setupParams:Array=null, setupScope:HTMLObjectElement=null):Number
		{
			return null;
		}
		
		public function addAnimation(name:String, frames:Array, next:String, frequency:Number):void
		{
			
		}
		
		public function addMovieClip(source:MovieClip, sourceRect:Rectangle, scale:Number=1):void
		{
			
		}
		
		public function build():SpriteSheet
		{
			return null;
		}
		
		public function buildAsync(timeSlice:Number):void
		{
			
		}
		
		public function stopAsync():void
		{
			
		}
		
		public function clone():void
		{
			
		}
		
		public function toString():String
		{
			return null;
		}
		
		protected function initialize():void
		{
			
		}
		
		protected function _startBuild():void
		{
			
		}
		
		protected function _getSize(size:Number, max:Number):Number
		{
			return null;
		}
		
		protected function _fillRow(frames:Number, y:Number, img:HTMLImageElement, dataFrames:Array, pad:Number):Number
		{
			return null;
		}
		
		protected function _endBuild():void
		{
			
		}
		
		protected function _run():void
		{
			
		}
		
		protected function _drawNext():Boolean
		{
			return null;
		}
		
	}
}

