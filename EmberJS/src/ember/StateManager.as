package ember {

	import randori.webkit.dom.Element;

	[JavaScript(export="false",name="ember.StateManager")]
	[JavaScriptConstructor(factoryMethod="ember.StateManager.create(...args)")]
	public class StateManager {
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
		 * <p>The path of the current state. Returns a string representation of the current
		 * state.</p>
		 */
		public var currentPath:String;

		/**
		 * <p>
		 *   The current state from among the manager's possible states. This property should
		 * not be set directly. Use
		 *   <code>transitionTo</code>
		 *   to move between states by name.
		 * </p>
		 */
		public var currentState:State;

		/**
		 * <p>
		 *   If set to true,
		 *   <code>errorOnUnhandledEvents</code>
		 *   will cause an exception to be
		 * raised if you attempt to send an event to a state manager that is not
		 * handled by the current state or any of its parent states.
		 * </p>
		 */
		public var errorOnUnhandledEvents:Boolean;

		/**
		 * <p>A boolean value indicating whether the state takes a context.
		 * By default we assume all states take contexts.</p>
		 */
		public var hasContext:Object;

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
		 *   A Boolean value indicating whether the state is a leaf state
		 * in the state hierarchy. This is
		 *   <code>false</code>
		 *   if the state has child
		 * states; otherwise it is true.
		 * </p>
		 */
		public var isLeaf:Boolean;

		/**
		 * <p>The name of this state.</p>
		 */
		public var name:String;

		/**
		 * <p>isState: true,</p>
		 * <p>/**
		 *   A reference to the parent state.</p>
		 */
		public var parentState:State;

		/**
		 * <p>The full path to this state.</p>
		 */
		public var path:String;

		/**
		 * <p>The name of transitionEvent that this stateManager will dispatch</p>
		 */
		public var transitionEvent:String;

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
		 * Creates a new <code>StateManager</code> instance.
		 */
		public function StateManager(arguments:Object) {
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
		public static function create(arguments:Object):StateManager {
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
		 * <p>Finds a state by its state path.</p>
		 * <p>Example:</p>
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
		 *               manager = Ember.StateManager.create({
		 *               <span class="key">root</span>
		 *               : Ember.State.create({
		 *               <span class="key">dashboard</span>
		 *               : Ember.State.create()
		 *   })
		 * });
		 * 
		 * manager.getStateByPath(manager,
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">root.dashboard</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               )
		 *               <span class="comment">// returns the dashboard state</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function getStateByPath(root:State, path:String):Object {
			return null;
		}

		/**
		 * <p>
		 *   A state stores its child states in its
		 *   <code>states</code>
		 *   hash.
		 * This code takes a path like
		 *   <code>posts.show</code>
		 *   and looks
		 * up
		 *   <code>root.states.posts.states.show</code>
		 *   .
		 * </p>
		 * <p>
		 *   It returns a list of all of the states from the
		 * root, which is the list of states to call
		 *   <code>enter</code>
		 *   on.
		 * </p>
		 */
		public function getStatesInPath(root:Object, path:Object):void {
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
		 * <p>Creates an action function for transitioning to the named state while
		 * preserving context.</p>
		 * <p>The following example StateManagers are equivalent:</p>
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
		 * 14
		 * 15
		 *             </pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               aManager = Ember.StateManager.create({
		 *               <span class="key">stateOne</span>
		 *               : Ember.State.create({
		 *               <span class="key">changeToStateTwo</span>
		 *               : Ember.State.transitionTo(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">stateTwo</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               )
		 *   }),
		 *               <span class="key">stateTwo</span>
		 *               : Ember.State.create({})
		 * })
		 * 
		 * bManager = Ember.StateManager.create({
		 *               <span class="key">stateOne</span>
		 *               : Ember.State.create({
		 *               <span class="function">changeToStateTwo</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               (manager, context){
		 *       manager.transitionTo(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">stateTwo</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               , context)
		 *     }
		 *   }),
		 *               <span class="key">stateTwo</span>
		 *               : Ember.State.create({})
		 * })
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public static function transitionTo(target:String):void {
		}

	}
}