package randori.two
{
	[JavaScript(export="false")]
	internal class Base
	{
		public function Base()
		{
		}
		
		/**
		 * The id of the polygon. In the svg renderer this is the same number as the id attribute given to the corresponding node. 
		 * i.e: if polygon.id = 4 then document.querySelector('two-' + group.id) will return the corresponding svg node.
		 */
		public var id:int;
		/**
		 * A string representing the color for the stroke of the polygon. All valid css representations of color are accepted.
		 */
		public var stroke:String;
		/**
		 * A string representing the color for the area of the vertices. All valid css representations of color are accepted.
		 */
		public var fill:String;
		/**
		 * A number representing the opacity of the polygon. Use strictly for setting. Must be a number 0-1.
		 */
		public var opacity:Number;
		/**
		 * A string representing the type of stroke cap to render. All applicable values can be found on the w3c spec. <br/>
		 * Defaults to <code>TwoCaps.ROUND</code>.
		 * @see randori.two.constant.TwoCaps
		 */
		public var cap:String;
		/**
		 * A string representing the type of stroke join to render. All applicable values can be found on the w3c spec. <br/> 
		 * Defaults to <code>TwoJoins.ROUND</code>.
		 * @see randori.two.constant.TwoJoins
		 */
		public var join:String;
		/**
		 * A number representing the miter limit for the stroke. Defaults to 1.
		 */
		public var miter:int;
		/**
		 * A number that represents the rotation of the polygon in the drawing space, in radians.
		 */
		public var rotation:Number;
		/**
		 * A number that represents the uniform scale of the polygon in the drawing space.
		 */
		public var scale:Number;
		/**
		 * A reference to the Two.Group that contains this instance.
		 */
		public var parent:Group;
		/**
		 * A <code>TwoVector</code> that represents x, y translation of the polygon in the drawing space.
		 */
		public var translation:TwoVector;

		/**
		 * Returns an object with top, left, right, bottom, width, and height parameters representing the bounding box of the polygon.
		 * @return 
		 */
		public function getBoundingClientRect():Rectangle {
			return null;
		}

	}
}