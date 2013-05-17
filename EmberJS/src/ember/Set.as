package ember {

	import randori.webkit.dom.Element;

	[JavaScript(export="false",name="ember.Set")]
	[JavaScriptConstructor(factoryMethod="ember.Set.create(...args)")]
	public class Set {
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
		 * <p>
		 *   /**
		 *     Set to
		 *   <code>true</code>
		 *   when the object is frozen. Use this property to detect
		 *     whether your object is frozen or not.
		 * </p>
		 */
		public var isFrozen:Boolean;

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
		 * <p>// ..........................................................
		 *   // IMPLEMENT ENUMERABLE APIS
		 *   //
		 * /**
		 *     This property will change as the number of objects in the set changes.</p>
		 */
		public var length:int;

		/**
		 * <p>
		 *   Adds an object to the set. Only non-
		 *   <code>null</code>
		 *   objects can be added to a set
		 * and those can only be added once. If the object is already in the set or
		 * the passed value is null this method will have no effect.
		 * </p>
		 * <p>
		 *   This is an alias for
		 *   <code>Ember.MutableEnumerable.addObject()</code>
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
		 * 5
		 * 6</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               <span class="keyword">var</span>
		 *               colors =
		 *               <span class="keyword">new</span>
		 *               Ember.Set();
		 * colors.add(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">blue</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// ["blue"]</span>
		 *               colors.add(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">blue</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// ["blue"]</span>
		 *               colors.add(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">red</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// ["blue", "red"]</span>
		 *               colors.add(
		 *               <span class="predefined-constant">null</span>
		 *               );
		 *               <span class="comment">// ["blue", "red"]</span>
		 *               colors.add(
		 *               <span class="predefined-constant">undefined</span>
		 *               );
		 *               <span class="comment">// ["blue", "red"]</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function add(obj:Object):Object {
			return null;
		}

		/**
		 * <p>Adds each object in the passed enumerable to the set.</p>
		 * <p>
		 *   This is an alias of
		 *   <code>Ember.MutableEnumerable.addObjects()</code>
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
		 *               colors =
		 *               <span class="keyword">new</span>
		 *               Ember.Set();
		 * colors.addEach([
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
		 *               ]);
		 *               <span class="comment">// ["red", "green", "blue"]</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function addEach(objects:Enumerable):Object {
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

		public function apply(obj:Object):Object {
			return null;
		}

		/**
		 * <p>Clears the set. This is useful if you want to reuse an existing set
		 * without having to recreate it.</p>
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
		 *               colors =
		 *               <span class="keyword">new</span>
		 *               Ember.Set([
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
		 *               ]);
		 * colors.length;
		 *               <span class="comment">// 3</span>
		 *               colors.clear();
		 * colors.length;
		 *               <span class="comment">// 0</span>
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
		 * <p>/**
		 *     Override to return a copy of the receiver. Default implementation raises
		 *     an exception.</p>
		 */
		public function copy(deep:Boolean):Object {
			return null;
		}

		/**
		 * Creates a new <code>Set</code> instance.
		 */
		public function Set(arguments:Object) {
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
		public static function create(arguments:Object):Set {
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

		/**
		 * <p>Freezes the object. Once this method has been called the object should
		 * no longer allow any properties to be edited.</p>
		 */
		public function freeze():Object {
			return null;
		}

		/**
		 * <p>
		 *   If the object implements
		 *   <code>Ember.Freezable</code>
		 *   , then this will return a new
		 * copy if the object is not frozen and the receiver if the object is frozen.
		 * </p>
		 * <p>Raises an exception if you try to call this method on a object that does
		 * not support freezing.</p>
		 * <p>You should use this method whenever you want a copy of a freezable object
		 * since a freezable object can simply return itself without actually
		 * consuming more memory.</p>
		 */
		public function frozenCopy():Object {
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
		 * <p>Invokes the named method on every object in the receiver that
		 * implements it. This method corresponds to the implementation in
		 * Prototype 1.6.</p>
		 */
		public function invoke(methodName:String, args:Object):Array {
			return null;
		}

		/**
		 * <p>Returns true if the passed object is also an enumerable that contains the
		 * same objects as the receiver.</p>
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
		 *               ],
		 *     same_colors =
		 *               <span class="keyword">new</span>
		 *               Ember.Set(colors);
		 * 
		 * same_colors.isEqual(colors);
		 *               <span class="comment">// true</span>
		 *               same_colors.isEqual([
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">purple</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">brown</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ]);
		 *               <span class="comment">// false</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function isEqual(obj:Set):Boolean {
			return false;
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
		 *   Removes the last element from the set and returns it, or
		 *   <code>null</code>
		 *   if it's empty.
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
		 *               colors =
		 *               <span class="keyword">new</span>
		 *               Ember.Set([
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
		 *               ]);
		 * colors.pop();
		 *               <span class="comment">// "blue"</span>
		 *               colors.pop();
		 *               <span class="comment">// "green"</span>
		 *               colors.pop();
		 *               <span class="comment">// null</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function pop():Object {
			return null;
		}

		/**
		 * <p>Inserts the given object on to the end of the set. It returns
		 * the set itself.</p>
		 * <p>
		 *   This is an alias for
		 *   <code>Ember.MutableEnumerable.addObject()</code>
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
		 * 4</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               <span class="keyword">var</span>
		 *               colors =
		 *               <span class="keyword">new</span>
		 *               Ember.Set();
		 * colors.push(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">red</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// ["red"]</span>
		 *               colors.push(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">green</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// ["red", "green"]</span>
		 *               colors.push(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">blue</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// ["red", "green", "blue"]</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function push():Object {
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
		 * <p>
		 *   Removes the object from the set if it is found. If you pass a
		 *   <code>null</code>
		 *   value
		 * or an object that is already not in the set, this method will have no
		 * effect. This is an alias for
		 *   <code>Ember.MutableEnumerable.removeObject()</code>
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
		 * 4</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               <span class="keyword">var</span>
		 *               colors =
		 *               <span class="keyword">new</span>
		 *               Ember.Set([
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
		 *               ]);
		 * colors.remove(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">red</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// ["blue", "green"]</span>
		 *               colors.remove(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">purple</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// ["blue", "green"]</span>
		 *               colors.remove(
		 *               <span class="predefined-constant">null</span>
		 *               );
		 *               <span class="comment">// ["blue", "green"]</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function remove(obj:Object):Object {
			return null;
		}

		/**
		 * <p>Removes each object in the passed enumerable to the set.</p>
		 * <p>
		 *   This is an alias of
		 *   <code>Ember.MutableEnumerable.removeObjects()</code>
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
		 *               colors =
		 *               <span class="keyword">new</span>
		 *               Ember.Set([
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
		 *               ]);
		 * colors.removeEach([
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">red</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">blue</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ]);
		 *               <span class="comment">//  ["green"]</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function removeEach(objects:Enumerable):Object {
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

		public function reopen(arguments:Object):void {
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
		 * <p>
		 *   Removes the last element from the set and returns it, or
		 *   <code>null</code>
		 *   if it's empty.
		 * </p>
		 * <p>
		 *   This is an alias for
		 *   <code>Ember.Set.pop()</code>
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
		 * 4</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               <span class="keyword">var</span>
		 *               colors =
		 *               <span class="keyword">new</span>
		 *               Ember.Set([
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
		 *               ]);
		 * colors.shift();
		 *               <span class="comment">// "blue"</span>
		 *               colors.shift();
		 *               <span class="comment">// "green"</span>
		 *               colors.shift();
		 *               <span class="comment">// null</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function shift():Object {
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
		 * <p>Inserts the given object on to the end of the set. It returns
		 * the set itself.</p>
		 * <p>
		 *   This is an alias of
		 *   <code>Ember.Set.push()</code>
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
		 *               colors =
		 *               <span class="keyword">new</span>
		 *               Ember.Set();
		 * colors.unshift(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">red</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// ["red"]</span>
		 *               colors.unshift(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">green</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// ["red", "green"]</span>
		 *               colors.unshift(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">blue</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// ["red", "green", "blue"]</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function unshift():Object {
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