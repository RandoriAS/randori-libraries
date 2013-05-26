package randori.backbone {

	import randori.webkit.dom.Element;
	import randori.jquery.JQuery;

	[JavaScript(export="false",name="Backbone.Router")]
	public class Router {

		/**
		 * <p id="Router-extend">
		 *   <b class="header">extend</b>
		 *   <code>Backbone.Router.extend(properties, [classProperties])</code>
		 *   Get started by creating a custom router class. Define actions that are
		 *       triggered when certain URL fragments are
		 *       matched, and provide a
		 *   <a href="http://backbonejs.org/#Router-routes">routes</a>
		 *   hash
		 *       that pairs routes to actions. Note that you'll want to avoid using a
		 *       leading slash in your route definitions:
		 * </p>
		 * <pre>var Workspace = Backbone.Router.extend({
		 * 
		 *   routes: {
		 *     "help":                 "help",    // #help
		 *     "search/:query":        "search",  // #search/kiwis
		 *     "search/:query/p:page": "search"   // #search/kiwis/p7
		 *   },
		 * 
		 *   help: function() {
		 *     ...
		 *   },
		 * 
		 *   search: function(query, page) {
		 *     ...
		 *   }
		 * 
		 * });</pre>
		 */
		public function extend(properties:Object, classProperties:Object=null):Object {
			return undefined;
		}

		/**
		 * <p id="Router-routes">
		 *   <b class="header">routes</b>
		 *   <code>router.routes</code>
		 *   The routes hash maps URLs with parameters to functions on your router
		 *       (or just direct function definitions, if you prefer),
		 *       similar to the
		 *   <a href="http://backbonejs.org/#View">View</a>
		 *   's
		 *   <a href="http://backbonejs.org/#View-delegateEvents">events hash</a>
		 *   .
		 *       Routes can contain parameter parts,
		 *   <tt>:param</tt>
		 *   , which match a single URL
		 *       component between slashes; and splat parts
		 *   <tt>*splat</tt>
		 *   , which can match
		 *       any number of URL components. Part of a route can be made optional by
		 *       surrounding it in parentheses
		 *   <tt>(/:optional)</tt>
		 *   .
		 * </p>
		 */
		public var routes:Object;

		/**
		 * <p id="Router-constructor">
		 *   <b class="header">constructor / initialize</b>
		 *   <code>new Router([options])</code>
		 *   When creating a new router, you may pass its
		 *   <a href="http://backbonejs.org/#Router-routes">routes</a>
		 *   hash directly as an option, if you
		 *       choose. All
		 *   <tt>options</tt>
		 *   will also be passed to your
		 *   <tt>initialize</tt>
		 *   function, if defined.
		 * </p>
		 */
		public function Router(options:Object=null) {
		}

		/**
		 * <p id="Router-route">
		 *   <b class="header">route</b>
		 *   <code>router.route(route, name, [callback])</code>
		 *   Manually create a route for the router, The
		 *   <tt>route</tt>
		 *   argument may
		 *       be a
		 *   <a href="http://backbonejs.org/#Router-routes">routing string</a>
		 *   or regular expression.
		 *       Each matching capture from the route or regular expression will be passed as
		 *       an argument to the callback. The
		 *   <tt>name</tt>
		 *   argument will be triggered as
		 *       a
		 *   <tt>"route:name"</tt>
		 *   event whenever the route is matched.  If the
		 *   <tt>callback</tt>
		 *   argument is omitted
		 *   <tt>router[name]</tt>
		 *   will be used
		 *       instead.
		 * </p>
		 * <pre>initialize: function(options) {
		 * 
		 *   // Matches #page/10, passing "10"
		 *   this.route("page/:number", "page", function(number){ ... });
		 * 
		 *   // Matches /117-a/b/c/open, passing "117-a/b/c" to this.open
		 *   this.route(/^(.*?)\/open$/, "open");
		 * 
		 * },
		 * 
		 * open: function(id) { ... }</pre>
		 */
		public function route(route:String, name:String, callback:Function=null):void {
		}

		/**
		 * <p id="Router-navigate">
		 *   <b class="header">navigate</b>
		 *   <code>router.navigate(fragment, [options])</code>
		 *   Whenever you reach a point in your application that you'd like to save
		 *       as a URL, call
		 *   <b>navigate</b>
		 *   in order to update the URL.
		 *       If you wish to also call the route function, set the
		 *   <b>trigger</b>
		 *   option to
		 *   <tt>true</tt>
		 *   .
		 *       To update the URL without creating an entry in the browser's history,
		 *       set the
		 *   <b>replace</b>
		 *   option to
		 *   <tt>true</tt>
		 *   .
		 * </p>
		 * <pre>openPage: function(pageNumber) {
		 *   this.document.pages.at(pageNumber).open();
		 *   this.navigate("page/" + pageNumber);
		 * }
		 * 
		 * # Or ...
		 * 
		 * app.navigate("help/troubleshooting", {trigger: true});
		 * 
		 * # Or ...
		 * 
		 * app.navigate("help/troubleshooting", {trigger: true, replace: true});</pre>
		 */
		public function navigate(fragment:String, options:Object=null):void {
		}
	}
}