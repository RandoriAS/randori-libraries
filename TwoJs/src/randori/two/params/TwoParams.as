package randori.two.params
{

	[JavaScript(export="false",mode="json")]
	/**
	 * Describes the parameters used to intitialize a <code>Two</code> instance with.
	 * @see randori.two.Two
	 */
	public class TwoParams
	{
		public function TwoParams(type:String, width:int, height:int, autostart:Boolean, fullscreen:Boolean)
		{
		}
		
		/**
		 * Set the type of renderer for the instance: svg, webgl, canvas, etc.. 
		 * Applicable types are carried within <code>TwoTypes</code>. Default type is <code>TwoTypes.SVG</code>.
		 * @see randori.two.constant.TwoTypes
		 */
		public var type:String;
		/**
		 * Set the width of the drawing space. Disregarded if <code>fullscreen</code> is set to <code>true</code>. Default width is 640 pixels
		 */
		public var width:int;
		/**
		 * Set the height of the drawing space. Disregarded if <code>fullscreen</code> is set to <code>true</code>. Default height is 480 pixels.
		 */
		public var height:int;
		/**
		 * A <code>Boolean</code> to automatically add the instance to draw on <code>requestAnimationFrame</code>. This is a convenient substitute so you don't have to call <code>play()</code>.
		 */
		public var autostart:Boolean;
		/**
		 * A <code>Boolean</code> to set the drawing space of the instance to be fullscreen or not. If set to true then width and height parameters will not be respected.
		 */
		public var fullscreen:Boolean;
	}
}
