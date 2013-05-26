package randori.backbone {

	import randori.webkit.dom.Element;
	import randori.jquery.JQuery;

	[JavaScript(export="false",name="Backbone.Model")]
	public class Model extends Events {

		/**
		 * <p id="Model-extend">
		 *   <b class="header">extend</b>
		 *   <code>Backbone.Model.extend(properties, [classProperties])</code>
		 *   To create a
		 *   <b>Model</b>
		 *   class of your own, you extend
		 *   <b>Backbone.Model</b>
		 *   and provide instance
		 *   <b>properties</b>
		 *   , as well as optional
		 *   <b>classProperties</b>
		 *   to be attached directly to the constructor function.
		 * </p>
		 */
		public function extend(properties:Object, classProperties:Object=null):Object {
			return undefined;
		}

		/**
		 * <p id="Model-constructor">
		 *   <b class="header">constructor / initialize</b>
		 *   <code>new Model([attributes], [options])</code>
		 *   When creating an instance of a model, you can pass in the initial values
		 *       of the
		 *   <b>attributes</b>
		 *   , which will be
		 *   <a href="http://backbonejs.org/#Model-set">set</a>
		 *   on the
		 *       model. If you define an
		 *   <b>initialize</b>
		 *   function, it will be invoked when
		 *       the model is created.
		 * </p>
		 * <pre>new Book({
		 *   title: "One Thousand and One Nights",
		 *   author: "Scheherazade"
		 * });</pre>
		 */
		public function Model(attributes:Object=null, options:Object=null) {
		}

		/**
		 * <p id="Model-get">
		 *   <b class="header">get</b>
		 *   <code>model.get(attribute)</code>
		 *   Get the current value of an attribute from the model. For example:
		 *   <tt>note.get("title")</tt>
		 * </p>
		 */
		public function get(attribute:Object):* {
			return undefined;
		}

		/**
		 * <p id="Model-set">
		 *   <b class="header">set</b>
		 *   <code>model.set(attributes, [options])</code>
		 *   Set a hash of attributes (one or many) on the model. If any of the attributes
		 *       change the model's state, a
		 *   <tt>"change"</tt>
		 *   event will be triggered on the model.
		 *       Change events for specific attributes are also triggered, and you can bind
		 *       to those as well, for example:
		 *   <tt>change:title</tt>
		 *   , and
		 *   <tt>change:content</tt>
		 *   .
		 *       You may also pass individual keys and values.
		 * </p>
		 * <pre>note.set({title: "March 20", content: "In his eyes she eclipses..."});
		 * 
		 * book.set("title", "A Scandal in Bohemia");</pre>
		 */
		public function set(attributes:Object, options:Object=null):void {
		}

		/**
		 * <p id="Model-escape">
		 *   <b class="header">escape</b>
		 *   <code>model.escape(attribute)</code>
		 *   Similar to
		 *   <a href="http://backbonejs.org/#Model-get">get</a>
		 *   , but returns the HTML-escaped version
		 *       of a model's attribute. If you're interpolating data from the model into
		 *       HTML, using
		 *   <b>escape</b>
		 *   to retrieve attributes will prevent
		 *   <a href="http://en.wikipedia.org/wiki/Cross-site_scripting">XSS</a>
		 *   attacks.
		 * </p>
		 */
		public function escape(attribute:Object):void {
		}

		/**
		 * <p id="Model-has">
		 *   <b class="header">has</b>
		 *   <code>model.has(attribute)</code>
		 *   Returns
		 *   <tt>true</tt>
		 *   if the attribute is set to a non-null or non-undefined
		 *       value.
		 * </p>
		 * <pre>if (note.has("title")) {
		 *   ...
		 * }</pre>
		 */
		public function has(attribute:Object):Boolean {
			return false;
		}

		/**
		 * <p id="Model-unset">
		 *   <b class="header">unset</b>
		 *   <code>model.unset(attribute, [options])</code>
		 *   Remove an attribute by deleting it from the internal attributes hash.
		 *       Fires a
		 *   <tt>"change"</tt>
		 *   event unless
		 *   <tt>silent</tt>
		 *   is passed as an option.
		 * </p>
		 */
		public function unset(attribute:Object, options:Object=null):void {
		}

		/**
		 * <p id="Model-clear">
		 *   <b class="header">clear</b>
		 *   <code>model.clear([options])</code>
		 *   Removes all attributes from the model, including the
		 *   <tt>id</tt>
		 *   attribute. Fires a
		 *   <tt>"change"</tt>
		 *   event unless
		 *   <tt>silent</tt>
		 *   is passed as an option.
		 * </p>
		 */
		public function clear(options:Object=null):void {
		}

		/**
		 * <p id="Model-id">
		 *   <b class="header">id</b>
		 *   <code>model.id</code>
		 *   A special property of models, the
		 *   <b>id</b>
		 *   is an arbitrary string
		 *       (integer id or UUID). If you set the
		 *   <b>id</b>
		 *   in the
		 *       attributes hash, it will be copied onto the model as a direct property.
		 *       Models can be retrieved by id from collections, and the id is used to generate
		 *       model URLs by default.
		 * </p>
		 */
		public var id:String;

		/**
		 * <p id="Model-idAttribute">
		 *   <b class="header">idAttribute</b>
		 *   <code>model.idAttribute</code>
		 *   A model's unique identifier is stored under the
		 *   <tt>id</tt>
		 *   attribute.
		 *       If you're directly communicating with a backend (CouchDB, MongoDB) that uses
		 *       a different unique key, you may set a Model's
		 *   <tt>idAttribute</tt>
		 *   to
		 *       transparently map from that key to
		 *   <tt>id</tt>
		 *   .
		 * </p>
		 */
		public var idAttribute:String;

		/**
		 * <p id="Model-cid">
		 *   <b class="header">cid</b>
		 *   <code>model.cid</code>
		 *   A special property of models, the
		 *   <b>cid</b>
		 *   or client id is a unique identifier
		 *       automatically assigned to all models when they're first created. Client ids
		 *       are handy when the model has not yet been saved to the server, and does not
		 *       yet have its eventual true
		 *   <b>id</b>
		 *   , but already needs to be visible in the UI.
		 * </p>
		 */
		public var cid:String;

		/**
		 * <p id="Model-attributes">
		 *   <b class="header">attributes</b>
		 *   <code>model.attributes</code>
		 *   The
		 *   <b>attributes</b>
		 *   property is the internal hash containing the model's
		 *       state — usually (but not necessarily) a form of the JSON object
		 *       representing the model data on the server. It's often a straightforward
		 *       serialization of a row from the database, but it could also be client-side
		 *       computed state.
		 * </p>
		 */
		public var attributes:Object;

		/**
		 * <p id="Model-changed">
		 *   <b class="header">changed</b>
		 *   <code>model.changed</code>
		 *   The
		 *   <b>changed</b>
		 *   property is the internal hash containing all the attributes
		 *       that have changed since the last
		 *   <tt>"change"</tt>
		 *   event was triggered.
		 *       Please do not update
		 *   <b>changed</b>
		 *   directly since its state is internally maintained
		 *       by
		 *   <a href="http://backbonejs.org/#Model-set">set</a>
		 *   .  A copy of
		 *   <b>changed</b>
		 *   can be acquired from
		 *   <a href="http://backbonejs.org/#Model-changedAttributes">changedAttributes</a>
		 *   .
		 * </p>
		 */
		public var changed:Boolean;

		/**
		 * <p id="Model-defaults">
		 *   <b class="header">defaults</b>
		 *   <code>model.defaults or model.defaults()</code>
		 *   The
		 *   <b>defaults</b>
		 *   hash (or function) can be used to specify the default
		 *       attributes for your model. When creating an instance of the model,
		 *       any unspecified attributes will be set to their default value.
		 * </p>
		 */
		public function defaults():Object {
			return undefined;
		}

		/**
		 * <p id="Model-toJSON">
		 *   <b class="header">toJSON</b>
		 *   <code>model.toJSON()</code>
		 *   Return a copy of the model's
		 *   <a href="http://backbonejs.org/#Model-attributes">attributes</a>
		 *   for JSON stringification.  This can be used for persistence,
		 *       serialization, or for augmentation before being sent to the server. The
		 *       name of this method is a bit confusing, as it doesn't actually return a
		 *       JSON string — but I'm afraid that it's the way that the
		 *   <a href="https://developer.mozilla.org/en/JSON#toJSON()_method">
		 *     JavaScript API for
		 *     <b>JSON.stringify</b>
		 *   </a>
		 *   works.
		 * </p>
		 */
		public function toJSON():Object {
			return undefined;
		}

		/**
		 * <p id="Model-sync">
		 *   <b class="header">sync</b>
		 *   <code>model.sync(method, model, [options])</code>
		 *   Uses
		 *   <a href="http://backbonejs.org/#Sync">Backbone.sync</a>
		 *   to persist the state of a model to
		 *       the server.  Can be overridden for custom behavior.
		 * </p>
		 */
		public function sync(method:Function, model:Object, options:Object=null):void {
		}

		/**
		 * <p id="Model-fetch">
		 *   <b class="header">fetch</b>
		 *   <code>model.fetch([options])</code>
		 *   Resets the model's state from the server by delegating to
		 *   <a href="http://backbonejs.org/#Sync">Backbone.sync</a>
		 *   . Returns a
		 *   <a href="http://api.jquery.com/jQuery.ajax/#jqXHR">jqXHR</a>
		 *   .
		 *       Useful if the model has never
		 *       been populated with data, or if you'd like to ensure that you have the
		 *       latest server state. A
		 *   <tt>"change"</tt>
		 *   event will be triggered if the
		 *       server's state differs from the current attributes. Accepts
		 *   <tt>success</tt>
		 *   and
		 *   <tt>error</tt>
		 *   callbacks in the options hash, which
		 *       are both passed
		 *   <tt>(model, response, options)</tt>
		 *   as arguments.
		 * </p>
		 * <pre>// Poll every 10 seconds to keep the channel model up-to-date.
		 * setInterval(function() {
		 *   channel.fetch();
		 * }, 10000);</pre>
		 */
		public function fetch(options:Object=null):void {
		}

		/**
		 * <p id="Model-save">
		 *   <b class="header">save</b>
		 *   <code>model.save([attributes], [options])</code>
		 *   Save a model to your database (or alternative persistence layer),
		 *       by delegating to
		 *   <a href="http://backbonejs.org/#Sync">Backbone.sync</a>
		 *   .  Returns a
		 *   <a href="http://api.jquery.com/jQuery.ajax/#jqXHR">jqXHR</a>
		 *   if
		 *       validation is successful and
		 *   <tt>false</tt>
		 *   otherwise. The
		 *   <b>attributes</b>
		 *   hash (as in
		 *   <a href="http://backbonejs.org/#Model-set">set</a>
		 *   ) should contain the attributes
		 *       you'd like to change — keys that aren't mentioned won't be altered — but,
		 *       a
		 *   <i>complete representation</i>
		 *   of the resource will be sent to the server.
		 *       As with
		 *   <tt>set</tt>
		 *   , you may pass individual keys and values instead of a hash.
		 *       If the model has a
		 *   <a href="http://backbonejs.org/#Model-validate">validate</a>
		 *   method, and validation fails, the model will not be saved. If the model
		 *   <a href="http://backbonejs.org/#Model-isNew">isNew</a>
		 *   , the save will be a
		 *   <tt>"create"</tt>
		 *   (HTTP
		 *   <tt>POST</tt>
		 *   ), if the model already
		 *       exists on the server, the save will be an
		 *   <tt>"update"</tt>
		 *   (HTTP
		 *   <tt>PUT</tt>
		 *   ).
		 * </p>
		 */
		public function save(attributes:Object=null, options:Object=null):void {
		}

		/**
		 * <p id="Model-destroy">
		 *   <b class="header">destroy</b>
		 *   <code>model.destroy([options])</code>
		 *   Destroys the model on the server by delegating an HTTP
		 *   <tt>DELETE</tt>
		 *   request to
		 *   <a href="http://backbonejs.org/#Sync">Backbone.sync</a>
		 *   . Returns a
		 *   <a href="http://api.jquery.com/jQuery.ajax/#jqXHR">jqXHR</a>
		 *   object, or
		 *   <tt>false</tt>
		 *   if the model
		 *   <a href="http://backbonejs.org/#Model-isNew">isNew</a>
		 *   . Accepts
		 *   <tt>success</tt>
		 *   and
		 *   <tt>error</tt>
		 *   callbacks in the options hash, which
		 *       are passed
		 *   <tt>(model, response, options)</tt>
		 *   and
		 *   <tt>(model, xhr, options)</tt>
		 *   as arguments, respectively.
		 *       Triggers a
		 *   <tt>"destroy"</tt>
		 *   event on the model, which will bubble up
		 *       through any collections that contain it, a
		 *   <tt>"request"</tt>
		 *   event as it
		 *       begins the Ajax request to the server, and a
		 *   <tt>"sync"</tt>
		 *   event, after
		 *       the server has successfully acknowledged the model's deletion. Pass
		 *   <tt>{wait: true}</tt>
		 *   if you'd like to wait for the server to respond
		 *       before removing the model from the collection.
		 * </p>
		 * <pre>book.destroy({success: function(model, response) {
		 *   ...
		 * }});</pre>
		 */
		public function destroy(options:Object=null):void {
		}

		/**
		 * <p id="Model-validate">
		 *   <b class="header">validate</b>
		 *   <code>model.validate(attributes, options)</code>
		 *   This method is left undefined, and you're encouraged to override it with
		 *       your custom validation logic, if you have any that can be performed
		 *       in JavaScript. By default
		 *   <b>validate</b>
		 *   is called before
		 *   <tt>save</tt>
		 *   , but can also be called before
		 *   <tt>set</tt>
		 *   if
		 *   <tt>{validate:true}</tt>
		 *   is passed. The
		 *   <b>validate</b>
		 *   method is passed
		 *       the model attributes, as well as the options from
		 *   <tt>set</tt>
		 *   or
		 *   <tt>save</tt>
		 *   .
		 *       If the attributes are valid, don't return anything from
		 *   <b>validate</b>
		 *   ;
		 *       if they are invalid, return an error of your choosing. It
		 *       can be as simple as a string error message to be displayed, or a complete
		 *       error object that describes the error programmatically. If
		 *   <b>validate</b>
		 *   returns an error,
		 *   <tt>save</tt>
		 *   will not continue, and the
		 *       model attributes will not be modified on the server.
		 *       Failed validations trigger an
		 *   <tt>"invalid"</tt>
		 *   event, and set the
		 *   <tt>validationError</tt>
		 *   property on the model with the value returned by
		 *       this method.
		 * </p>
		 */
		public function validate(attributes:Object, options:Object):* {
			return undefined;
		}

		/**
		 * <p id="Model-validationError">
		 *   <b class="header">validationError</b>
		 *   <code>model.validationError</code>
		 *   The value returned by
		 *   <a href="http://backbonejs.org/#Model-validate">validate</a>
		 *   during the last failed validation.
		 * </p>
		 */
		public var validationError:*;

		/**
		 * <p id="Model-isValid">
		 *   <b class="header">isValid</b>
		 *   <code>model.isValid</code>
		 *   Run
		 *   <a href="http://backbonejs.org/#Model-validate">validate</a>
		 *   to check the model state.
		 * </p>
		 */
		public var isValid:Boolean;

		/**
		 * <p id="Model-url">
		 *   <b class="header">url</b>
		 *   <code>model.url()</code>
		 *   Returns the relative URL where the model's resource would be located on
		 *       the server. If your models are located somewhere else, override this method
		 *       with the correct logic. Generates URLs of the form:
		 *   <tt>"[collection.url]/[id]"</tt>
		 *   by default, but you may override by specifying an explicit
		 *   <tt>urlRoot</tt>
		 *   if the model's collection shouldn't be taken into account. You can also
		 *       pass in the model's
		 *   <tt>url</tt>
		 *   as an option when instantiating it.
		 * </p>
		 */
		public function url():String {
			return undefined;
		}

		/**
		 * <p id="Model-urlRoot">
		 *   <b class="header">urlRoot</b>
		 *   <code>model.urlRoot or model.urlRoot()</code>
		 *   Specify a
		 *   <tt>urlRoot</tt>
		 *   if you're using a model
		 *   <i>outside</i>
		 *   of a collection,
		 *       to enable the default
		 *   <a href="http://backbonejs.org/#Model-url">url</a>
		 *   function to generate
		 *       URLs based on the model id.
		 *   <tt>"[urlRoot]/id"</tt>
		 *   Normally, you won't need to define this.
		 *       Note that
		 *   <tt>urlRoot</tt>
		 *   may also be a function.
		 * </p>
		 */
		public function urlRoot():* {
			return undefined;
		}

		/**
		 * <p id="Model-parse">
		 *   <b class="header">parse</b>
		 *   <code>model.parse(response, options)</code>
		 *   <b>parse</b>
		 *   is called whenever a model's data is returned by the
		 *       server, in
		 *   <a href="http://backbonejs.org/#Model-fetch">fetch</a>
		 *   , and
		 *   <a href="http://backbonejs.org/#Model-save">save</a>
		 *   .
		 *       The function is passed the raw
		 *   <tt>response</tt>
		 *   object, and should return
		 *       the attributes hash to be
		 *   <a href="http://backbonejs.org/#Model-set">set</a>
		 *   on the model. The
		 *       default implementation is a no-op, simply passing through the JSON response.
		 *       Override this if you need to work with a preexisting API, or better namespace
		 *       your responses.
		 * </p>
		 */
		public function parse(response:Object, options:Object):Object {
			return undefined;
		}

		/**
		 * <p id="Model-clone">
		 *   <b class="header">clone</b>
		 *   <code>model.clone()</code>
		 *   Returns a new instance of the model with identical attributes.
		 * </p>
		 */
		public function clone():Model {
			return undefined;
		}

		/**
		 * <p id="Model-isNew">
		 *   <b class="header">isNew</b>
		 *   <code>model.isNew()</code>
		 *   Has this model been saved to the server yet? If the model does not yet have
		 *       an
		 *   <tt>id</tt>
		 *   , it is considered to be new.
		 * </p>
		 */
		public function isNew():Boolean {
			return false;
		}

		/**
		 * <p id="Model-hasChanged">
		 *   <b class="header">hasChanged</b>
		 *   <code>model.hasChanged([attribute])</code>
		 *   Has the model changed since the last
		 *   <tt>"change"</tt>
		 *   event? If an
		 *   <b>attribute</b>
		 *   is passed, returns
		 *   <tt>true</tt>
		 *   if that specific attribute has changed.
		 * </p>
		 */
		public function hasChanged(attribute:Object=null):Boolean {
			return false;
		}

		/**
		 * <p id="Model-changedAttributes">
		 *   <b class="header">changedAttributes</b>
		 *   <code>model.changedAttributes([attributes])</code>
		 *   Retrieve a hash of only the model's attributes that have changed, or
		 *   <tt>false</tt>
		 *   if there are none. Optionally, an external
		 *   <b>attributes</b>
		 *   hash can be passed in, returning the attributes in that
		 *       hash which differ from the model. This can be used to figure out which
		 *       portions of a view should be updated, or what calls
		 *       need to be made to sync the changes to the server.
		 * </p>
		 */
		public function changedAttributes(attributes:Object=null):Object {
			return undefined;
		}

		/**
		 * <p id="Model-previous">
		 *   <b class="header">previous</b>
		 *   <code>model.previous(attribute)</code>
		 *   During a
		 *   <tt>"change"</tt>
		 *   event, this method can be used to get the
		 *       previous value of a changed attribute.
		 * </p>
		 */
		public function previous(attribute:Object):* {
			return undefined;
		}

		/**
		 * <p id="Model-previousAttributes">
		 *   <b class="header">previousAttributes</b>
		 *   <code>model.previousAttributes()</code>
		 *   Return a copy of the model's previous attributes. Useful for getting a
		 *       diff between versions of a model, or getting back to a valid state after
		 *       an error occurs.
		 * </p>
		 */
		public function previousAttributes():Object {
			return undefined;
		}
	}
}