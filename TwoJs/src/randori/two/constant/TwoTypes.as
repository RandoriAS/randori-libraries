package randori.two.constant
{
	
	[JavaScript(export="false")]
	/**
	 * A list of applicable types of rendering contexts. This is used to standardize the addresses of the various renderers. 
	 * The types include svg, canvas, and webgl. e.g: <code>TwoTypes.SVG</code>
	 * @see randori.two.Two
	 */
	public final class TwoTypes
	{
		/**
		 * 
		 */
		public static const WEBGL:String = 'WebGLRenderer';
		/**
		 * 
		 */
		public static const SVG:String = 'SVGRenderer';
		/**
		 * 
		 */
		public static const CANVAS:String = 'CanvasRenderer';
	}
}