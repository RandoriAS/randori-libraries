package easeljs.display
{
	import randori.webkit.html.HTMLObjectElement;
	import easeljs.geom.Rectangle;
	import easeljs.display.SpriteSheet;

	/**
	*  @author createjs.com, ported by p.j.shand
	*  @version 0.6.1
	*  @see http://www.createjs.com/#!/EaselJS
	*/

	[JavaScript(export="false", name="createjs.SpriteSheet")]

	public class SpriteSheet
	{
		public var complete:Boolean;
		public var onComplete:Function;
		
		protected var _animations:*;
		protected var _frames:*;
		protected var _images:*;
		protected var _data:*;
		protected var _loadCount:*;
		protected var _frameHeight:*;
		protected var _frameWidth:*;
		protected var _numFrames:*;
		protected var _regX:*;
		protected var _regY:*;
		
		public function SpriteSheet(data:*)
		{
		
		}
		
		public function getNumFrames(animation:String):Number
		{
			return null;
		}
		
		public function getAnimations():Array
		{
			return null;
		}
		
		public function getAnimation(name:String):HTMLObjectElement
		{
			return null;
		}
		
		public function getFrame(frameIndex:Number):HTMLObjectElement
		{
			return null;
		}
		
		public function getFrameBounds(frameIndex:Number):Rectangle
		{
			return null;
		}
		
		public function toString():String
		{
			return null;
		}
		
		public function clone():SpriteSheet
		{
			return null;
		}
		
		protected function initialize(data:*):void
		{
			
		}
		
		protected function _handleImageLoad():void
		{
			
		}
		
		protected function _calculateFrames():void
		{
			
		}
		
	}
}

