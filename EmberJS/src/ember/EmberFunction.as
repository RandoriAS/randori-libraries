package ember {

	import randori.webkit.dom.Element;

	[JavaScript(export="false",name="ember.Function")]
	public class EmberFunction {
		/**
		 * <p>
		 *   The
		 *   <code>observes</code>
		 *   extension of Javascript's Function prototype is available
		 * when
		 *   <code>Ember.EXTEND_PROTOTYPES</code>
		 *   or
		 *   <code>Ember.EXTEND_PROTOTYPES.Function</code>
		 *   is
		 * true, which is the default.
		 * </p>
		 * <p>
		 *   You can observe property changes simply by adding the
		 *   <code>observes</code>
		 *   call to the end of your method declarations in classes that you write.
		 * For example:
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
		 *               Ember.Object.create({
		 *               <span class="function">valueObserver</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               () {
		 *               <span class="comment">// Executes whenever the "value" property changes</span>
		 *               }.observes(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">value</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               )
		 * });
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>See {{#crossLink "Ember.Observable/observes"}}{{/crossLink}}</p>
		 */
		public function observes():void {
		}

		/**
		 * <p>
		 *   The
		 *   <code>observesBefore</code>
		 *   extension of Javascript's Function prototype is
		 * available when
		 *   <code>Ember.EXTEND_PROTOTYPES</code>
		 *   or
		 *   <code>Ember.EXTEND_PROTOTYPES.Function</code>
		 *   is true, which is the default.
		 * </p>
		 * <p>
		 *   You can get notified when a property changes is about to happen by
		 * by adding the
		 *   <code>observesBefore</code>
		 *   call to the end of your method
		 * declarations in classes that you write. For example:
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
		 *               Ember.Object.create({
		 *               <span class="function">valueObserver</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               () {
		 *               <span class="comment">// Executes whenever the "value" property is about to change</span>
		 *               }.observesBefore(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">value</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               )
		 * });
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>See {{#crossLink "Ember.Observable/observesBefore"}}{{/crossLink}}</p>
		 */
		public function observesBefore():void {
		}

		/**
		 * <p>
		 *   The
		 *   <code>property</code>
		 *   extension of Javascript's Function prototype is available
		 * when
		 *   <code>Ember.EXTEND_PROTOTYPES</code>
		 *   or
		 *   <code>Ember.EXTEND_PROTOTYPES.Function</code>
		 *   is
		 *   <code>true</code>
		 *   , which is the default.
		 * </p>
		 * <p>Computed properties allow you to treat a function like a property:</p>
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
		 *               MyApp.president = Ember.Object.create({
		 *               <span class="key">firstName</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">Barack</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="key">lastName</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">Obama</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="function">fullName</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               () {
		 *               <span class="keyword">return</span>
		 *               <span class="local-variable">this</span>
		 *               .get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">firstName</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ) +
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content"/>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               +
		 *               <span class="local-variable">this</span>
		 *               .get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">lastName</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// Call this flag to mark the function as a property</span>
		 *               }.property()
		 * });
		 * 
		 * MyApp.president.get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">fullName</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// "Barack Obama"</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>Treating a function like a property is useful because they can work with
		 * bindings, just like any other property.</p>
		 * <p>
		 *   Many computed properties have dependencies on other properties. For
		 * example, in the above example, the
		 *   <code>fullName</code>
		 *   property depends on
		 *   <code>firstName</code>
		 *   and
		 *   <code>lastName</code>
		 *   to determine its value. You can tell Ember
		 * about these dependencies like this:
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
		 *               11
		 *             </pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               MyApp.president = Ember.Object.create({
		 *               <span class="key">firstName</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">Barack</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="key">lastName</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">Obama</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ,
		 *               <span class="function">fullName</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               () {
		 *               <span class="keyword">return</span>
		 *               <span class="local-variable">this</span>
		 *               .get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">firstName</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ) +
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content"/>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               +
		 *               <span class="local-variable">this</span>
		 *               .get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">lastName</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// Tell Ember.js that this computed property depends on firstName</span>
		 *               <span class="comment">// and lastName</span>
		 *               }.property(
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
		 * });
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   Make sure you list these dependencies so Ember knows when to update
		 * bindings that connect to a computed property. Changing a dependency
		 * will not immediately trigger an update of the computed property, but
		 * will instead clear the cache so that it is updated when the next
		 *   <code>get</code>
		 *   is called on the property.
		 * </p>
		 * <p>See {{#crossLink "Ember.ComputedProperty"}}{{/crossLink}},
		 *   {{#crossLink "Ember/computed"}}{{/crossLink}}</p>
		 */
		public function property():void {
		}

	}
}