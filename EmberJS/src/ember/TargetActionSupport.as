package ember {

	import randori.webkit.dom.Element;

	[JavaScript(export="false",name="ember.TargetActionSupport")]
	[JavaScriptConstructor(factoryMethod="ember.TargetActionSupport.create(...args)")]
	public class TargetActionSupport {
		public function apply(obj:Object):Object {
			return null;
		}

		/**
		 * Creates a new <code>TargetActionSupport</code> instance.
		 */
		public function TargetActionSupport(arguments:Object) {
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
		public static function create(arguments:Object):TargetActionSupport {
			return null;
		}

		public function detect(obj:Object):Boolean {
			return false;
		}

		public function reopen(arguments:Object):void {
		}

		/**
		 * <p>Send an "action" with an "actionContext" to a "target". The action, actionContext
		 * and target will be retrieved from properties of the object. For example:</p>
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
		 *               App.SaveButtonView = Ember.View.extend(Ember.TargetActionSupport, {
		 *               <span class="key">target</span>
		 *               : Ember.computed.alias(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">controller</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ),
		 *               <span class="key">action</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">save</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="key">actionContext</span>
		 *               : Ember.computed.alias(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">context</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ),
		 *               <span class="function">click</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               (){
		 *               <span class="local-variable">this</span>
		 *               .triggerAction();
		 *               <span class="comment">// Sends the `save` action, along with the current context</span>
		 *               <span class="comment">// to the current controller</span>
		 *               }
		 * });
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   The
		 *   <code>target</code>
		 *   ,
		 *   <code>action</code>
		 *   , and
		 *   <code>actionContext</code>
		 *   can be provided as properties of
		 * an optional object argument to
		 *   <code>triggerAction</code>
		 *   as well.
		 * </p>
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
		 *             </pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               App.SaveButtonView = Ember.View.extend(Ember.TargetActionSupport, {
		 *               <span class="function">click</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               (){
		 *               <span class="local-variable">this</span>
		 *               .triggerAction({
		 *               <span class="key">action</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">save</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="key">target</span>
		 *               :
		 *               <span class="local-variable">this</span>
		 *               .get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">controller</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ),
		 *               <span class="key">actionContext</span>
		 *               :
		 *               <span class="local-variable">this</span>
		 *               .get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">context</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ),
		 *     });
		 *               <span class="comment">// Sends the `save` action, along with the current context</span>
		 *               <span class="comment">// to the current controller</span>
		 *               }
		 * });
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   The
		 *   <code>actionContext</code>
		 *   defaults to the object you mixing
		 *   <code>TargetActionSupport</code>
		 *   into.
		 * But
		 *   <code>target</code>
		 *   and
		 *   <code>action</code>
		 *   must be specified either as properties or with the argument
		 * to
		 *   <code>triggerAction</code>
		 *   , or a combination:
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
		 * 7
		 * 8
		 * 9</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               App.SaveButtonView = Ember.View.extend(Ember.TargetActionSupport, {
		 *               <span class="key">target</span>
		 *               : Ember.computed.alias(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">controller</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ),
		 *               <span class="function">click</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               (){
		 *               <span class="local-variable">this</span>
		 *               .triggerAction({
		 *               <span class="key">action</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">save</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               });
		 *               <span class="comment">// Sends the `save` action, along with a reference to `this`,</span>
		 *               <span class="comment">// to the current controller</span>
		 *               }
		 * });
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function triggerAction(opts:Object):Boolean {
			return false;
		}

	}
}