package ember {

	import randori.webkit.dom.Element;

	[JavaScript(export="false",name="ember.ComputedProperty")]
	public class ComputedProperty {
		/**
		 * <p>In some cases, you may want to annotate computed properties with additional
		 * metadata about how they function or what values they operate on. For example,
		 * computed property functions may close over variables that are then no longer
		 * available for introspection.</p>
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
		 * <p>
		 *   The hash that you pass to the
		 *   <code>meta()</code>
		 *   function will be saved on the
		 * computed property descriptor under the
		 *   <code>_meta</code>
		 *   key. Ember runtime
		 * exposes a public API for retrieving these values from classes,
		 * via the
		 *   <code>metaForProperty()</code>
		 *   function.
		 * </p>
		 */
		public function meta(meta:Object):void {
		}

		/**
		 * <p>Sets the dependent keys on this computed property. Pass any number of
		 * arguments containing key paths that this computed property depends on.</p>
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
		 * 8</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               MyApp.president = Ember.Object.create({
		 *               <span class="key">fullName</span>
		 *               : Ember.computed(
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
		 *               <span class="comment">// Tell Ember that this computed property depends on firstName</span>
		 *               <span class="comment">// and lastName</span>
		 *               }).property(
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
		 */
		public function property(path:String):Object {
			return null;
		}

		/**
		 * <p>Call on a computed property to set it into read-only mode. When in this
		 * mode the computed property will throw an error when set.</p>
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
		 *               MyApp.person = Ember.Object.create({
		 *               <span class="function">guid</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               () {
		 *               <span class="keyword">return</span>
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">guid-guid-guid</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ;
		 *   }.property().readOnly()
		 * });
		 * 
		 * MyApp.person.set(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">guid</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">new-guid</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// will throw an exception</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function readOnly():Object {
			return null;
		}

		/**
		 * <p>Call on a computed property to set it into non-cached mode. When in this
		 * mode the computed property will not automatically cache the return value.</p>
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
		 *               MyApp.outsideService = Ember.Object.create({
		 *               <span class="function">value</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               () {
		 *               <span class="keyword">return</span>
		 *               OutsideService.getValue();
		 *   }.property().
		 *               <span class="reserved">volatile</span>
		 *               ()
		 * });
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function volatile():Object {
			return null;
		}

	}
}