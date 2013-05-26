package randori.backbone {

	import randori.webkit.dom.Element;
	import randori.jquery.JQuery;

	[JavaScript(export="false",name="Backbone.View")]
	public class View {

		/**
		 * <p id="View-extend">
		 *   <b class="header">extend</b>
		 *   <code>Backbone.View.extend(properties, [classProperties])</code>
		 *   Get started with views by creating a custom view class. You'll want to
		 *       override the
		 *   <a href="http://backbonejs.org/#View-render">render</a>
		 *   function, specify your
		 *       declarative
		 *   <a href="http://backbonejs.org/#View-delegateEvents">events</a>
		 *   , and perhaps the
		 *   <tt>tagName</tt>
		 *   ,
		 *   <tt>className</tt>
		 *   , or
		 *   <tt>id</tt>
		 *   of the View's root
		 *       element.
		 * </p>
		 * <pre>var DocumentRow = Backbone.View.extend({
		 * 
		 *   tagName: "li",
		 * 
		 *   className: "document-row",
		 * 
		 *   events: {
		 *     "click .icon":          "open",
		 *     "click .button.edit":   "openEditDialog",
		 *     "click .button.delete": "destroy"
		 *   },
		 * 
		 *   initialize: function() {
		 *     this.listenTo(this.model, "change", this.render);
		 *   }
		 * 
		 *   render: function() {
		 *     ...
		 *   }
		 * 
		 * });</pre>
		 */
		public function extend(properties:Object, classProperties:Object=null):Object {
			return undefined;
		}

		/**
		 * <p id="View-constructor">
		 *   <b class="header">constructor / initialize</b>
		 *   <code>new View([options])</code>
		 *   When creating a new View, the options you pass — after being merged
		 *       into any default options already present on the view —
		 *       are attached to the view as
		 *   <tt>this.options</tt>
		 *   for future reference.
		 *       There are several special
		 *       options that, if passed, will be attached directly to the view:
		 *   <tt>model</tt>
		 *   ,
		 *   <tt>collection</tt>
		 *   ,
		 *   <tt>el</tt>
		 *   ,
		 *   <tt>id</tt>
		 *   ,
		 *   <tt>className</tt>
		 *   ,
		 *   <tt>tagName</tt>
		 *   and
		 *   <tt>attributes</tt>
		 *   .
		 *       If the view defines an
		 *   <b>initialize</b>
		 *   function, it will be called when
		 *       the view is first created. If you'd like to create a view that references
		 *       an element
		 *   <i>already</i>
		 *   in the DOM, pass in the element as an option:
		 *   <tt>new View({el: existingElement})</tt>
		 * </p>
		 * <pre>var doc = documents.first();
		 * 
		 * new DocumentRow({
		 *   model: doc,
		 *   id: "document-row-" + doc.id
		 * });</pre>
		 */
		public function View(options:Object=null) {
		}

		/**
		 * <p id="View-el">
		 *   <b class="header">el</b>
		 *   <code>view.el</code>
		 *   All views have a DOM element at all times (the
		 *   <b>el</b>
		 *   property),
		 *       whether they've already been inserted into the page or not. In this
		 *       fashion, views can be rendered at any time, and inserted into the DOM all
		 *       at once, in order to get high-performance UI rendering with as few
		 *       reflows and repaints as possible.
		 *   <tt>this.el</tt>
		 *   is created from the
		 *       view's
		 *   <tt>tagName</tt>
		 *   ,
		 *   <tt>className</tt>
		 *   ,
		 *   <tt>id</tt>
		 *   and
		 *   <tt>attributes</tt>
		 *   properties,
		 *       if specified. If not,
		 *   <b>el</b>
		 *   is an empty
		 *   <tt>div</tt>
		 *   .
		 * </p>
		 */
		public var el:Element;

		/**
		 * <p id="View-$el">
		 *   <b class="header">$el</b>
		 *   <code>view.$el</code>
		 *   A cached jQuery object for the view's element. A handy
		 *       reference instead of re-wrapping the DOM element all the time.
		 * </p>
		 * <pre>view.$el.show();
		 * 
		 * listView.$el.append(itemView.el);</pre>
		 */
		public var $el:JQuery;

		/**
		 * <p id="View-setElement">
		 *   <b class="header">setElement</b>
		 *   <code>view.setElement(element)</code>
		 *   If you'd like to apply a Backbone view to a different DOM element, use
		 *   <b>setElement</b>
		 *   , which will also create the cached
		 *   <tt>$el</tt>
		 *   reference
		 *       and move the view's delegated events from the old element to the new one.
		 * </p>
		 */
		public function setElement(element:Element):void {
		}

		/**
		 * <p id="View-attributes">
		 *   <b class="header">attributes</b>
		 *   <code>view.attributes</code>
		 *   A hash of attributes that will be set as HTML DOM element attributes on the
		 *       view's
		 *   <tt>el</tt>
		 *   (id, class, data-properties, etc.), or a function that
		 *       returns such a hash.
		 * </p>
		 */
		public var attributes:Object;

		/**
		 * <p id="View-dollar">
		 *   <b class="header">$ (jQuery)</b>
		 *   <code>view.$(selector)</code>
		 *   If jQuery is included on the page, each view has a
		 *   <b>$</b>
		 *   function that runs queries scoped within the view's element. If you use this
		 *       scoped jQuery function, you don't have to use model ids as part of your query
		 *       to pull out specific elements in a list, and can rely much more on HTML class
		 *       attributes. It's equivalent to running:
		 *   <tt>view.$el.find(selector)</tt>
		 * </p>
		 * <pre>ui.Chapter = Backbone.View.extend({
		 *   serialize : function() {
		 *     return {
		 *       title: this.$(".title").text(),
		 *       start: this.$(".start-page").text(),
		 *       end:   this.$(".end-page").text()
		 *     };
		 *   }
		 * });</pre>
		 */
		public function $(selector:String):JQuery {
			return undefined;
		}

		/**
		 * <p id="View-render">
		 *   <b class="header">render</b>
		 *   <code>view.render()</code>
		 *   The default implementation of
		 *   <b>render</b>
		 *   is a no-op. Override this
		 *       function with your code that renders the view template from model data,
		 *       and updates
		 *   <tt>this.el</tt>
		 *   with the new HTML. A good
		 *       convention is to
		 *   <tt>return this</tt>
		 *   at the end of
		 *   <b>render</b>
		 *   to
		 *       enable chained calls.
		 * </p>
		 * <pre>var Bookmark = Backbone.View.extend({
		 *   template: _.template(…),
		 *   render: function() {
		 *     this.$el.html(this.template(this.model.attributes));
		 *     return this;
		 *   }
		 * });</pre>
		 */
		public function render():void {
		}

		/**
		 * <p id="View-remove">
		 *   <b class="header">remove</b>
		 *   <code>view.remove()</code>
		 *   Removes a view from the DOM, and calls
		 *   <a href="http://backbonejs.org/#Events-stopListening">stopListening</a>
		 *   to remove any bound
		 *       events that the view has
		 *   <a href="http://backbonejs.org/#Events-listenTo">listenTo</a>
		 *   'd.
		 * </p>
		 */
		public function remove():void {
		}

		/**
		 * <p id="View-delegateEvents">
		 *   <b class="header">delegateEvents</b>
		 *   <code>delegateEvents([events])</code>
		 *   Uses jQuery's
		 *   <tt>on</tt>
		 *   function to provide declarative callbacks
		 *       for DOM events within a view.
		 *       If an
		 *   <b>events</b>
		 *   hash is not passed directly, uses
		 *   <tt>this.events</tt>
		 *   as the source. Events are written in the format
		 *   <tt>{"event selector": "callback"}</tt>
		 *   .
		 *       The callback may be either the name of a method on the view, or a direct
		 *       function body.
		 *       Omitting the
		 *   <tt>selector</tt>
		 *   causes the event to be bound to the view's
		 *       root element (
		 *   <tt>this.el</tt>
		 *   ). By default,
		 *   <tt>delegateEvents</tt>
		 *   is called
		 *       within the View's constructor for you, so if you have a simple
		 *   <tt>events</tt>
		 *   hash, all of your DOM events will always already be connected, and you will
		 *       never have to call this function yourself.
		 * </p>
		 */
		public function delegateEvents(events:Object=null):void {
		}

		/**
		 * <p id="View-undelegateEvents">
		 *   <b class="header">undelegateEvents</b>
		 *   <code>undelegateEvents()</code>
		 *   Removes all of the view's delegated events. Useful if you want to disable
		 *       or remove a view from the DOM temporarily.
		 * </p>
		 */
		public function undelegateEvents():void {
		}
	}
}