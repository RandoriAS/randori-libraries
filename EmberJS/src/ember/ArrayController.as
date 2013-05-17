package ember {

	import randori.webkit.dom.Element;

	[JavaScript(export="false",name="ember.ArrayController")]
	[JavaScriptConstructor(factoryMethod="ember.ArrayController.create(...args)")]
	public class ArrayController {
		/**
		 * <p>Returns a special object that can be used to observe individual properties
		 * on the array. Just get an equivalent property on this object and it will
		 * return an enumerable that maps automatically to the named key on the
		 * member objects.</p>
		 */
		public var _each:Object;

		/**
		 * <p>Becomes true whenever the array currently has observers watching changes
		 * on the array.</p>
		 */
		[JavaScriptProperty(name="Boolean")]
		public var boolean:Object;

		/**
		 * <p>This property will trigger anytime the enumerable's content changes.
		 * You can observe this property to be notified of changes to the enumerables
		 * content.</p>
		 * <p>
		 *   For plain enumerables, this property is read only.
		 *   <code>Ember.Array</code>
		 *   overrides
		 * this method.
		 * </p>
		 */
		public var _:Array;

		/**
		 * <p>
		 *   The array that the proxy pretends to be. In the default
		 *   <code>ArrayProxy</code>
		 *   implementation, this and
		 *   <code>content</code>
		 *   are the same. Subclasses of
		 *   <code>ArrayProxy</code>
		 *   can override this property to provide things like sorting and filtering.
		 * </p>
		 */
		public var arrangedContent:Object;

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
		 *     The content array. Must be an object that implements
		 *   <code>Ember.Array</code>
		 *   and/or
		 *   <code>Ember.MutableArray.</code>
		 * </p>
		 */
		public var content:Array;

		/**
		 * <p>Helper method returns the first object from a collection. This is usually
		 * used by bindings and other parts of the framework to extract a single
		 * object if the enumerable contains only one item.</p>
		 * <p>
		 *   If you override this method, you should implement it so that it will
		 * always return the same value each time it is called. If your enumerable
		 * contains only one object, this method should always return that object.
		 * If your enumerable is empty, this method should return
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
		 *             <pre>1
		 * 2
		 * 3
		 * 4
		 * 5</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               <span class="keyword">var</span>
		 *               arr = [
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">b</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">c</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ];
		 * arr.get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">firstObject</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// "a"</span>
		 *               <span class="keyword">var</span>
		 *               arr = [];
		 * arr.get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">firstObject</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// undefined</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public var firstObject:Object;

		/**
		 * <p>Becomes true whenever the array currently has observers watching changes
		 * on the array.</p>
		 */
		public var hasEnumerableObservers:Boolean;

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
		 * <p>The controller used to wrap items, if any.</p>
		 */
		public var itemController:String;

		/**
		 * <p>
		 *   Helper method returns the last object from a collection. If your enumerable
		 * contains only one object, this method should always return that object.
		 * If your enumerable is empty, this method should return
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
		 *             <pre>1
		 * 2
		 * 3
		 * 4
		 * 5</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               <span class="keyword">var</span>
		 *               arr = [
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">b</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">c</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ];
		 * arr.get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">lastObject</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// "c"</span>
		 *               <span class="keyword">var</span>
		 *               arr = [];
		 * arr.get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">lastObject</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// undefined</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public var lastObject:Object;

		/**
		 * <p>
		 *   Your array must support the
		 *   <code>length</code>
		 *   property. Your replace methods should
		 * set this property whenever it changes.
		 * </p>
		 */
		public var length:Number;

		/**
		 * <p>Specifies the arrangedContent's sort direction</p>
		 */
		public var sortAscending:Boolean;

		/**
		 * <p>Specifies which properties dictate the arrangedContent's sort order.</p>
		 */
		public var sortProperties:Array;

		/**
		 * <p>The object to which events from the view should be sent.</p>
		 * <p>
		 *   For example, when a Handlebars template uses the
		 *   <code>{{action}}</code>
		 *   helper,
		 * it will attempt to send the event to the view's controller's
		 *   <code>target</code>
		 *   .
		 * </p>
		 * <p>
		 *   By default, a controller's
		 *   <code>target</code>
		 *   is set to the router after it is
		 * instantiated by
		 *   <code>Ember.Application#initialize</code>
		 *   .
		 * </p>
		 */
		public var target:Object;

		/**
		 * <p>Adds an array observer to the receiving array. The array observer object
		 * normally must implement two methods:</p>
		 * <ul>
		 *   <li>
		 *     <code>arrayWillChange(start, removeCount, addCount)</code>
		 *     - This method will be
		 * called just before the array is modified.
		 *   </li>
		 *   <li>
		 *     <code>arrayDidChange(start, removeCount, addCount)</code>
		 *     - This method will be
		 * called just after the array is modified.
		 *   </li>
		 * </ul>
		 * <p>Both callbacks will be passed the starting index of the change as well a
		 * a count of the items to be removed and added. You can use these callbacks
		 * to optionally inspect the array during the change, clear caches, or do
		 * any other bookkeeping necessary.</p>
		 * <p>In addition to passing a target, you can also include an options hash
		 * which you can use to override the method names that will be invoked on the
		 * target.</p>
		 */
		public function addArrayObserver(target:Object, opts:Object):Object {
			return null;
		}

		/**
		 * <p>
		 *   Registers an enumerable observer. Must implement
		 *   <code>Ember.EnumerableObserver</code>
		 *   mixin.
		 * </p>
		 */
		public function addEnumerableObserver(target:Object, opts:Object):Object {
			return null;
		}

		/**
		 * <p>
		 *   <strong>Required.</strong>
		 *   You must implement this method to apply this mixin.
		 * </p>
		 * <p>Attempts to add the passed object to the receiver if the object is not
		 * already present in the collection. If the object is present, this method
		 * has no effect.</p>
		 * <p>If the passed object is of a type not supported by the receiver,
		 * then this method should raise an exception.</p>
		 */
		public function addObject(object:Object):Object {
			return null;
		}

		/**
		 * <p>Adds each object in the passed enumerable to the receiver.</p>
		 */
		public function addObjects(objects:Enumerable):Object {
			return null;
		}

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

		public function apply(obj:Object):Object {
			return null;
		}

		/**
		 * <p>
		 *   If you are implementing an object that supports
		 *   <code>Ember.Array</code>
		 *   , call this
		 * method just before the array content changes to notify any observers and
		 * invalidate any related properties. Pass the starting index of the change
		 * as well as a delta of the amounts to change.
		 * </p>
		 */
		public function arrayContentWillChange(startIdx:Number, removeAmt:Number, addAmt:Number):Object {
			return null;
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
		 * <p>Remove all elements from self. This is useful if you
		 * want to reuse an existing array without having to recreate it.</p>
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
		 *               colors = [
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">red</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">green</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">blue</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ];
		 * color.length();
		 *               <span class="comment">//  3</span>
		 *               colors.clear();
		 *               <span class="comment">//  []</span>
		 *               colors.length();
		 *               <span class="comment">//  0</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function clear():Object {
			return null;
		}

		/**
		 * <p>Returns a copy of the array with all null and undefined elements removed.</p>
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
		 *               arr = [
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="predefined-constant">null</span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">c</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="predefined-constant">undefined</span>
		 *               ];
		 * arr.compact();
		 *               <span class="comment">// ["a", "c"]</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function compact():Array {
			return null;
		}

		/**
		 * <p>
		 *   Returns
		 *   <code>true</code>
		 *   if the passed object can be found in the receiver. The
		 * default version will iterate through the enumerable until the object
		 * is found. You may want to override this with a more efficient version.
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
		 *               <span class="keyword">var</span>
		 *               arr = [
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">b</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">c</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ];
		 * arr.contains(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// true</span>
		 *               arr.contains(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">z</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// false</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function contains(obj:Object):Boolean {
			return false;
		}

		/**
		 * Creates a new <code>ArrayController</code> instance.
		 */
		public function ArrayController(arguments:Object) {
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
		public static function create(arguments:Object):ArrayController {
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
		 *   Destroys an object by setting the
		 *   <code>isDestroyed</code>
		 *   flag and removing its
		 * metadata, which effectively destroys observers and bindings.
		 * </p>
		 * <p>If you try to set a property on a destroyed object, an exception will be
		 * raised.</p>
		 * <p>Note that destruction is scheduled for the end of the run loop and does not
		 * happen immediately.</p>
		 */
		public function destroy():Object {
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
		 * <p>Invoke this method when the contents of your enumerable has changed.
		 * This will notify any observers watching for content changes. If your are
		 * implementing an ordered enumerable (such as an array), also pass the
		 * start and end values where the content changed so that it can be used to
		 * notify range observers.</p>
		 */
		public function enumerableContentDidChange(start:Number, removing:*, adding:*):void {
		}

		/**
		 * <p>Invoke this method just before the contents of your enumerable will
		 * change. You can either omit the parameters completely or pass the objects
		 * to be removed or added if available or just a count.</p>
		 */
		public function enumerableContentWillChange(removing:*, adding:*):void {
		}

		/**
		 * <p>
		 *   Returns
		 *   <code>true</code>
		 *   if the passed function returns true for every item in the
		 * enumeration. This corresponds with the
		 *   <code>every()</code>
		 *   method in JavaScript 1.6.
		 * </p>
		 * <p>The callback method you provide should have the following signature (all
		 * parameters are optional):</p>
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
		 *               <span class="keyword">function</span>
		 *               (item, index, enumerable);
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <ul>
		 *   <li>
		 *     <code>item</code>
		 *     is the current item in the iteration.
		 *   </li>
		 *   <li>
		 *     <code>index</code>
		 *     is the current index in the iteration.
		 *   </li>
		 *   <li>
		 *     <code>enumerable</code>
		 *     is the enumerable object itself.
		 *   </li>
		 * </ul>
		 * <p>
		 *   It should return the
		 *   <code>true</code>
		 *   or
		 *   <code>false</code>
		 *   .
		 * </p>
		 * <p>
		 *   Note that in addition to a callback, you can also pass an optional target
		 * object that will be set as
		 *   <code>this</code>
		 *   on the context. This is a good way
		 * to give your iterator function access to the current object.
		 * </p>
		 * <p>Example Usage:</p>
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
		 *               <span class="keyword">if</span>
		 *               (people.every(isEngineer)) { Paychecks.addBigBonus(); }
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function every(callback:Function, target:Object):Boolean {
			return false;
		}

		/**
		 * <p>
		 *   Returns
		 *   <code>true</code>
		 *   if the passed property resolves to
		 *   <code>true</code>
		 *   for all items in
		 * the enumerable. This method is often simpler/faster than using a callback.
		 * </p>
		 */
		public function everyProperty(key:String, value:String):Boolean {
			return false;
		}

		/**
		 * <p>
		 *   Returns an array with all of the items in the enumeration that the passed
		 * function returns true for. This method corresponds to
		 *   <code>filter()</code>
		 *   defined in
		 * JavaScript 1.6.
		 * </p>
		 * <p>The callback method you provide should have the following signature (all
		 * parameters are optional):</p>
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
		 *               <span class="keyword">function</span>
		 *               (item, index, enumerable);
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <ul>
		 *   <li>
		 *     <code>item</code>
		 *     is the current item in the iteration.
		 *   </li>
		 *   <li>
		 *     <code>index</code>
		 *     is the current index in the iteration.
		 *   </li>
		 *   <li>
		 *     <code>enumerable</code>
		 *     is the enumerable object itself.
		 *   </li>
		 * </ul>
		 * <p>
		 *   It should return the
		 *   <code>true</code>
		 *   to include the item in the results,
		 *   <code>false</code>
		 *   otherwise.
		 * </p>
		 * <p>
		 *   Note that in addition to a callback, you can also pass an optional target
		 * object that will be set as
		 *   <code>this</code>
		 *   on the context. This is a good way
		 * to give your iterator function access to the current object.
		 * </p>
		 */
		public function filter(callback:Function, target:Object):Array {
			return null;
		}

		/**
		 * <p>
		 *   Returns an array with just the items with the matched property. You
		 * can pass an optional second argument with the target value. Otherwise
		 * this will match any property that evaluates to
		 *   <code>true</code>
		 *   .
		 * </p>
		 */
		public function filterProperty(key:String, value:String):Array {
			return null;
		}

		/**
		 * <p>
		 *   Returns the first item in the array for which the callback returns true.
		 * This method works similar to the
		 *   <code>filter()</code>
		 *   method defined in JavaScript 1.6
		 * except that it will stop working on the array once a match is found.
		 * </p>
		 * <p>The callback method you provide should have the following signature (all
		 * parameters are optional):</p>
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
		 *               <span class="keyword">function</span>
		 *               (item, index, enumerable);
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <ul>
		 *   <li>
		 *     <code>item</code>
		 *     is the current item in the iteration.
		 *   </li>
		 *   <li>
		 *     <code>index</code>
		 *     is the current index in the iteration.
		 *   </li>
		 *   <li>
		 *     <code>enumerable</code>
		 *     is the enumerable object itself.
		 *   </li>
		 * </ul>
		 * <p>
		 *   It should return the
		 *   <code>true</code>
		 *   to include the item in the results,
		 *   <code>false</code>
		 *   otherwise.
		 * </p>
		 * <p>
		 *   Note that in addition to a callback, you can also pass an optional target
		 * object that will be set as
		 *   <code>this</code>
		 *   on the context. This is a good way
		 * to give your iterator function access to the current object.
		 * </p>
		 */
		public function find(callback:Function, target:Object):Object {
			return null;
		}

		/**
		 * <p>
		 *   Returns the first item with a property matching the passed value. You
		 * can pass an optional second argument with the target value. Otherwise
		 * this will match any property that evaluates to
		 *   <code>true</code>
		 *   .
		 * </p>
		 * <p>
		 *   This method works much like the more generic
		 *   <code>find()</code>
		 *   method.
		 * </p>
		 */
		public function findProperty(key:String, value:String):Object {
			return null;
		}

		/**
		 * <p>
		 *   Iterates through the enumerable, calling the passed function on each
		 * item. This method corresponds to the
		 *   <code>forEach()</code>
		 *   method defined in
		 * JavaScript 1.6.
		 * </p>
		 * <p>The callback method you provide should have the following signature (all
		 * parameters are optional):</p>
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
		 *               <span class="keyword">function</span>
		 *               (item, index, enumerable);
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <ul>
		 *   <li>
		 *     <code>item</code>
		 *     is the current item in the iteration.
		 *   </li>
		 *   <li>
		 *     <code>index</code>
		 *     is the current index in the iteration.
		 *   </li>
		 *   <li>
		 *     <code>enumerable</code>
		 *     is the enumerable object itself.
		 *   </li>
		 * </ul>
		 * <p>
		 *   Note that in addition to a callback, you can also pass an optional target
		 * object that will be set as
		 *   <code>this</code>
		 *   on the context. This is a good way
		 * to give your iterator function access to the current object.
		 * </p>
		 */
		public function forEach(callback:Function, target:Object):Object {
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

		/**
		 * <p>
		 *   Alias for
		 *   <code>mapProperty</code>
		 * </p>
		 */
		public function getEach(key:String):Array {
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
		 * <p>
		 *   Returns the index of the given object's first occurrence.
		 * If no
		 *   <code>startAt</code>
		 *   argument is given, the starting location to
		 * search is 0. If it's negative, will count backward from
		 * the end of the array. Returns -1 if no match is found.
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
		 *               <span class="keyword">var</span>
		 *               arr = [
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">b</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">c</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">d</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ];
		 * arr.indexOf(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">//  0</span>
		 *               arr.indexOf(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">z</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// -1</span>
		 *               arr.indexOf(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="integer">2</span>
		 *               );
		 *               <span class="comment">//  4</span>
		 *               arr.indexOf(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               , -
		 *               <span class="integer">1</span>
		 *               );
		 *               <span class="comment">//  4</span>
		 *               arr.indexOf(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">b</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="integer">3</span>
		 *               );
		 *               <span class="comment">// -1</span>
		 *               arr.indexOf(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="integer">100</span>
		 *               );
		 *               <span class="comment">// -1</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function indexOf(object:Object, startAt:Number):Number {
			return null;
		}

		/**
		 * <p>An overridable method called when objects are instantiated. By default,
		 * does nothing unless it is overridden during class definition.</p>
		 * <p>Example:</p>
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
		 *             </pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               App.Person = Ember.Object.extend({
		 *               <span class="function">init</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               () {
		 *               <span class="local-variable">this</span>
		 *               ._super();
		 *     alert(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Name is</span>
		 *                 <span class="delimiter">'</span>
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
		 *               steve = App.Person.create({
		 *               <span class="key">name</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">Steve</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               });
		 *               <span class="comment">// alerts 'Name is Steve'.</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   NOTE: If you do override
		 *   <code>init</code>
		 *   for a framework class like
		 *   <code>Ember.View</code>
		 *   or
		 *   <code>Ember.ArrayController</code>
		 *   , be sure to call
		 *   <code>this._super()</code>
		 *   in your
		 *   <code>init</code>
		 *   declaration! If you don't, Ember may not have an opportunity to
		 * do important setup work, and you'll see strange behavior in your
		 * application.
		 * </p>
		 */
		public function init():void {
		}

		/**
		 * <p>
		 *   This will use the primitive
		 *   <code>replace()</code>
		 *   method to insert an object at the
		 * specified index.
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
		 *               <span class="keyword">var</span>
		 *               colors = [
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">red</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">green</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">blue</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ];
		 * colors.insertAt(
		 *               <span class="integer">2</span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">yellow</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// ["red", "green", "yellow", "blue"]</span>
		 *               colors.insertAt(
		 *               <span class="integer">5</span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">orange</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// Error: Index out of range</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function insertAt(idx:Number, object:Object):Object {
			return null;
		}

		/**
		 * <p>Invokes the named method on every object in the receiver that
		 * implements it. This method corresponds to the implementation in
		 * Prototype 1.6.</p>
		 */
		public function invoke(methodName:String, args:Object):Array {
			return null;
		}

		/**
		 * <p>
		 *   Returns the index of the given object's last occurrence.
		 * If no
		 *   <code>startAt</code>
		 *   argument is given, the search starts from
		 * the last position. If it's negative, will count backward
		 * from the end of the array. Returns -1 if no match is found.
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
		 *               <span class="keyword">var</span>
		 *               arr = [
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">b</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">c</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">d</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ];
		 * arr.lastIndexOf(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">//  4</span>
		 *               arr.lastIndexOf(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">z</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// -1</span>
		 *               arr.lastIndexOf(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="integer">2</span>
		 *               );
		 *               <span class="comment">//  0</span>
		 *               arr.lastIndexOf(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               , -
		 *               <span class="integer">1</span>
		 *               );
		 *               <span class="comment">//  4</span>
		 *               arr.lastIndexOf(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">b</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="integer">3</span>
		 *               );
		 *               <span class="comment">//  1</span>
		 *               arr.lastIndexOf(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="integer">100</span>
		 *               );
		 *               <span class="comment">//  4</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function lastIndexOf(object:Object, startAt:Number):Number {
			return null;
		}

		/**
		 * <p>
		 *   Return the name of the controller to wrap items, or
		 *   <code>null</code>
		 *   if items should
		 * be returned directly.  The default implementation simply returns the
		 *   <code>itemController</code>
		 *   property, but subclasses can override this method to return
		 * different controllers for different objects.
		 * </p>
		 * <p>For example:</p>
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
		 * 7
		 * 8
		 * 9</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               App.MyArrayController = Ember.ArrayController.extend({
		 *               <span class="function">lookupItemController</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               ( object ) {
		 *               <span class="keyword">if</span>
		 *               (object.get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">isSpecial</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               )) {
		 *               <span class="keyword">return</span>
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">special</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ;
		 *               <span class="comment">// use App.SpecialController</span>
		 *               }
		 *               <span class="keyword">else</span>
		 *               {
		 *               <span class="keyword">return</span>
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">regular</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ;
		 *               <span class="comment">// use App.RegularController</span>
		 *               }
		 *   }
		 * });
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function lookupItemController(object:Object):Object {
			return null;
		}

		/**
		 * <p>
		 *   Maps all of the items in the enumeration to another value, returning
		 * a new array. This method corresponds to
		 *   <code>map()</code>
		 *   defined in JavaScript 1.6.
		 * </p>
		 * <p>The callback method you provide should have the following signature (all
		 * parameters are optional):</p>
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
		 *               <span class="keyword">function</span>
		 *               (item, index, enumerable);
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <ul>
		 *   <li>
		 *     <code>item</code>
		 *     is the current item in the iteration.
		 *   </li>
		 *   <li>
		 *     <code>index</code>
		 *     is the current index in the iteration.
		 *   </li>
		 *   <li>
		 *     <code>enumerable</code>
		 *     is the enumerable object itself.
		 *   </li>
		 * </ul>
		 * <p>It should return the mapped value.</p>
		 * <p>
		 *   Note that in addition to a callback, you can also pass an optional target
		 * object that will be set as
		 *   <code>this</code>
		 *   on the context. This is a good way
		 * to give your iterator function access to the current object.
		 * </p>
		 */
		public function map(callback:Function, target:Object):Array {
			return null;
		}

		/**
		 * <p>Similar to map, this specialized function returns the value of the named
		 * property on all items in the enumeration.</p>
		 */
		public function mapProperty(key:String):Array {
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
		 * <p>Implement this method to make your class enumerable.</p>
		 * <p>This method will be call repeatedly during enumeration. The index value
		 * will always begin with 0 and increment monotonically. You don't have to
		 * rely on the index value to determine what object to return, but you should
		 * always check the value and start from the beginning when you see the
		 * requested index is 0.</p>
		 * <p>
		 *   The
		 *   <code>previousObject</code>
		 *   is the object that was returned from the last call
		 * to
		 *   <code>nextObject</code>
		 *   for the current iteration. This is a useful way to
		 * manage iteration if you are tracing a linked list, for example.
		 * </p>
		 * <p>Finally the context parameter will always contain a hash you can use as
		 * a "scratchpad" to maintain any other state you need in order to iterate
		 * properly. The context object is reused and is not reset between
		 * iterations so make sure you setup the context with a fresh state whenever
		 * the index parameter is 0.</p>
		 * <p>
		 *   Generally iterators will continue to call
		 *   <code>nextObject</code>
		 *   until the index
		 * reaches the your current length-1. If you run out of data before this
		 * time for some reason, you should simply return undefined.
		 * </p>
		 * <p>The default implementation of this method simply looks up the index.
		 * This works great on any Array-like objects.</p>
		 */
		public function nextObject(index:Number, previousObject:Object, context:Object):Object {
			return null;
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
		 * <p>
		 *   Returns the object at the given
		 *   <code>index</code>
		 *   . If the given
		 *   <code>index</code>
		 *   is negative
		 * or is greater or equal than the array length, returns
		 *   <code>undefined</code>
		 *   .
		 * </p>
		 * <p>
		 *   This is one of the primitives you must implement to support
		 *   <code>Ember.Array</code>
		 *   .
		 * If your object supports retrieving the value of an array item using
		 *   <code>get()</code>
		 *   (i.e.
		 *   <code>myArray.get(0)</code>
		 *   ), then you do not need to implement this method
		 * yourself.
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
		 * 6</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               <span class="keyword">var</span>
		 *               arr = [
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">b</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">c</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">d</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ];
		 * arr.objectAt(
		 *               <span class="integer">0</span>
		 *               );
		 *               <span class="comment">// "a"</span>
		 *               arr.objectAt(
		 *               <span class="integer">3</span>
		 *               );
		 *               <span class="comment">// "d"</span>
		 *               arr.objectAt(-
		 *               <span class="integer">1</span>
		 *               );
		 *               <span class="comment">// undefined</span>
		 *               arr.objectAt(
		 *               <span class="integer">4</span>
		 *               );
		 *               <span class="comment">// undefined</span>
		 *               arr.objectAt(
		 *               <span class="integer">5</span>
		 *               );
		 *               <span class="comment">// undefined</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function objectAt(idx:Number):* {
			return null;
		}

		/**
		 * <p>Should actually retrieve the object at the specified index from the
		 * content. You can override this method in subclasses to transform the
		 * content item to something new.</p>
		 * <p>
		 *   This method will only be called if content is non-
		 *   <code>null</code>
		 *   .
		 * </p>
		 */
		public function objectAtContent(idx:Number):Object {
			return null;
		}

		/**
		 * <p>
		 *   This returns the objects at the specified indexes, using
		 *   <code>objectAt</code>
		 *   .
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
		 *               <span class="keyword">var</span>
		 *               arr =
		 *               <span class="error">ﾠ</span>
		 *               [
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">b</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">c</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">d</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ];
		 * arr.objectsAt([
		 *               <span class="integer">0</span>
		 *               ,
		 *               <span class="integer">1</span>
		 *               ,
		 *               <span class="integer">2</span>
		 *               ]);
		 *               <span class="comment">// ["a", "b", "c"]</span>
		 *               arr.objectsAt([
		 *               <span class="integer">2</span>
		 *               ,
		 *               <span class="integer">3</span>
		 *               ,
		 *               <span class="integer">4</span>
		 *               ]);
		 *               <span class="comment">// ["c", "d", undefined]</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function objectsAt(indexes:Array):Array {
			return null;
		}

		/**
		 * <p>
		 *   Pop object from array or nil if none are left. Works just like
		 *   <code>pop()</code>
		 *   but
		 * it is KVO-compliant.
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
		 *               <span class="keyword">var</span>
		 *               colors = [
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">red</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">green</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">blue</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ];
		 * colors.popObject();
		 *               <span class="comment">// "blue"</span>
		 *               console.log(colors);
		 *               <span class="comment">// ["red", "green"]</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function popObject():Object {
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
		 * <p>
		 *   Push the object onto the end of the array. Works just like
		 *   <code>push()</code>
		 *   but it
		 * is KVO-compliant.
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
		 *               <span class="keyword">var</span>
		 *               colors = [
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">red</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">green</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">blue</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ];
		 * colors.pushObject(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">black</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// ["red", "green", "blue", "black"]</span>
		 *               colors.pushObject([
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">yellow</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">orange</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ]);
		 *               <span class="comment">// ["red", "green", "blue", "black", ["yellow", "orange"]]</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function pushObject(obj:*):* {
			return null;
		}

		/**
		 * <p>Add the objects in the passed numerable to the end of the array. Defers
		 * notifying observers of the change until all objects are added.</p>
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
		 *               <span class="keyword">var</span>
		 *               colors = [
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">red</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">green</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">blue</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ];
		 * colors.pushObjects(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">black</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// ["red", "green", "blue", "black"]</span>
		 *               colors.pushObjects([
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">yellow</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">orange</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ]);
		 *               <span class="comment">// ["red", "green", "blue", "black", "yellow", "orange"]</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function pushObjects(objects:Enumerable):Object {
			return null;
		}

		/**
		 * <p>
		 *   This will combine the values of the enumerator into a single value. It
		 * is a useful way to collect a summary value from an enumeration. This
		 * corresponds to the
		 *   <code>reduce()</code>
		 *   method defined in JavaScript 1.8.
		 * </p>
		 * <p>The callback method you provide should have the following signature (all
		 * parameters are optional):</p>
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
		 *               <span class="keyword">function</span>
		 *               (previousValue, item, index, enumerable);
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <ul>
		 *   <li>
		 *     <code>previousValue</code>
		 *     is the value returned by the last call to the iterator.
		 *   </li>
		 *   <li>
		 *     <code>item</code>
		 *     is the current item in the iteration.
		 *   </li>
		 *   <li>
		 *     <code>index</code>
		 *     is the current index in the iteration.
		 *   </li>
		 *   <li>
		 *     <code>enumerable</code>
		 *     is the enumerable object itself.
		 *   </li>
		 * </ul>
		 * <p>Return the new cumulative value.</p>
		 * <p>
		 *   In addition to the callback you can also pass an
		 *   <code>initialValue</code>
		 *   . An error
		 * will be raised if you do not pass an initial value and the enumerator is
		 * empty.
		 * </p>
		 * <p>Note that unlike the other methods, this method does not allow you to
		 * pass a target object to set as this for the callback. It's part of the
		 * spec. Sorry.</p>
		 */
		public function reduce(callback:Function, initialValue:Object, reducerProperty:String):Object {
			return null;
		}

		/**
		 * <p>Returns an array with all of the items in the enumeration where the passed
		 * function returns false for. This method is the inverse of filter().</p>
		 * <p>The callback method you provide should have the following signature (all
		 * parameters are optional):</p>
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
		 *               <span class="keyword">function</span>
		 *               (item, index, enumerable);
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <ul>
		 *   <li>
		 *     <em>item</em>
		 *     is the current item in the iteration.
		 *   </li>
		 *   <li>
		 *     <em>index</em>
		 *     is the current index in the iteration
		 *   </li>
		 *   <li>
		 *     <em>enumerable</em>
		 *     is the enumerable object itself.
		 *   </li>
		 * </ul>
		 * <p>It should return the a falsey value to include the item in the results.</p>
		 * <p>Note that in addition to a callback, you can also pass an optional target
		 * object that will be set as "this" on the context. This is a good way
		 * to give your iterator function access to the current object.</p>
		 */
		public function reject(callback:Function, target:Object):Array {
			return null;
		}

		/**
		 * <p>Returns an array with the items that do not have truthy values for
		 * key.  You can pass an optional second argument with the target value.  Otherwise
		 * this will match any property that evaluates to false.</p>
		 */
		public function rejectProperty(key:String, value:String):Array {
			return null;
		}

		/**
		 * <p>Removes an array observer from the object if the observer is current
		 * registered. Calling this method multiple times with the same object will
		 * have no effect.</p>
		 */
		public function removeArrayObserver(target:Object, opts:Object):Object {
			return null;
		}

		/**
		 * <p>
		 *   Remove an object at the specified index using the
		 *   <code>replace()</code>
		 *   primitive
		 * method. You can pass either a single index, or a start and a length.
		 * </p>
		 * <p>
		 *   If you pass a start and length that is beyond the
		 * length this method will throw an
		 *   <code>Ember.OUT_OF_RANGE_EXCEPTION</code>
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
		 * 4</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               <span class="keyword">var</span>
		 *               colors = [
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">red</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">green</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">blue</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">yellow</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">orange</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ];
		 * colors.removeAt(
		 *               <span class="integer">0</span>
		 *               );
		 *               <span class="comment">// ["green", "blue", "yellow", "orange"]</span>
		 *               colors.removeAt(
		 *               <span class="integer">2</span>
		 *               ,
		 *               <span class="integer">2</span>
		 *               );
		 *               <span class="comment">// ["green", "blue"]</span>
		 *               colors.removeAt(
		 *               <span class="integer">4</span>
		 *               ,
		 *               <span class="integer">2</span>
		 *               );
		 *               <span class="comment">// Error: Index out of range</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function removeAt(start:Number, len:Number):Object {
			return null;
		}

		/**
		 * <p>Removes a registered enumerable observer.</p>
		 */
		public function removeEnumerableObserver(target:Object, opts:Object):Object {
			return null;
		}

		/**
		 * <p>
		 *   <strong>Required.</strong>
		 *   You must implement this method to apply this mixin.
		 * </p>
		 * <p>Attempts to remove the passed object from the receiver collection if the
		 * object is present in the collection. If the object is not present,
		 * this method has no effect.</p>
		 * <p>If the passed object is of a type not supported by the receiver,
		 * then this method should raise an exception.</p>
		 */
		public function removeObject(object:Object):Object {
			return null;
		}

		/**
		 * <p>Removes each object in the passed enumerable from the receiver.</p>
		 */
		public function removeObjects(objects:Enumerable):Object {
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
		 *   /**
		 *   <strong>Required.</strong>
		 *   You must implement this method to apply this mixin.
		 *   This is one of the primitives you must implement to support
		 *   <code>Ember.Array</code>
		 *   .
		 *     You should replace amt objects started at idx with the objects in the
		 *     passed array. You should also call
		 *   <code>this.enumerableContentDidChange()</code>
		 * </p>
		 */
		public function replace(idx:Number, amt:Number, objects:Array):void {
		}

		/**
		 * <p>Should actually replace the specified objects on the content array.
		 * You can override this method in subclasses to transform the content item
		 * into something new.</p>
		 * <p>
		 *   This method will only be called if content is non-
		 *   <code>null</code>
		 *   .
		 * </p>
		 */
		public function replaceContent(idx:Number, amt:Number, objects:Array):void {
		}

		public function replaceWith():void {
		}

		/**
		 * <p>
		 *   Reverse objects in the array. Works just like
		 *   <code>reverse()</code>
		 *   but it is
		 * KVO-compliant.
		 * </p>
		 */
		public function reverseObjects():Object {
			return null;
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

		/**
		 * <p>
		 *   Sets the value on the named property for each member. This is more
		 * efficient than using other methods defined on this helper. If the object
		 * implements Ember.Observable, the value will be changed to
		 *   <code>set(),</code>
		 *   otherwise
		 * it will be set directly.
		 *   <code>null</code>
		 *   objects are skipped.
		 * </p>
		 */
		public function setEach(key:String, value:Object):Object {
			return null;
		}

		/**
		 * <p>Replace all the the receiver's content with content of the argument.
		 * If argument is an empty array receiver will be cleared.</p>
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
		 *               <span class="keyword">var</span>
		 *               colors = [
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">red</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">green</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">blue</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ];
		 * colors.setObjects([
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">black</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">white</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ]);
		 *               <span class="comment">// ["black", "white"]</span>
		 *               colors.setObjects([]);
		 *               <span class="comment">// []</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function setObjects(objects:Array):Object {
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
		 *   Shift an object from start of array or nil if none are left. Works just
		 * like
		 *   <code>shift()</code>
		 *   but it is KVO-compliant.
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
		 *               <span class="keyword">var</span>
		 *               colors = [
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">red</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">green</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">blue</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ];
		 * colors.shiftObject();
		 *               <span class="comment">// "red"</span>
		 *               console.log(colors);
		 *               <span class="comment">// ["green", "blue"]</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function shiftObject():Object {
			return null;
		}

		/**
		 * <p>Returns a new array that is a slice of the receiver. This implementation
		 * uses the observable array methods to retrieve the objects for the new
		 * slice.</p>
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
		 *               arr = [
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">red</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">green</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">blue</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ];
		 * arr.slice(
		 *               <span class="integer">0</span>
		 *               );
		 *               <span class="comment">// ['red', 'green', 'blue']</span>
		 *               arr.slice(
		 *               <span class="integer">0</span>
		 *               ,
		 *               <span class="integer">2</span>
		 *               );
		 *               <span class="comment">// ['red', 'green']</span>
		 *               arr.slice(
		 *               <span class="integer">1</span>
		 *               ,
		 *               <span class="integer">100</span>
		 *               );
		 *               <span class="comment">// ['green', 'blue']</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function slice(beginIndex:int, endIndex:int):Array {
			return null;
		}

		/**
		 * <p>
		 *   Returns
		 *   <code>true</code>
		 *   if the passed function returns true for any item in the
		 * enumeration. This corresponds with the
		 *   <code>some()</code>
		 *   method in JavaScript 1.6.
		 * </p>
		 * <p>The callback method you provide should have the following signature (all
		 * parameters are optional):</p>
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
		 *               <span class="keyword">function</span>
		 *               (item, index, enumerable);
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <ul>
		 *   <li>
		 *     <code>item</code>
		 *     is the current item in the iteration.
		 *   </li>
		 *   <li>
		 *     <code>index</code>
		 *     is the current index in the iteration.
		 *   </li>
		 *   <li>
		 *     <code>enumerable</code>
		 *     is the enumerable object itself.
		 *   </li>
		 * </ul>
		 * <p>
		 *   It should return the
		 *   <code>true</code>
		 *   to include the item in the results,
		 *   <code>false</code>
		 *   otherwise.
		 * </p>
		 * <p>
		 *   Note that in addition to a callback, you can also pass an optional target
		 * object that will be set as
		 *   <code>this</code>
		 *   on the context. This is a good way
		 * to give your iterator function access to the current object.
		 * </p>
		 * <p>Usage Example:</p>
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
		 *               <span class="keyword">if</span>
		 *               (people.some(isManager)) { Paychecks.addBiggerBonus(); }
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function some(callback:Function, target:Object):Array {
			return null;
		}

		/**
		 * <p>
		 *   Returns
		 *   <code>true</code>
		 *   if the passed property resolves to
		 *   <code>true</code>
		 *   for any item in
		 * the enumerable. This method is often simpler/faster than using a callback.
		 * </p>
		 */
		public function someProperty(key:String, value:String):Boolean {
			return false;
		}

		/**
		 * <p>Simply converts the enumerable into a genuine array. The order is not
		 * guaranteed. Corresponds to the method implemented by Prototype.</p>
		 */
		public function toArray():Array {
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

		public function transitionTo():void {
		}

		/**
		 * <p>Transition the application into another route. The route may
		 * be either a single route or route path:</p>
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
		 *               aController.transitionToRoute(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">blogPosts</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *   aController.transitionToRoute(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">blogPosts.recentEntries</span>
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
		 *   Optionally supply a model for the route in question. The model
		 * will be serialized into the URL using the
		 *   <code>serialize</code>
		 *   hook of
		 * the route:
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
		 *               aController.transitionToRoute(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">blogPost</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               , aPost);
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function transitionToRoute(name:String, models:Object):void {
		}

		/**
		 * <p>Returns a new enumerable that contains only unique values. The default
		 * implementation returns an array regardless of the receiver type.</p>
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
		 *               arr = [
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">b</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">b</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ];
		 * arr.uniq();
		 *               <span class="comment">// ["a", "b"]</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function uniq():Object {
			return null;
		}

		/**
		 * <p>
		 *   Unshift an object to start of array. Works just like
		 *   <code>unshift()</code>
		 *   but it is
		 * KVO-compliant.
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
		 *               <span class="keyword">var</span>
		 *               colors = [
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">red</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">green</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">blue</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ];
		 * colors.unshiftObject(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">yellow</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// ["yellow", "red", "green", "blue"]</span>
		 *               colors.unshiftObject([
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">black</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">white</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ]);
		 *               <span class="comment">// [["black", "white"], "yellow", "red", "green", "blue"]</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function unshiftObject(obj:*):* {
			return null;
		}

		/**
		 * <p>Adds the named objects to the beginning of the array. Defers notifying
		 * observers until all objects have been added.</p>
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
		 *               <span class="keyword">var</span>
		 *               colors = [
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">red</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">green</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">blue</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ];
		 * colors.unshiftObjects([
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">black</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">white</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ]);
		 *               <span class="comment">// ["black", "white", "red", "green", "blue"]</span>
		 *               colors.unshiftObjects(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">yellow</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// Type Error: 'undefined' is not a function</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function unshiftObjects(objects:Enumerable):Object {
			return null;
		}

		/**
		 * <p>Returns a new enumerable that excludes the passed value. The default
		 * implementation returns an array regardless of the receiver type unless
		 * the receiver does not contain the value.</p>
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
		 *               arr = [
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">b</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">c</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ];
		 * arr.without(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// ["b", "c"]</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function without(value:Object):Object {
			return null;
		}

	}
}