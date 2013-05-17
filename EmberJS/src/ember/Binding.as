package ember {

	import randori.webkit.dom.Element;

	[JavaScript(export="false",name="ember.Binding")]
	public class Binding {
		/**
		 * <p>Attempts to connect this binding instance so that it can receive and relay
		 * changes. This method will raise an exception if you have not set the
		 * from/to properties yet.</p>
		 */
		public function connect(obj:Object):Object {
			return null;
		}

		/**
		 * <p>This copies the Binding so it can be connected to another object.</p>
		 */
		public function copy():Object {
			return null;
		}

		/**
		 * <p>Disconnects the binding instance. Changes will no longer be relayed. You
		 * will not usually need to call this method.</p>
		 */
		public function disconnect(obj:Object):Object {
			return null;
		}

		/**
		 * <p>See {{#crossLink "Ember.Binding/from"}}{{/crossLink}}</p>
		 */
		public static function from():void {
		}

		/**
		 * <p>
		 *   Creates a new Binding instance and makes it apply in a single direction.
		 * A one-way binding will relay changes on the
		 *   <code>from</code>
		 *   side object (supplied
		 * as the
		 *   <code>from</code>
		 *   argument) the
		 *   <code>to</code>
		 *   side, but not the other way around.
		 * This means that if you change the "to" side directly, the "from" side may have
		 * a different value.
		 * </p>
		 * <p>See {{#crossLink "Binding/oneWay"}}{{/crossLink}}</p>
		 */
		public function oneWay(from:String, flag:Boolean):void {
		}

		/**
		 * <p>See {{#crossLink "Ember.Binding/to"}}{{/crossLink}}</p>
		 */
		public static function to():void {
		}

		public function toString():Object {
			return null;
		}

	}
}