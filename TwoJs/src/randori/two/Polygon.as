package randori.two
{
	[JavaScript(export="false",name="Two.Polygon")]
	/**
	 * This is the base class for creating all drawable shapes in two.js. Unless specified methods return their 
	 * instance of <code>Polygon</code> for the purpose of chaining.
	 */
	public class Polygon extends Base
	{
		/**
		 * A polygon takes an array of vertices which are made up of <code>TwoVector</code>s. This is essential for the two-way databinding. 
		 * It then takes two booleans, closed and curved which delineate whether the shape should be closed (lacking endpoints) 
		 * and whether the shape should calculate curves or straight lines between the vertices.<br/>
 		 * If you are constructing groups this way instead of <code>Two.makePolygon()</code>, then don't forget to add the group to the instance's 
		 * scene, <code>two.add(group)</code>.
		 * @param vertices
		 * @param closed
		 * @param curved
		 */
		public function Polygon(vertices:Vector.<Object>, closed:Boolean, curved:Boolean) {
		}
		
		/**
		 * A number representing the thickness the polygon's strokes. Must be a positive number.
		 */
		public var linewidth:int;
		/**
		 * An array of <code>TwoVector</code>s that is two-way databound. Individual vertices may be manipulated, 
		 * however it is imperative that the array itself does not get manipulated.
		 */
		public var vertices:Vector.<TwoVector>;
		/**
		 * <code>Boolean</code> that describes whether the polygon is closed or not.
		 */
		public var closed:Boolean;
		/**
		 * <code>Boolean</code> that describes whether the polygon is curved or not.
		 */
		public var curved:Boolean;
		/**
		 * A number, 0-1, that is mapped to the layout and order of vertices. It represents which of the vertices from 
		 * beginning to end should start the shape. Exceedingly helpful for animating strokes. Defaults to 0.
		 */
		public var beginning:Number;
		/**
		 * A number, 0-1, that is mapped to the layout and order of vertices. It represents which of the vertices from 
		 * beginning to end should end the shape. Exceedingly helpful for animating strokes. Defaults to 1.
		 */
		public var ending:Number;
		
		/**
		 * Returns a new instance of a <code>Polygon</code> with the same settings.
		 * @return 
		 * 
		 */
		public function clone():Polygon {
			return null;
		}
		
		/**
		 * Anchors all vertices around the centroid of the group. 
		 */
		public function center():Polygon {
			return null;
		}
		
		/**
		 * Adds the instance to a <code>Group</code>.
		 * @param group
		 * @return 
		 */
		public function addTo(group:Group):Polygon {
			return null;
		}
		
		/**
		 * Removes the fill.
		 * @return 
		 * 
		 */
		public function noFill():Polygon {
			return null;
		}
		
		/**
		 * Removes the stroke.
		 * @return 
		 * 
		 */
		public function noStroke():Polygon {
			return null;
		}
		
		/**
		 * If added to a two.scene this method removes itself from it.
		 */
		public function remove():Polygon {
			return null;
		}
		
	}
}