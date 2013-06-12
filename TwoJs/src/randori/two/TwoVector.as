package randori.two
{
	[JavaScript(export="false",name="Two.Vector")]
	/**
	 * This is the atomic coordinate representation for two.js. A <code>TwoVector</code> is different and specific to two.js because its main 
	 * properties, x and y, trigger events which allow the renderers to efficiently change only when they need to. Unless specified 
	 * methods return their instance of <code>TwoVector</code> for the purpose of chaining.
	 */
	public class TwoVector
	{
		public function TwoVector(x:int, y:int)
		{
		}
		
		/**
		 * The x value of the vector.
		 */
		public var x:int;
		
		/**
		 * The y value of the vector.
		 */
		public var y:int;

		/**
		 * Set the x, y properties of the vector to the arguments x, y.
		 * @param x
		 * @param y
		 * @return 
		 * 
		 */
		public function set(x:int, y:int):TwoVector {
			return null;
		}
		
		/**
		 * Set the x, y properties of the vector from another vector, v.
		 * @param vector
		 * @return 
		 */
		public function copy(vector:TwoVector):TwoVector {
			return null;
		}
		
		/**
		 * Set the x, y properties of the vector to 0.
		 * @return 
		 */
		public function clear():TwoVector {
			return null;
		}
		
		/**
		 * Returns a new instance of a <code>TwoVector</code> with the same x, y values as the instance.
		 * @return 
		 * 
		 */
		public function clone():TwoVector {
			return null;
		}
		
		/**
		 * Add to vectors together. The sum of the x, y values will be set to the instance.
		 * @param vector1
		 * @param vector2
		 * @return 
		 */
		public function add(vector1:TwoVector, vector2:TwoVector):TwoVector {
			return null;
		}
		
		/**
		 * Add the x, y values of the instance to the values of another vector. Set the sum to the instance's values. 
		 * @param vector
		 * @return 
		 */
		public function addSelf(vector:TwoVector):TwoVector {
			return null;
		}
		
		/**
		 * Subtract two vectors. Set the difference to the instance.
		 * @param vector1
		 * @param vector2
		 * @return 
		 */
		public function sub(vector1:TwoVector, vector2:TwoVector):TwoVector {
			return null;
		}

		/**
		 * Subtract a vector, v, from the instance.
		 * @param vector
		 * @return 
		 */
		public function subSelf(vector:TwoVector):TwoVector {
			return null;
		}
		
		/**
		 * Multiply the x, y values of the instance by another vector's, v, x, y values.
		 * @param vector
		 * @return 
		 * 
		 */
		public function multiplySelf(vector:TwoVector):TwoVector {
			return null;
		}
		
		/**
		 * Multiply the x, y values of the instance by another number, value.
		 * @param value
		 * @return 
		 * 
		 */
		public function multiplyScalar(value:int):TwoVector {
			return null;
		}
		
		/**
		 * Divide the x, y values of the instance by another number, value.
		 * @param value
		 * @return 
		 * 
		 */
		public function divideScalar(value:int):TwoVector {
			return null;
		}
		
		/**
		 * Toggle the sign of the instance's x, y values.
		 * @return 
		 */
		public function negate():TwoVector {
			return null;
		}
		
		/**
		 * Return the dot product of the instance and a vector, v.
		 * @param vector
		 * @return 
		 */
		public function dot(vector:TwoVector):Number {
			return 0;
		}
		
		/**
		 * Return the length of the vector squared.
		 * @return 
		 */
		public function lengthSquared():Number {
			return 0;
		}

		/**
		 * Return the length of the vector.
		 * @return 
		 */
		public function length():Number {
			return 0;
		}
		
		/**
		 * Reduce the length of the vector to the unit circle.
		 * @return 
		 */
		public function normalize():TwoVector {
			return null;
		}
		
		/**
		 * Return the distance from the instance to another vector, v.
		 * @param vector
		 * @return 
		 */
		public function distanceTo(vector:TwoVector):Number {
			return 0;
		}
		
		/**
		 * Return the distance squared from the instance to another vector, v.
		 * @param vector
		 * @return 
		 */
		public function distanceToSquared(vector:TwoVector):Number {
			return 0;
		}
		
		/**
		 * Set the length of a vector to a specified distance, length.
		 * @param value
		 * @return 
		 */
		public function setLength(value:Number):TwoVector {
			return null;
		}
		
		/**
		 * Return a boolean representing whether or not the vectors are within 0.0001 of each other. 
		 * This fuzzy equality helps with Physics libraries.
		 * @param vector
		 * @return 
		 * 
		 */
		public function equals(vector:TwoVector):Boolean {
			return false;
		}
		
		/**
		 * Linear interpolation of the instance's current x, y values to the destination vector, v, by an amount, t. 
		 * Where t is a value 0-1.
		 * @param vector
		 * @param amount
		 * @return 
		 */
		public function lerp(vector:TwoVector, amount:Number):TwoVector {
			return null;
		}
		
		/**
		 * Returns a <code>Boolean</code> describing the length of the vector less than 0.0001.
		 * @return 
		 */
		public function isZero():Boolean {
			return false;
		}
	}
}