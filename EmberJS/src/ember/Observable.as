package ember {

	import randori.webkit.dom.Element;

	[JavaScript(export="false",name="ember.Observable")]
	[JavaScriptConstructor(factoryMethod="ember.Observable.create(...args)")]
	public class Observable {
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
		 * Creates a new <code>Observable</code> instance.
		 */
		public function Observable(arguments:Object) {
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
		public static function create(arguments:Object):Observable {
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

		public function detect(obj:Object):Boolean {
			return false;
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

	}
}