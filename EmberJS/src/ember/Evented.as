package ember {

	import randori.webkit.dom.Element;

	[JavaScript(export="false",name="ember.Evented")]
	[JavaScriptConstructor(factoryMethod="ember.Evented.create(...args)")]
	public class Evented {
		public function apply(obj:Object):Object {
			return null;
		}

		/**
		 * Creates a new <code>Evented</code> instance.
		 */
		public function Evented(arguments:Object) {
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
		public static function create(arguments:Object):Evented {
			return null;
		}

		public function detect(obj:Object):Boolean {
			return false;
		}

		/**
		 * <p>Checks to see if object has any subscriptions for named event.</p>
		 */
		public function has(name:String):Boolean {
			return false;
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

		public function reopen(arguments:Object):void {
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