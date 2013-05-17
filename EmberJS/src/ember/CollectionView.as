package ember {

	import randori.webkit.dom.Element;

	[JavaScript(export="false",name="ember.CollectionView")]
	[JavaScriptConstructor(factoryMethod="ember.CollectionView.create(...args)")]
	public class CollectionView {
		/**
		 * <p>Returns a jQuery object for this view's element. If you pass in a selector
		 * string, this method will return a jQuery object, using the current element
		 * as its buffer.</p>
		 * <p>
		 *   For example, calling
		 *   <code>view.$('li')</code>
		 *   will return a jQuery object containing
		 * all of the
		 *   <code>li</code>
		 *   elements inside the DOM element of this view.
		 * </p>
		 */
		public var _:Array;

		/**
		 * <p>A map of parent tags to their default child tags. You can add
		 * additional parent tags if you want collection views that use
		 * a particular parent tag to default to a child tag.</p>
		 */
		public var CONTAINER_MAP:Object;

		public var _context:Object;

		/**
		 * <p>The WAI-ARIA role of the control represented by this view. For example, a
		 * button may have a role of type 'button', or a pane may have a role of
		 * type 'alertdialog'. This property is used by assistive software to help
		 * visually challenged users navigate rich web applications.</p>
		 * <p>The full list of valid WAI-ARIA roles is available at:
		 * http://www.w3.org/TR/wai-aria/roles#roles_categorization</p>
		 */
		public var ariaRole:String;

		/**
		 * <p>A list of properties of the view to apply as attributes. If the property is
		 * a string value, the value of that string will be applied as the attribute.</p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1
		 * 2
		 * 3
		 * 4
		 * 5
		 * 6</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               <span class="comment">// Applies the type attribute to the element</span>
		 *               <span class="comment">// with the value "button", like &lt;div type="button"&gt;</span>
		 *               Ember.View.create({
		 *               <span class="key">attributeBindings</span>
		 *               : [
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">type</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ],
		 *               <span class="key">type</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">button</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               });
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>If the value of the property is a Boolean, the name of that property is
		 * added as an attribute.</p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1
		 * 2
		 * 3
		 * 4
		 * 5</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               <span class="comment">// Renders something like &lt;div enabled="enabled"&gt;</span>
		 *               Ember.View.create({
		 *               <span class="key">attributeBindings</span>
		 *               : [
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">enabled</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ],
		 *               <span class="key">enabled</span>
		 *               :
		 *               <span class="predefined-constant">true</span>
		 *               });
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public var attributeBindings:Object;

		public var childViews:Array;

		/**
		 * <p>A list of properties of the view to apply as class names. If the property
		 * is a string value, the value of that string will be applied as a class
		 * name.</p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1
		 * 2
		 * 3
		 * 4
		 * 5</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               <span class="comment">// Applies the 'high' class to the view element</span>
		 *               Ember.View.create({
		 *               <span class="key">classNameBindings</span>
		 *               : [
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">priority</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ]
		 *   priority:
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">high</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               });
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>If the value of the property is a Boolean, the name of that property is
		 * added as a dasherized class name.</p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1
		 * 2
		 * 3
		 * 4
		 * 5</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               <span class="comment">// Applies the 'is-urgent' class to the view element</span>
		 *               Ember.View.create({
		 *               <span class="key">classNameBindings</span>
		 *               : [
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">isUrgent</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ]
		 *   isUrgent:
		 *               <span class="predefined-constant">true</span>
		 *               });
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>If you would prefer to use a custom value instead of the dasherized
		 * property name, you can pass a binding like this:</p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1
		 * 2
		 * 3
		 * 4
		 * 5</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               <span class="comment">// Applies the 'urgent' class to the view element</span>
		 *               Ember.View.create({
		 *               <span class="key">classNameBindings</span>
		 *               : [
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">isUrgent:urgent</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ]
		 *   isUrgent:
		 *               <span class="predefined-constant">true</span>
		 *               });
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>This list of properties is inherited from the view's superclasses as well.</p>
		 */
		public var classNameBindings:Array;

		/**
		 * <p>Standard CSS class names to apply to the view's outer element. This
		 * property automatically inherits any class names defined by the view's
		 * superclasses as well.</p>
		 */
		public var classNames:Array;

		/**
		 * <p>Defines the properties that will be concatenated from the superclass
		 * (instead of overridden).</p>
		 * <p>
		 *   By default, when you extend an Ember class a property defined in
		 * the subclass overrides a property with the same name that is defined
		 * in the superclass. However, there are some cases where it is preferable
		 * to build up a property's value by combining the superclass' property
		 * value with the subclass' value. An example of this in use within Ember
		 * is the
		 *   <code>classNames</code>
		 *   property of
		 *   <code>Ember.View</code>
		 *   .
		 * </p>
		 * <p>Here is some sample code showing the difference between a concatenated
		 * property and a normal one:</p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>
		 *               1
		 * 2
		 * 3
		 * 4
		 * 5
		 * 6
		 * 7
		 * 8
		 * 9
		 *               <strong>10</strong>
		 *               11
		 * 12
		 * 13
		 *             </pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               App.BarView = Ember.View.extend({
		 *               <span class="key">someNonConcatenatedProperty</span>
		 *               : [
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">bar</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ],
		 *               <span class="key">classNames</span>
		 *               : [
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">bar</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ]
		 * });
		 * 
		 * App.FooBarView = App.BarView.extend({
		 *               <span class="key">someNonConcatenatedProperty</span>
		 *               : [
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">foo</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ],
		 *               <span class="key">classNames</span>
		 *               : [
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">foo</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ],
		 * });
		 *               <span class="keyword">var</span>
		 *               fooBarView = App.FooBarView.create();
		 * fooBarView.get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">someNonConcatenatedProperty</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// ['foo']</span>
		 *               fooBarView.get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">classNames</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// ['ember-view', 'bar', 'foo']</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>This behavior extends to object creation as well. Continuing the
		 * above example:</p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1
		 * 2
		 * 3
		 * 4
		 * 5
		 * 6</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               <span class="keyword">var</span>
		 *               view = App.FooBarView.create({
		 *               <span class="key">someNonConcatenatedProperty</span>
		 *               : [
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">baz</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ],
		 *               <span class="key">classNames</span>
		 *               : [
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">baz</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ]
		 * })
		 * view.get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">someNonConcatenatedProperty</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// ['baz']</span>
		 *               view.get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">classNames</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// ['ember-view', 'bar', 'foo', 'baz']</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>Adding a single property that is not an array will just add it in the array:</p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1
		 * 2
		 * 3
		 * 4</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               <span class="keyword">var</span>
		 *               view = App.FooBarView.create({
		 *               <span class="key">classNames</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">baz</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               })
		 * view.get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">classNames</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// ['ember-view', 'bar', 'foo', 'baz']</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   Using the
		 *   <code>concatenatedProperties</code>
		 *   property, we can tell to Ember that mix
		 * the content of the properties.
		 * </p>
		 * <p>
		 *   In
		 *   <code>Ember.View</code>
		 *   the
		 *   <code>classNameBindings</code>
		 *   and
		 *   <code>attributeBindings</code>
		 *   properties
		 * are also concatenated, in addition to
		 *   <code>classNames</code>
		 *   .
		 * </p>
		 * <p>This feature is available for you to use throughout the Ember object model,
		 * although typical app developers are likely to use it infrequently.</p>
		 */
		public var concatenatedProperties:Array;

		/**
		 * <p>
		 *   /**
		 *     A list of items to be displayed by the
		 *   <code>Ember.CollectionView</code>
		 *   .
		 * </p>
		 */
		public var content:Array;

		/**
		 * <p>The object from which templates should access properties.</p>
		 * <p>This object will be passed to the template function each time the render
		 * method is called, but it is up to the individual function to decide what
		 * to do with it.</p>
		 * <p>By default, this will be the view's controller.</p>
		 */
		public var context:Object;

		/**
		 * <p>The controller managing this view. If this property is set, it will be
		 * made available for use by the template.</p>
		 */
		public var controller:Object;

		/**
		 * <p>Returns the current DOM element for the view.</p>
		 */
		public var element:Element;

		/**
		 * <p>An optional view to display if content is set to an empty array.</p>
		 */
		public var emptyView:View;

		public var emptyViewClass:Object;

		/**
		 * <p>Destroyed object property flag.</p>
		 * <p>
		 *   if this property is
		 *   <code>true</code>
		 *   the observers and bindings were already
		 * removed by the effect of calling the
		 *   <code>destroy()</code>
		 *   method.
		 * </p>
		 */
		public var isDestroyed:Object;

		/**
		 * <p>
		 *   Destruction scheduled flag. The
		 *   <code>destroy()</code>
		 *   method has been called.
		 * </p>
		 * <p>
		 *   The object stays intact until the end of the run loop at which point
		 * the
		 *   <code>isDestroyed</code>
		 *   flag is set.
		 * </p>
		 */
		public var isDestroying:Object;

		/**
		 * <p>concatenatedProperties: ['classNames', 'classNameBindings', 'attributeBindings'],
		 * /**</p>
		 */
		public var isView:Boolean;

		/**
		 * <p>
		 *   If
		 *   <code>false</code>
		 *   , the view will appear hidden in DOM.
		 * </p>
		 */
		public var isVisible:Boolean;

		public var itemViewClass:View;

		/**
		 * <p>
		 *   A view may contain a layout. A layout is a regular template but
		 * supersedes the
		 *   <code>template</code>
		 *   property during rendering. It is the
		 * responsibility of the layout template to retrieve the
		 *   <code>template</code>
		 *   property from the view (or alternatively, call
		 *   <code>Handlebars.helpers.yield</code>
		 *   ,
		 *   <code>{{yield}}</code>
		 *   ) to render it in the correct location.
		 * </p>
		 * <p>
		 *   This is useful for a view that has a shared wrapper, but which delegates
		 * the rendering of the contents of the wrapper to the
		 *   <code>template</code>
		 *   property
		 * on a subclass.
		 * </p>
		 */
		public var layout:Function;

		/**
		 * <p>The name of the layout to lookup if no layout is provided.</p>
		 * <p>
		 *   <code>Ember.View</code>
		 *   will look for a template with this name in this view's
		 *   <code>templates</code>
		 *   object. By default, this will be a global object
		 * shared in
		 *   <code>Ember.TEMPLATES</code>
		 *   .
		 * </p>
		 */
		public var layoutName:String;

		/**
		 * <p>
		 *   Return the nearest ancestor whose parent is an instance of
		 *   <code>klass</code>
		 *   .
		 * </p>
		 */
		public var nearestChildOf:Object;

		/**
		 * <p>Return the nearest ancestor that is an instance of the provided
		 * class.</p>
		 */
		public var nearestInstanceOf:Object;

		/**
		 * <p>Return the nearest ancestor that is an instance of the provided
		 * class or mixin.</p>
		 */
		public var nearestOfType:Object;

		/**
		 * <p>Return the nearest ancestor that has a given property.</p>
		 */
		public var nearestWithProperty:Object;

		/**
		 * <p>
		 *   Tag name for the view's outer element. The tag name is only used when an
		 * element is first created. If you change the
		 *   <code>tagName</code>
		 *   for an element, you
		 * must destroy and recreate the view element.
		 * </p>
		 * <p>
		 *   By default, the render buffer will use a
		 *   <code>&lt;div&gt;</code>
		 *   tag for views.
		 * </p>
		 */
		public var tagName:String;

		/**
		 * <p>The template used to render the view. This should be a function that
		 * accepts an optional context parameter and returns a string of HTML that
		 * will be inserted into the DOM relative to its parent view.</p>
		 * <p>
		 *   In general, you should set the
		 *   <code>templateName</code>
		 *   property instead of setting
		 * the template yourself.
		 * </p>
		 */
		public var template:Function;

		/**
		 * <p>The name of the template to lookup if no template is provided.</p>
		 * <p>
		 *   <code>Ember.View</code>
		 *   will look for a template with this name in this view's
		 *   <code>templates</code>
		 *   object. By default, this will be a global object
		 * shared in
		 *   <code>Ember.TEMPLATES</code>
		 *   .
		 * </p>
		 */
		public var templateName:String;

		/**
		 * <p>
		 *   The hash in which to look for
		 *   <code>templateName</code>
		 *   .
		 * </p>
		 */
		public var templates:Object;

		/**
		 * <p>Global views hash</p>
		 */
		public var views:Object;

		/**
		 * <p>Adds an observer on a property.</p>
		 * <p>This is the core method used to register an observer for a property.</p>
		 * <p>Once you call this method, anytime the key's value is set, your observer
		 * will be notified. Note that the observers are triggered anytime the
		 * value is set, regardless of whether it has actually changed. Your
		 * observer should be prepared to handle that.</p>
		 * <p>You can also pass an optional context parameter to this method. The
		 * context will be passed to your observer method whenever it is triggered.
		 * Note that if you add the same target/method pair on a key multiple times
		 * with different context parameters, your observer will only be called once
		 * with the last context you passed.</p>
		 * <h3>Observer Methods</h3>
		 * <p>
		 *   Observer methods you pass should generally have the following signature if
		 * you do not pass a
		 *   <code>context</code>
		 *   parameter:
		 * </p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               <span class="function">fooDidChange</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               (sender, key, value, rev) { };
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>The sender is the object that changed. The key is the property that
		 * changes. The value property is currently reserved and unused. The rev
		 * is the last property revision of the object when it changed, which you can
		 * use to detect if the key value has really changed or not.</p>
		 * <p>
		 *   If you pass a
		 *   <code>context</code>
		 *   parameter, the context will be passed before the
		 * revision like so:
		 * </p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               <span class="function">fooDidChange</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               (sender, key, value, context, rev) { };
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>Usually you will not need the value, context or revision parameters at
		 * the end. In this case, it is common to write observer methods that take
		 * only a sender and key value as parameters or, if you aren't interested in
		 * any of these values, to write an observer that has no parameters at all.</p>
		 */
		public function addObserver(key:String, target:Object, method:*):Object {
			return null;
		}

		/**
		 * <p>
		 *   Appends the view's element to the document body. If the view does
		 * not have an HTML representation yet,
		 *   <code>createElement()</code>
		 *   will be called
		 * automatically.
		 * </p>
		 * <p>
		 *   If your application uses the
		 *   <code>rootElement</code>
		 *   property, you must append
		 * the view within that element. Rendering views outside of the
		 *   <code>rootElement</code>
		 *   is not supported.
		 * </p>
		 * <p>Note that this method just schedules the view to be appended; the DOM
		 * element will not be appended to the document body until all bindings have
		 * finished synchronizing.</p>
		 */
		public function append():Object {
			return null;
		}

		/**
		 * <p>Appends the view's element to the specified parent element.</p>
		 * <p>
		 *   If the view does not have an HTML representation yet,
		 *   <code>createElement()</code>
		 *   will be called automatically.
		 * </p>
		 * <p>Note that this method just schedules the view to be appended; the DOM
		 * element will not be appended to the given element until all bindings have
		 * finished synchronizing.</p>
		 * <p>
		 *   This is not typically a function that you will need to call directly when
		 * building your application. You might consider using
		 *   <code>Ember.ContainerView</code>
		 *   instead. If you do need to use
		 *   <code>appendTo</code>
		 *   , be sure that the target element
		 * you are providing is associated with an
		 *   <code>Ember.Application</code>
		 *   and does not
		 * have an ancestor element that is associated with an Ember view.
		 * </p>
		 */
		public function appendTo(A:*):Object {
			return null;
		}

		public function apply(obj:Object):Object {
			return null;
		}

		/**
		 * <p>Called when a mutation to the underlying content array occurs.</p>
		 * <p>
		 *   This method will replay that mutation against the views that compose the
		 *   <code>Ember.CollectionView</code>
		 *   , ensuring that the view reflects the model.
		 * </p>
		 * <p>
		 *   This array observer is added in
		 *   <code>contentDidChange</code>
		 *   .
		 * </p>
		 */
		public function arrayDidChange(addedObjects:Array, removedObjects:Array, changeIndex:Number):void {
		}

		/**
		 * <p>Begins a grouping of property changes.</p>
		 * <p>
		 *   You can use this method to group property changes so that notifications
		 * will not be sent until the changes are finished. If you plan to make a
		 * large number of changes to an object at one time, you should call this
		 * method at the beginning of the changes to begin deferring change
		 * notifications. When you are done making changes, call
		 *   <code>endPropertyChanges()</code>
		 *   to deliver the deferred change notifications and end
		 * deferring.
		 * </p>
		 */
		public function beginPropertyChanges():Object {
			return null;
		}

		/**
		 * <p>Returns the cached value of a computed property, if it exists.
		 * This allows you to inspect the value of a computed property
		 * without accidentally invoking it if it is intended to be
		 * generated lazily.</p>
		 */
		public function cacheFor(keyName:String):Object {
			return null;
		}

		/**
		 * Creates a new <code>CollectionView</code> instance.
		 */
		public function CollectionView(arguments:Object) {
		}

		/**
		 * <p>Creates an instance of a class. Accepts either no arguments, or an object
		 * containing values to initialize the newly instantiated object with.</p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>
		 *               1
		 * 2
		 * 3
		 * 4
		 * 5
		 * 6
		 * 7
		 * 8
		 * 9
		 *               <strong>10</strong>
		 *               11
		 *             </pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               App.Person = Ember.Object.extend({
		 *               <span class="function">helloWorld</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               () {
		 *     alert(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">Hi, my name is</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               +
		 *               <span class="local-variable">this</span>
		 *               .get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">name</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ));
		 *   }
		 * });
		 *               <span class="keyword">var</span>
		 *               tom = App.Person.create({
		 *               <span class="key">name</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Tom Dale</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               });
		 * 
		 * tom.helloWorld();
		 *               <span class="comment">// alerts "Hi, my name is Tom Dale".</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   <code>create</code>
		 *   will call the
		 *   <code>init</code>
		 *   function if defined during
		 *   <code>Ember.AnyObject.extend</code>
		 * </p>
		 * <p>
		 *   If no arguments are passed to
		 *   <code>create</code>
		 *   , it will not set values to the new
		 * instance during initialization:
		 * </p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1
		 * 2</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               <span class="keyword">var</span>
		 *               noName = App.Person.create();
		 * noName.helloWorld();
		 *               <span class="comment">// alerts undefined</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   NOTE: For performance reasons, you cannot declare methods or computed
		 * properties during
		 *   <code>create</code>
		 *   . You should instead declare methods and computed
		 * properties when using
		 *   <code>extend</code>
		 *   .
		 * </p>
		 */
		public static function create(arguments:Object):CollectionView {
			return null;
		}

		/**
		 * <p>
		 *   Instantiates a view to be added to the childViews array during view
		 * initialization. You generally will not call this method directly unless
		 * you are overriding
		 *   <code>createChildViews()</code>
		 *   . Note that this method will
		 * automatically configure the correct settings on the new view instance to
		 * act as a child of the parent.
		 * </p>
		 */
		public function createChildView(viewClass:Class, attrs:Object):Object {
			return null;
		}

		/**
		 * <p>
		 *   Creates a DOM representation of the view and all of its
		 * child views by recursively calling the
		 *   <code>render()</code>
		 *   method.
		 * </p>
		 * <p>
		 *   After the element has been created,
		 *   <code>didInsertElement</code>
		 *   will
		 * be called on this view and all of its child views.
		 * </p>
		 */
		public function createElement():Object {
			return null;
		}

		/**
		 * <p>Set the value of a property to the current value minus some amount.</p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1
		 * 2</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               player.decrementProperty(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">lives</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 * orc.decrementProperty(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">health</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="integer">5</span>
		 *               );
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function decrementProperty(keyName:String, increment:Object):Object {
			return null;
		}

		/**
		 * <p>
		 *   You must call
		 *   <code>destroy</code>
		 *   on a view to destroy the view (and all of its
		 * child views). This will remove the view from any parent node, then make
		 * sure that the DOM element managed by the view can be released by the
		 * memory manager.
		 * </p>
		 */
		public function destroy():void {
		}

		/**
		 * <p>Destroys any existing element along with the element for any child views
		 * as well. If the view does not currently have a element, then this method
		 * will do nothing.</p>
		 * <p>
		 *   If you implement
		 *   <code>willDestroyElement()</code>
		 *   on your view, then this method will
		 * be invoked on your view before your element is destroyed to give you a
		 * chance to clean up any event handlers, etc.
		 * </p>
		 * <p>
		 *   If you write a
		 *   <code>willDestroyElement()</code>
		 *   handler, you can assume that your
		 *   <code>didInsertElement()</code>
		 *   handler was called earlier for the same element.
		 * </p>
		 * <p>Normally you will not call or override this method yourself, but you may
		 * want to implement the above callbacks when it is run.</p>
		 */
		public function destroyElement():Object {
			return null;
		}

		public function detect(obj:Object):Boolean {
			return false;
		}

		/**
		 * <p>
		 *   Iterate over each computed property for the class, passing its name
		 * and any associated metadata (see
		 *   <code>metaForProperty</code>
		 *   ) to the callback.
		 * </p>
		 */
		public function eachComputedProperty(callback:Function, binding:Object):void {
		}

		/**
		 * <p>Ends a grouping of property changes.</p>
		 * <p>
		 *   You can use this method to group property changes so that notifications
		 * will not be sent until the changes are finished. If you plan to make a
		 * large number of changes to an object at one time, you should call
		 *   <code>beginPropertyChanges()</code>
		 *   at the beginning of the changes to defer change
		 * notifications. When you are done making changes, call this method to
		 * deliver the deferred change notifications and end deferring.
		 * </p>
		 */
		public function endPropertyChanges():Object {
			return null;
		}

		/**
		 * <p>
		 *   Attempts to discover the element in the parent element. The default
		 * implementation looks for an element with an ID of
		 *   <code>elementId</code>
		 *   (or the
		 * view's guid if
		 *   <code>elementId</code>
		 *   is null). You can override this method to
		 * provide your own form of lookup. For example, if you want to discover your
		 * element using a CSS class name instead of an ID.
		 * </p>
		 */
		public function findElementInParentElement(parentElement:Element):Element {
			return null;
		}

[JavaScriptMethod(name="get")]
		/**
		 * <p>Retrieves the value of a property from the object.</p>
		 * <p>
		 *   This method is usually similar to using
		 *   <code>object[keyName]</code>
		 *   or
		 *   <code>object.keyName</code>
		 *   ,
		 * however it supports both computed properties and the unknownProperty
		 * handler.
		 * </p>
		 * <p>
		 *   Because
		 *   <code>get</code>
		 *   unifies the syntax for accessing all these kinds
		 * of properties, it can make many refactorings easier, such as replacing a
		 * simple property with a computed property, or vice versa.
		 * </p>
		 * <h3>Computed Properties</h3>
		 * <p>
		 *   Computed properties are methods defined with the
		 *   <code>property</code>
		 *   modifier
		 * declared at the end, such as:
		 * </p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1
		 * 2
		 * 3</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               <span class="function">fullName</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               () {
		 *               <span class="keyword">return</span>
		 *               <span class="local-variable">this</span>
		 *               .getEach(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">firstName</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">lastName</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ).compact().join(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content"/>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 * }.property(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">firstName</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">lastName</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               )
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   When you call
		 *   <code>get</code>
		 *   on a computed property, the function will be
		 * called and the return value will be returned instead of the function
		 * itself.
		 * </p>
		 * <h3>Unknown Properties</h3>
		 * <p>
		 *   Likewise, if you try to call
		 *   <code>get</code>
		 *   on a property whose value is
		 *   <code>undefined</code>
		 *   , the
		 *   <code>unknownProperty()</code>
		 *   method will be called on the object.
		 * If this method returns any value other than
		 *   <code>undefined</code>
		 *   , it will be returned
		 * instead. This allows you to implement "virtual" properties that are
		 * not defined upfront.
		 * </p>
		 */
		public function get_(keyName:String):Object {
			return null;
		}

		public function getPath(path:String):Object {
			return null;
		}

		/**
		 * <p>
		 *   To get multiple properties at once, call
		 *   <code>getProperties</code>
		 *   with a list of strings or an array:
		 * </p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               record.getProperties(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">firstName</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">lastName</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">zipCode</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// { firstName: 'John', lastName: 'Doe', zipCode: '10011' }</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>is equivalent to:</p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               record.getProperties([
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">firstName</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">lastName</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">zipCode</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ]);
		 *               <span class="comment">// { firstName: 'John', lastName: 'Doe', zipCode: '10011' }</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function getProperties(list:*):Object {
			return null;
		}

		/**
		 * <p>
		 *   Retrieves the value of a property, or a default value in the case that the
		 * property returns
		 *   <code>undefined</code>
		 *   .
		 * </p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               person.getWithDefault(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">lastName</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Doe</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function getWithDefault(keyName:String, defaultValue:Object):Object {
			return null;
		}

		/**
		 * <p>Checks to see if object has any subscriptions for named event.</p>
		 */
		public function has(name:String):Boolean {
			return false;
		}

		/**
		 * <p>
		 *   Returns
		 *   <code>true</code>
		 *   if the object currently has observers registered for a
		 * particular key. You can use this method to potentially defer performing
		 * an expensive action until someone begins observing a particular property
		 * on the object.
		 * </p>
		 */
		public function hasObserverFor(key:String):Boolean {
			return false;
		}

		/**
		 * <p>Set the value of a property to the current value plus some amount.</p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1
		 * 2</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               person.incrementProperty(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">age</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 * team.incrementProperty(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">score</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="integer">2</span>
		 *               );
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function incrementProperty(keyName:String, increment:Object):Object {
			return null;
		}

		/**
		 * <p>In some cases, you may want to annotate computed properties with additional
		 * metadata about how they function or what values they operate on. For
		 * example, computed property functions may close over variables that are then
		 * no longer available for introspection.</p>
		 * <p>You can pass a hash of these values to a computed property like this:</p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1
		 * 2
		 * 3
		 * 4</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               <span class="function">person</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               () {
		 *               <span class="keyword">var</span>
		 *               personId =
		 *               <span class="local-variable">this</span>
		 *               .get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">personId</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *               <span class="keyword">return</span>
		 *               App.Person.create({
		 *               <span class="key">id</span>
		 *               : personId });
		 * }.property().meta({
		 *               <span class="key">type</span>
		 *               : App.Person })
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>Once you've done this, you can retrieve the values saved to the computed
		 * property from your class like this:</p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               MyClass.metaForProperty(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">person</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   This will return the original hash that was passed to
		 *   <code>meta()</code>
		 *   .
		 * </p>
		 */
		public function metaForProperty(key:String):void {
		}

		/**
		 * <p>
		 *   Convenience method to call
		 *   <code>propertyWillChange</code>
		 *   and
		 *   <code>propertyDidChange</code>
		 *   in
		 * succession.
		 * </p>
		 */
		public function notifyPropertyChange(keyName:String):Object {
			return null;
		}

		/**
		 * <p>Cancels subscription for give name, target, and method.</p>
		 */
		public function off(name:String, target:Object, method:Function):Object {
			return null;
		}

[JavaScriptMethod(name="on")]
		/**
		 * <p>Subscribes to a named event with given function.</p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1
		 * 2
		 * 3</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               person.on(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">didLoad</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="keyword">function</span>
		 *               () {
		 *               <span class="comment">// fired once the person has loaded</span>
		 *               });
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>An optional target can be passed in as the 2nd argument that will
		 * be set as the "this" for the callback. This is a good way to give your
		 * function access to the object triggering the event. When the target
		 * parameter is used the callback becomes the third argument.</p>
		 */
		public function on_(name:String, target:Object, method:Function):Object {
			return null;
		}

		/**
		 * <p>
		 *   Subscribes a function to a named event and then cancels the subscription
		 * after the first time the event is triggered. It is good to use
		 *   <code>one</code>
		 *   when
		 * you only care about the first time an event has taken place.
		 * </p>
		 * <p>This function takes an optional 2nd argument that will become the "this"
		 * value for the callback. If this argument is passed then the 3rd argument
		 * becomes the function.</p>
		 */
		public function one(name:String, target:Object, method:Function):Object {
			return null;
		}

		/**
		 * <p>Notify the observer system that a property has just changed.</p>
		 * <p>
		 *   Sometimes you need to change a value directly or indirectly without
		 * actually calling
		 *   <code>get()</code>
		 *   or
		 *   <code>set()</code>
		 *   on it. In this case, you can use this
		 * method and
		 *   <code>propertyWillChange()</code>
		 *   instead. Calling these two methods
		 * together will notify all observers that the property has potentially
		 * changed value.
		 * </p>
		 * <p>
		 *   Note that you must always call
		 *   <code>propertyWillChange</code>
		 *   and
		 *   <code>propertyDidChange</code>
		 *   as a pair. If you do not, it may get the property change groups out of
		 * order and cause notifications to be delivered more often than you would
		 * like.
		 * </p>
		 */
		public function propertyDidChange(keyName:String):Object {
			return null;
		}

		/**
		 * <p>Notify the observer system that a property is about to change.</p>
		 * <p>
		 *   Sometimes you need to change a value directly or indirectly without
		 * actually calling
		 *   <code>get()</code>
		 *   or
		 *   <code>set()</code>
		 *   on it. In this case, you can use this
		 * method and
		 *   <code>propertyDidChange()</code>
		 *   instead. Calling these two methods
		 * together will notify all observers that the property has potentially
		 * changed value.
		 * </p>
		 * <p>
		 *   Note that you must always call
		 *   <code>propertyWillChange</code>
		 *   and
		 *   <code>propertyDidChange</code>
		 *   as a pair. If you do not, it may get the property change groups out of
		 * order and cause notifications to be delivered more often than you would
		 * like.
		 * </p>
		 */
		public function propertyWillChange(keyName:String):Object {
			return null;
		}

		/**
		 * <p>Removes the view's element from the element to which it is attached.</p>
		 */
		public function remove():Object {
			return null;
		}

		/**
		 * <p>
		 *   Removes all children from the
		 *   <code>parentView</code>
		 *   .
		 * </p>
		 */
		public function removeAllChildren():Object {
			return null;
		}

		/**
		 * <p>Removes the child view from the parent view.</p>
		 */
		public function removeChild(view:View):Object {
			return null;
		}

		/**
		 * <p>
		 *   Removes the view from its
		 *   <code>parentView</code>
		 *   , if one is found. Otherwise
		 * does nothing.
		 * </p>
		 */
		public function removeFromParent():Object {
			return null;
		}

		/**
		 * <p>
		 *   Remove an observer you have previously registered on this object. Pass
		 * the same key, target, and method you passed to
		 *   <code>addObserver()</code>
		 *   and your
		 * target will no longer receive notifications.
		 * </p>
		 */
		public function removeObserver(key:String, target:Object, method:*):Object {
			return null;
		}

		public function reopen(arguments:Object):void {
		}

		/**
		 * <p>
		 *   Replaces the content of the specified parent element with this view's
		 * element. If the view does not have an HTML representation yet,
		 *   <code>createElement()</code>
		 *   will be called automatically.
		 * </p>
		 * <p>Note that this method just schedules the view to be appended; the DOM
		 * element will not be appended to the given element until all bindings have
		 * finished synchronizing</p>
		 */
		public function replaceIn(A:*):Object {
			return null;
		}

		/**
		 * <p>Renders the view again. This will work regardless of whether the
		 * view is already in the DOM or not. If the view is in the DOM, the
		 * rendering process will be deferred to give bindings a chance
		 * to synchronize.</p>
		 * <p>
		 *   If children were added during the rendering process using
		 *   <code>appendChild</code>
		 *   ,
		 *   <code>rerender</code>
		 *   will remove them, because they will be added again
		 * if needed by the next
		 *   <code>render</code>
		 *   .
		 * </p>
		 * <p>
		 *   In general, if the display of your view changes, you should modify
		 * the DOM element directly instead of manually calling
		 *   <code>rerender</code>
		 *   , which can
		 * be slow.
		 * </p>
		 */
		public function rerender():void {
		}

[JavaScriptMethod(name="set")]
		/**
		 * <p>Sets the provided key or path to the value.</p>
		 * <p>
		 *   This method is generally very similar to calling
		 *   <code>object[key] = value</code>
		 *   or
		 *   <code>object.key = value</code>
		 *   , except that it provides support for computed
		 * properties, the
		 *   <code>unknownProperty()</code>
		 *   method and property observers.
		 * </p>
		 * <h3>Computed Properties</h3>
		 * <p>
		 *   If you try to set a value on a key that has a computed property handler
		 * defined (see the
		 *   <code>get()</code>
		 *   method for an example), then
		 *   <code>set()</code>
		 *   will call
		 * that method, passing both the value and key instead of simply changing
		 * the value itself. This is useful for those times when you need to
		 * implement a property that is composed of one or more member
		 * properties.
		 * </p>
		 * <h3>Unknown Properties</h3>
		 * <p>
		 *   If you try to set a value on a key that is undefined in the target
		 * object, then the
		 *   <code>unknownProperty()</code>
		 *   handler will be called instead. This
		 * gives you an opportunity to implement complex "virtual" properties that
		 * are not predefined on the object. If
		 *   <code>unknownProperty()</code>
		 *   returns
		 * undefined, then
		 *   <code>set()</code>
		 *   will simply set the value on the object.
		 * </p>
		 * <h3>Property Observers</h3>
		 * <p>
		 *   In addition to changing the property,
		 *   <code>set()</code>
		 *   will also register a property
		 * change with the object. Unless you have placed this call inside of a
		 *   <code>beginPropertyChanges()</code>
		 *   and
		 *   <code>endPropertyChanges(),</code>
		 *   any "local" observers
		 * (i.e. observer methods declared on the same object), will be called
		 * immediately. Any "remote" observers (i.e. observer methods declared on
		 * another object) will be placed in a queue and called at a later time in a
		 * coalesced manner.
		 * </p>
		 * <h3>Chaining</h3>
		 * <p>
		 *   In addition to property changes,
		 *   <code>set()</code>
		 *   returns the value of the object
		 * itself so you can do chaining like this:
		 * </p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               record.set(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">firstName</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Charles</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ).set(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">lastName</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Jolley</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function set_(keyName:String, value:Object):Object {
			return null;
		}

		public function setPath(path:String, value:Object):Object {
			return null;
		}

		/**
		 * <p>
		 *   To set multiple properties at once, call
		 *   <code>setProperties</code>
		 *   with a Hash:
		 * </p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               record.setProperties({
		 *               <span class="key">firstName</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Charles</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="key">lastName</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Jolley</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               });
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function setProperties(hash:Object):Object {
			return null;
		}

		/**
		 * <p>
		 *   Returns a string representation which attempts to provide more information
		 * than Javascript's
		 *   <code>toString</code>
		 *   typically does, in a generic way for all Ember
		 * objects.
		 * </p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1
		 * 2
		 * 3</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               App.Person = Em.Object.extend()
		 * person = App.Person.create()
		 * person.toString()
		 *               <span class="comment">//=&gt; "&lt;App.Person:ember1024&gt;"</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>If the object's class is not defined on an Ember namespace, it will
		 * indicate it is a subclass of the registered superclass:</p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1
		 * 2
		 * 3</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               Student = App.Person.extend()
		 * student = Student.create()
		 * student.toString()
		 *               <span class="comment">//=&gt; "&lt;(subclass of App.Person):ember1025&gt;"</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   If the method
		 *   <code>toStringExtension</code>
		 *   is defined, its return value will be
		 * included in the output.
		 * </p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1
		 * 2
		 * 3
		 * 4
		 * 5
		 * 6
		 * 7</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               App.Teacher = App.Person.extend({
		 *               <span class="function">toStringExtension</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               (){
		 *               <span class="keyword">return</span>
		 *               <span class="local-variable">this</span>
		 *               .get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">fullName</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *   }
		 * });
		 * teacher = App.Teacher.create()
		 * teacher.toString();
		 *               <span class="comment">//=&gt; "&lt;App.Teacher:ember1026:Tom Dale&gt;"</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function toString():Object {
			return null;
		}

		/**
		 * <p>Set the value of a boolean property to the opposite of it's
		 * current value.</p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               starship.toggleProperty(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">warpDriveEnaged</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function toggleProperty(keyName:String):Object {
			return null;
		}

		/**
		 * <p>Triggers a named event for the object. Any additional arguments
		 * will be passed as parameters to the functions that are subscribed to the
		 * event.</p>
		 * <div class="highlight javascript ">
		 *   <div class="ribbon"/>
		 *   <div class="scroller">
		 *     <table class="CodeRay">
		 *       <tbody>
		 *         <tr>
		 *           <td class="line-numbers" title="double click to toggle" ondblclick="with (this.firstChild.style) { display = (display == '') ? 'none' : '' }">
		 *             <pre>1
		 * 2
		 * 3
		 * 4
		 * 5
		 * 6
		 * 7</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               person.on(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">didEat</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="keyword">function</span>
		 *               (food) {
		 *   console.log(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">person ate some</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               + food);
		 * });
		 * 
		 * person.trigger(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">didEat</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">broccoli</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// outputs: person ate some broccoli</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function trigger(name:String, args:Object):void {
		}

	}
}