package randori.backbone {

	import randori.webkit.dom.Element;
	import randori.jquery.JQuery;

	[JavaScript(export="false",name="Backbone.Events")]
	public class Events {

		/**
		 * <p id="Events-on">
		 *   <b class="header">on</b>
		 *   <code>object.on(event, callback, [context])</code>
		 *   <span class="alias">Alias: bind</span>
		 *   Bind a
		 *   <b>callback</b>
		 *   function to an object. The callback will be invoked
		 *       whenever the
		 *   <b>event</b>
		 *   is fired.
		 *       If you have a large number of different events on a page, the convention is to use colons to
		 *       namespace them:
		 *   <tt>"poll:start"</tt>
		 *   , or
		 *   <tt>"change:selection"</tt>
		 *   .
		 *       The event string may also be a space-delimited list of several events...
		 * </p>
		 * <pre>book.on("change:title change:author", ...);</pre>
		 */
		public function on(event:String, callback:Function, context:Object=null):void {
		}

		/**
		 * <p id="Events-off">
		 *   <b class="header">off</b>
		 *   <code>object.off([event], [callback], [context])</code>
		 *   <span class="alias">Alias: unbind</span>
		 *   Remove a previously-bound
		 *   <b>callback</b>
		 *   function from an object. If no
		 *   <b>context</b>
		 *   is specified, all of the versions of the callback with
		 *       different contexts will be removed. If no
		 *       callback is specified, all callbacks for the
		 *   <b>event</b>
		 *   will be
		 *       removed. If no event is specified, callbacks for
		 *   <i>all</i>
		 *   events
		 *       will be removed.
		 * </p>
		 * <pre>// Removes just the `onChange` callback.
		 * object.off("change", onChange);
		 * 
		 * // Removes all "change" callbacks.
		 * object.off("change");
		 * 
		 * // Removes the `onChange` callback for all events.
		 * object.off(null, onChange);
		 * 
		 * // Removes all callbacks for `context` for all events.
		 * object.off(null, null, context);
		 * 
		 * // Removes all callbacks on `object`.
		 * object.off();</pre>
		 */
		public function off(event:String=null, callback:Function=null, context:Object=null):void {
		}

		/**
		 * <p id="Events-trigger">
		 *   <b class="header">trigger</b>
		 *   <code>object.trigger(event, [*args])</code>
		 *   Trigger callbacks for the given
		 *   <b>event</b>
		 *   , or space-delimited list of events.
		 *       Subsequent arguments to
		 *   <b>trigger</b>
		 *   will be passed along to the
		 *       event callbacks.
		 * </p>
		 */
		public function trigger(event:String, ...rest):void {
		}

		/**
		 * <p id="Events-once">
		 *   <b class="header">once</b>
		 *   <code>object.once(event, callback, [context])</code>
		 *   Just like
		 *   <a href="http://backbonejs.org/#Events-on">on</a>
		 *   , but causes the bound callback to only
		 *       fire once before being removed. Handy for saying "the next time that X happens, do this".
		 * </p>
		 */
		public function once(event:String, callback:Function, context:Object=null):void {
		}

		/**
		 * <p id="Events-listenTo">
		 *   <b class="header">listenTo</b>
		 *   <code>object.listenTo(other, event, callback)</code>
		 *   Tell an
		 *   <b>object</b>
		 *   to listen to a particular event on an
		 *   <b>other</b>
		 *   object.
		 *       The advantage of using this form, instead of
		 *   <tt>other.on(event, callback)</tt>
		 *   ,
		 *       is that
		 *   <b>listenTo</b>
		 *   allows the
		 *   <b>object</b>
		 *   to keep track of the events,
		 *       and they can be removed all at once later on.
		 * </p>
		 * <pre>view.listenTo(model, 'change', view.render);</pre>
		 */
		public function listenTo(other:Object, event:String, callback:Function):void {
		}

		/**
		 * <p id="Events-stopListening">
		 *   <b class="header">stopListening</b>
		 *   <code>object.stopListening([other], [event], [callback])</code>
		 *   Tell an
		 *   <b>object</b>
		 *   to stop listening to events. Either call
		 *   <b>stopListening</b>
		 *   with no arguments to have the
		 *   <b>object</b>
		 *   remove
		 *       all of its
		 *   <a href="http://backbonejs.org/#Events-listenTo">registered</a>
		 *   callbacks ... or be more
		 *       precise by telling it to remove just the events it's listening to on a
		 *       specific object, or a specific event, or just a specific callback.
		 * </p>
		 * <pre>view.stopListening();
		 * 
		 * view.stopListening(model);</pre>
		 */
		public function stopListening(other:Object=null, event:String=null, callback:Function=null):void {
		}

		/**
		 * <p id="Events-listenToOnce">
		 *   <b class="header">listenToOnce</b>
		 *   <code>object.listenToOnce(other, event, callback)</code>
		 *   Just like
		 *   <a href="http://backbonejs.org/#Events-listenTo">listenTo</a>
		 *   , but causes the bound
		 *       callback to only fire once before being removed.
		 * </p>
		 */
		public function listenToOnce(other:Object, event:String, callback:Function):void {
		}
	}
}