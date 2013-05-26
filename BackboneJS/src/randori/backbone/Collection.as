package randori.backbone {

	import randori.webkit.dom.Element;
	import randori.jquery.JQuery;

	[JavaScript(export="false",name="Backbone.Collection")]
	public class Collection {

		/**
		 * <p id="Collection-extend">
		 *   <b class="header">extend</b>
		 *   <code>Backbone.Collection.extend(properties, [classProperties])</code>
		 *   To create a
		 *   <b>Collection</b>
		 *   class of your own, extend
		 *   <b>Backbone.Collection</b>
		 *   ,
		 *       providing instance
		 *   <b>properties</b>
		 *   , as well as optional
		 *   <b>classProperties</b>
		 *   to be attached
		 *       directly to the collection's constructor function.
		 * </p>
		 */
		public function extend(properties:Object, classProperties:Object=null):Object {
			return undefined;
		}

		/**
		 * <p id="Collection-model">
		 *   <b class="header">model</b>
		 *   <code>collection.model</code>
		 *   Override this property to specify the model class that the collection
		 *       contains. If defined, you can pass raw attributes objects (and arrays) to
		 *   <a href="http://backbonejs.org/#Collection-add">add</a>
		 *   ,
		 *   <a href="http://backbonejs.org/#Collection-create">create</a>
		 *   ,
		 *       and
		 *   <a href="http://backbonejs.org/#Collection-reset">reset</a>
		 *   , and the attributes will be
		 *       converted into a model of the proper type.
		 * </p>
		 * <pre>var Library = Backbone.Collection.extend({
		 *   model: Book
		 * });</pre>
		 */
		public var model:Object;

		/**
		 * <p id="Collection-constructor">
		 *   <b class="header">constructor / initialize</b>
		 *   <code>new Collection([models], [options])</code>
		 *   When creating a Collection, you may choose to pass in the initial array
		 *       of
		 *   <b>models</b>
		 *   .  The collection's
		 *   <a href="http://backbonejs.org/#Collection-comparator">comparator</a>
		 *   may be included as an option. Passing
		 *   <tt>false</tt>
		 *   as the
		 *       comparator option will prevent sorting. If you define an
		 *   <b>initialize</b>
		 *   function, it will be invoked when the collection is
		 *       created. There are several options that, if provided, are attached to the
		 *       collection directly:
		 *   <tt>url</tt>
		 *   ,
		 *   <tt>model</tt>
		 *   and
		 *   <tt>comparator</tt>
		 *   .
		 * </p>
		 * <pre>var tabs = new TabSet([tab1, tab2, tab3]);
		 * var spaces = new Backbone.Collection([], {
		 *   model: Space,
		 *   url: '/spaces'
		 * });</pre>
		 */
		public function Collection(models:Array=null, options:Object=null) {
		}

		/**
		 * <p id="Collection-models">
		 *   <b class="header">models</b>
		 *   <code>collection.models</code>
		 *   Raw access to the JavaScript array of models inside of the collection. Usually you'll
		 *       want to use
		 *   <tt>get</tt>
		 *   ,
		 *   <tt>at</tt>
		 *   , or the
		 *   <b>Underscore methods</b>
		 *   to access model objects, but occasionally a direct reference to the array
		 *       is desired.
		 * </p>
		 */
		public var models:Array;

		/**
		 * <p id="Collection-toJSON">
		 *   <b class="header">toJSON</b>
		 *   <code>collection.toJSON()</code>
		 *   Return an array containing the attributes hash of each model in the
		 *       collection. This can be used to serialize and persist the
		 *       collection as a whole. The name of this method is a bit confusing, because
		 *       it conforms to
		 *   <a href="https://developer.mozilla.org/en/JSON#toJSON()_method">JavaScript's JSON API</a>
		 *   .
		 * </p>
		 */
		public function toJSON():Object {
			return undefined;
		}

		/**
		 * <p id="Collection-sync">
		 *   <b class="header">sync</b>
		 *   <code>collection.sync(method, collection, [options])</code>
		 *   Uses
		 *   <a href="http://backbonejs.org/#Sync">Backbone.sync</a>
		 *   to persist the state of a
		 *       collection to the server.  Can be overridden for custom behavior.
		 * </p>
		 */
		public function sync(method:Function, collection:Collection, options:Object=null):void {
		}

		/**
		 * <p id="Collection-add">
		 *   <b class="header">add</b>
		 *   <code>collection.add(models, [options])</code>
		 *   Add a model (or an array of models) to the collection, firing an
		 *   <tt>"add"</tt>
		 *   event. If a
		 *   <a href="http://backbonejs.org/#Collection-model">model</a>
		 *   property is defined, you may also pass
		 *       raw attributes objects, and have them be vivified as instances of the model.
		 *       Pass
		 *   <tt>{at: index}</tt>
		 *   to splice the model into the collection at the
		 *       specified
		 *   <tt>index</tt>
		 *   . If you're adding models to the collection that are
		 *   <i>already</i>
		 *   in the collection, they'll be ignored, unless you pass
		 *   <tt>{merge: true}</tt>
		 *   , in which case their attributes will be merged
		 *       into the corresponding models, firing any appropriate
		 *   <tt>"change"</tt>
		 *   events.
		 * </p>
		 */
		public function add(models:Array, options:Object=null):void {
		}

		/**
		 * <p id="Collection-remove">
		 *   <b class="header">remove</b>
		 *   <code>collection.remove(models, [options])</code>
		 *   Remove a model (or an array of models) from the collection. Fires a
		 *   <tt>"remove"</tt>
		 *   event, which you can use
		 *   <tt>silent</tt>
		 *   to suppress.
		 *       The model's index before removal is available to listeners as
		 *   <tt>options.index</tt>
		 *   .
		 * </p>
		 */
		public function remove(models:Array, options:Object=null):void {
		}

		/**
		 * <p id="Collection-reset">
		 *   <b class="header">reset</b>
		 *   <code>collection.reset([models], [options])</code>
		 *   Adding and removing models one at a time is all well and good, but sometimes
		 *       you have so many models to change that you'd rather just update the collection
		 *       in bulk. Use
		 *   <b>reset</b>
		 *   to replace a collection with a new list
		 *       of models (or attribute hashes), triggering a single
		 *   <tt>"reset"</tt>
		 *   event
		 *       at the end. For convenience, within a
		 *   <tt>"reset"</tt>
		 *   event, the list of any
		 *       previous models is available as
		 *   <tt>options.previousModels</tt>
		 *   .
		 * </p>
		 */
		public function reset(models:Array=null, options:Object=null):void {
		}

		/**
		 * <p id="Collection-set">
		 *   <b class="header">set</b>
		 *   <code>collection.set(models, [options])</code>
		 *   The
		 *   <b>set</b>
		 *   method performs a "smart" update of the collection
		 *       with the passed list of models. If a model in the list isn't yet in the
		 *       collection it will be added; if the model is already in the collection
		 *       its attributes will be merged; and if the collection contains any models that
		 *   <i>aren't</i>
		 *   present in the list, they'll be removed. All of the appropriate
		 *   <tt>"add"</tt>
		 *   ,
		 *   <tt>"remove"</tt>
		 *   , and
		 *   <tt>"change"</tt>
		 *   events are fired
		 *       as this happens. If you'd like to customize the behavior, you can disable
		 *       it with options:
		 *   <tt>{add: false}</tt>
		 *   ,
		 *   <tt>{remove: false}</tt>
		 *   , or
		 *   <tt>{merge: false}</tt>
		 *   .
		 * </p>
		 * <pre>var vanHalen = new Collection([eddie, alex, stone, roth]);
		 * 
		 * vanHalen.set([eddie, alex, stone, hagar]);
		 * 
		 * // Fires a "remove" event for roth, and an "add" event for "hagar".
		 * // Updates any of stone, alex, and eddie's attributes that may have
		 * // changed over the years.</pre>
		 */
		public function set(models:Array, options:Object=null):void {
		}

		/**
		 * <p id="Collection-get">
		 *   <b class="header">get</b>
		 *   <code>collection.get(id)</code>
		 *   Get a model from a collection, specified by an
		 *   <a href="http://backbonejs.org/#Model-id">id</a>
		 *   ,
		 *       a
		 *   <a href="http://backbonejs.org/#Model-cid">cid</a>
		 *   , or by passing in a
		 *   <b>model</b>
		 *   .
		 * </p>
		 * <pre>var book = library.get(110);</pre>
		 */
		public function get(id:Object):* {
			return undefined;
		}

		/**
		 * <p id="Collection-at">
		 *   <b class="header">at</b>
		 *   <code>collection.at(index)</code>
		 *   Get a model from a collection, specified by index. Useful if your collection
		 *       is sorted, and if your collection isn't sorted,
		 *   <b>at</b>
		 *   will still
		 *       retrieve models in insertion order.
		 * </p>
		 */
		public function at(index:int):void {
		}

		/**
		 * <p id="Collection-push">
		 *   <b class="header">push</b>
		 *   <code>collection.push(model, [options])</code>
		 *   Add a model at the end of a collection. Takes the same options as
		 *   <a href="http://backbonejs.org/#Collection-add">add</a>
		 *   .
		 * </p>
		 */
		public function push(model:Object, options:Object=null):void {
		}

		/**
		 * <p id="Collection-pop">
		 *   <b class="header">pop</b>
		 *   <code>collection.pop([options])</code>
		 *   Remove and return the last model from a collection. Takes the same options as
		 *   <a href="http://backbonejs.org/#Collection-remove">remove</a>
		 *   .
		 * </p>
		 */
		public function pop(options:Object=null):void {
		}

		/**
		 * <p id="Collection-unshift">
		 *   <b class="header">unshift</b>
		 *   <code>collection.unshift(model, [options])</code>
		 *   Add a model at the beginning of a collection. Takes the same options as
		 *   <a href="http://backbonejs.org/#Collection-add">add</a>
		 *   .
		 * </p>
		 */
		public function unshift(model:Object, options:Object=null):void {
		}

		/**
		 * <p id="Collection-shift">
		 *   <b class="header">shift</b>
		 *   <code>collection.shift([options])</code>
		 *   Remove and return the first model from a collection. Takes the same options as
		 *   <a href="http://backbonejs.org/#Collection-remove">remove</a>
		 *   .
		 * </p>
		 */
		public function shift(options:Object=null):void {
		}

		/**
		 * <p id="Collection-slice">
		 *   <b class="header">slice</b>
		 *   <code>collection.slice(begin, end)</code>
		 *   Return a shallow copy of this collection's models, using the same options as
		 *       native
		 *   <a href="https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Array/slice">Array#slice</a>
		 *   .
		 * </p>
		 */
		public function slice(begin:int, end:int):void {
		}

		/**
		 * <p id="Collection-length">
		 *   <b class="header">length</b>
		 *   <code>collection.length</code>
		 *   Like an array, a Collection maintains a
		 *   <tt>length</tt>
		 *   property, counting
		 *       the number of models it contains.
		 * </p>
		 */
		public var length:int;

		/**
		 * <p id="Collection-comparator">
		 *   <b class="header">comparator</b>
		 *   <code>collection.comparator</code>
		 *   By default there is no
		 *   <b>comparator</b>
		 *   for a collection.
		 *       If you define a comparator, it will be used to maintain
		 *       the collection in sorted order. This means that as models are added,
		 *       they are inserted at the correct index in
		 *   <tt>collection.models</tt>
		 *   .
		 *       A comparator can be defined as a
		 *   <a href="http://underscorejs.org/#sortBy">sortBy</a>
		 *   (pass a function that takes a single argument),
		 *       as a
		 *   <a href="https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Array/sort">sort</a>
		 *   (pass a comparator function that expects two arguments),
		 *       or as a string indicating the attribute to sort by.
		 * </p>
		 */
		public var comparator:*;

		/**
		 * <p id="Collection-sort">
		 *   <b class="header">sort</b>
		 *   <code>collection.sort([options])</code>
		 *   Force a collection to re-sort itself. You don't need to call this under
		 *       normal circumstances, as a collection with a
		 *   <a href="http://backbonejs.org/#Collection-comparator">comparator</a>
		 *   will sort itself whenever a model is added. To disable sorting when adding
		 *       a model, pass
		 *   <tt>{sort: false}</tt>
		 *   to
		 *   <tt>add</tt>
		 *   . Calling
		 *   <b>sort</b>
		 *   triggers a
		 *   <tt>"sort"</tt>
		 *   event on the collection.
		 * </p>
		 */
		public function sort(options:Object=null):void {
		}

		/**
		 * <p id="Collection-pluck">
		 *   <b class="header">pluck</b>
		 *   <code>collection.pluck(attribute)</code>
		 *   Pluck an attribute from each model in the collection. Equivalent to calling
		 *   <tt>map</tt>
		 *   and returning a single attribute from the iterator.
		 * </p>
		 */
		public function pluck(attribute:Object):void {
		}

		/**
		 * <p id="Collection-where">
		 *   <b class="header">where</b>
		 *   <code>collection.where(attributes)</code>
		 *   Return an array of all the models in a collection that match the
		 *       passed
		 *   <b>attributes</b>
		 *   . Useful for simple cases of
		 *   <tt>filter</tt>
		 *   .
		 * </p>
		 */
		public function where(attributes:Object):Array {
			return undefined;
		}

		/**
		 * <p id="Collection-findWhere">
		 *   <b class="header">findWhere</b>
		 *   <code>collection.findWhere(attributes)</code>
		 *   Just like
		 *   <a href="http://backbonejs.org/#Collection-where">where</a>
		 *   , but directly returns only
		 *       the first model in the collection that matches the passed
		 *   <b>attributes</b>
		 *   .
		 * </p>
		 */
		public function findWhere(attributes:Object):Array {
			return undefined;
		}

		/**
		 * <p id="Collection-url">
		 *   <b class="header">url</b>
		 *   <code>collection.url or collection.url()</code>
		 *   Set the
		 *   <b>url</b>
		 *   property (or function) on a collection to reference
		 *       its location on the server. Models within the collection will use
		 *   <b>url</b>
		 *   to construct URLs of their own.
		 * </p>
		 * <pre>var Notes = Backbone.Collection.extend({
		 *   url: '/notes'
		 * });
		 * 
		 * // Or, something more sophisticated:
		 * 
		 * var Notes = Backbone.Collection.extend({
		 *   url: function() {
		 *     return this.document.url() + '/notes';
		 *   }
		 * });</pre>
		 */
		public function url():String {
			return undefined;
		}

		/**
		 * <p id="Collection-parse">
		 *   <b class="header">parse</b>
		 *   <code>collection.parse(response, options)</code>
		 *   <b>parse</b>
		 *   is called by Backbone whenever a collection's models are
		 *       returned by the server, in
		 *   <a href="http://backbonejs.org/#Collection-fetch">fetch</a>
		 *   .
		 *       The function is passed the raw
		 *   <tt>response</tt>
		 *   object, and should return
		 *       the array of model attributes to be
		 *   <a href="http://backbonejs.org/#Collection-add">added</a>
		 *   to the collection. The default implementation is a no-op, simply passing
		 *       through the JSON response. Override this if you need to work with a
		 *       preexisting API, or better namespace your responses.
		 * </p>
		 * <pre>var Tweets = Backbone.Collection.extend({
		 *   // The Twitter Search API returns tweets under "results".
		 *   parse: function(response) {
		 *     return response.results;
		 *   }
		 * });</pre>
		 */
		public function parse(response:Object, options:Object):Array {
			return undefined;
		}

		/**
		 * <p id="Collection-clone">
		 *   <b class="header">clone</b>
		 *   <code>collection.clone()</code>
		 *   Returns a new instance of the collection with an identical list of models.
		 * </p>
		 */
		public function clone():Collection {
			return undefined;
		}

		/**
		 * <p id="Collection-fetch">
		 *   <b class="header">fetch</b>
		 *   <code>collection.fetch([options])</code>
		 *   Fetch the default set of models for this collection from the server,
		 *   <a href="http://backbonejs.org/#Collection-set">setting</a>
		 *   them on the collection when they arrive. 
		 *       The
		 *   <b>options</b>
		 *   hash takes
		 *   <tt>success</tt>
		 *   and
		 *   <tt>error</tt>
		 *   callbacks 
		 *       which will both be passed
		 *   <tt>(collection, response, options)</tt>
		 *   as arguments.
		 *       When the model data returns from the server, it uses
		 *   <a href="http://backbonejs.org/#Collection-set">set</a>
		 *   to (intelligently) merge the fetched models, unless you pass
		 *   <tt>{reset: true}</tt>
		 *   ,
		 *       in which case the collection will be (efficiently)
		 *   <a href="http://backbonejs.org/#Collection-reset">reset</a>
		 *   .
		 *       Delegates to
		 *   <a href="http://backbonejs.org/#Sync">Backbone.sync</a>
		 *   under the covers for custom persistence strategies and returns a
		 *   <a href="http://api.jquery.com/jQuery.ajax/#jqXHR">jqXHR</a>
		 *   .
		 *       The server handler for
		 *   <b>fetch</b>
		 *   requests should return a JSON array of
		 *       models.
		 * </p>
		 */
		public function fetch(options:Object=null):void {
		}

		/**
		 * <p id="Collection-create">
		 *   <b class="header">create</b>
		 *   <code>collection.create(attributes, [options])</code>
		 *   Convenience to create a new instance of a model within a collection.
		 *       Equivalent to instantiating a model with a hash of attributes,
		 *       saving the model to the server, and adding the model to the set after being
		 *       successfully created. Returns the new model. If client-side validation
		 *       failed, the model will be unsaved, with validation errors.
		 *       In order for this to work, you should set the
		 *   <a href="http://backbonejs.org/#Collection-model">model</a>
		 *   property of the collection.
		 *       The
		 *   <b>create</b>
		 *   method can accept either an attributes hash or an
		 *       existing, unsaved model object.
		 * </p>
		 */
		public function create(attributes:Object, options:Object=null):Model {
			return undefined;
		}
	}
}