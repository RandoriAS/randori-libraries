package randori.two
{
	[JavaScript(export="false",name="Two.Group")]
	/**
	 * This is a container object for two.js — it can hold shapes as well as other groups. At a technical level it can be 
	 * considered an empty transformation matrix. It is recommended to use two.makeGroup() in order to add groups to your 
	 * instance of two, but it's not necessary. Unless specified methods return their instance of Two.Group for the purpose 
	 * of chaining.
	 */
	public class Group extends Base
	{
		/**
		 * NB:  If you are constructing groups this way instead of <code>two.makeGroup()</code>, then don't forget to add the group to 
		 * the instance's scene, <code>two.add(group)</code>. 
		 * 
		 */
		public function Group() {
		}

		/**
		 * A map of all the children of the group.
		 */
		public var children:Object;
		
		public function clone():Group {
			return null;
		}
		
		/**
		 * Add one or many shapes / groups to the instance. Objects can be added as arguments, two.add(o1, o2, oN).
		 * @param objects
		 */
		public function add(...objects):void {
		}
		
		/**
		 * Remove one or many shapes / groups to the instance. Objects can be removed as arguments, two.remove(o1, o2, oN).
		 * @param objects
		 */
		public function remove(...objects):void {
		}

		/**
		 * Anchors all vertices around the centroid of the group. 
		 */
		public function center():Group {
			return null;
		}
		
		/**
		 * Adds the instance to a <code>Group</code>.
		 * @param group
		 * @return 
		 */
		public function addTo(group:Group):Group {
			return null;
		}
		
		/**
		 * Removes the fill.
		 * @return 
		 * 
		 */
		public function noFill():Group {
			return null;
		}
		
		/**
		 * Removes the stroke.
		 * @return 
		 * 
		 */
		public function noStroke():Group {
			return null;
		}

	}
}