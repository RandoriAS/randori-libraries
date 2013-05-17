package ember {

	import randori.webkit.dom.Element;

	[JavaScript(export="false",name="ember.SortableMixin")]
	[JavaScriptConstructor(factoryMethod="ember.SortableMixin.create(...args)")]
	public class SortableMixin {
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
		 * <p>Specifies the arrangedContent's sort direction</p>
		 */
		public var sortAscending:Boolean;

		/**
		 * <p>Specifies which properties dictate the arrangedContent's sort order.</p>
		 */
		public var sortProperties:Array;

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
		 * Creates a new <code>SortableMixin</code> instance.
		 */
		public function SortableMixin(arguments:Object) {
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
		public static function create(arguments:Object):SortableMixin {
			return null;
		}

		public function detect(obj:Object):Boolean {
			return false;
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
		 * <p>
		 *   Alias for
		 *   <code>mapProperty</code>
		 * </p>
		 */
		public function getEach(key:String):Array {
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