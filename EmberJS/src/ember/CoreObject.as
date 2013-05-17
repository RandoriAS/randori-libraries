package ember {

	import randori.webkit.dom.Element;

	[JavaScript(export="false",name="ember.CoreObject")]
	public class CoreObject {
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

	}
}