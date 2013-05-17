package ember {

	import randori.webkit.dom.Element;

	[JavaScript(export="false",name="ember.Handlebars")]
	public class Handlebars {
[JavaScriptMethod(name="get")]
		/**
		 * <p>Lookup both on root and on window. If the path starts with
		 * a keyword, the corresponding object will be looked up in the
		 * template's data hash and used to resolve the path.</p>
		 */
		public function get_(root:Object, path:String, options:Object):void {
		}

		/**
		 * <p>Register a bound handlebars helper. Bound helpers behave similarly to regular
		 * handlebars helpers, with the added ability to re-render when the underlying data
		 * changes.</p>
		 * <h2>Simple example</h2>
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
		 *               Ember.Handlebars.registerBoundHelper(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">capitalize</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="keyword">function</span>
		 *               (value) {
		 *               <span class="keyword">return</span>
		 *               value.toUpperCase();
		 * });
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>The above bound helper can be used inside of templates as follows:</p>
		 * <div class="highlight handlebars ">
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
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">capitalize</span>
		 *                 <span class="attribute-name">name</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   In this case, when the
		 *   <code>name</code>
		 *   property of the template's context changes,
		 * the rendered value of the helper will update to reflect this change.
		 * </p>
		 * <h2>Example with options</h2>
		 * <p>Like normal handlebars helpers, bound helpers have access to the options
		 * passed into the helper call.</p>
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
		 *               Ember.Handlebars.registerBoundHelper(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">repeat</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="keyword">function</span>
		 *               (value, options) {
		 *               <span class="keyword">var</span>
		 *               count = options.hash.count;
		 *               <span class="keyword">var</span>
		 *               a = [];
		 *               <span class="keyword">while</span>
		 *               (a.length &lt; count){
		 *       a.push(value);
		 *   }
		 *               <span class="keyword">return</span>
		 *               a.join(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 * });
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>This helper could be used in a template as follows:</p>
		 * <div class="highlight handlebars ">
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
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">repeat</span>
		 *                 <span class="attribute-name">text</span>
		 *                 <span class="attribute-name">count</span>
		 *                 =
		 *                 <span class="attribute-value">3</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <h2>Example with bound options</h2>
		 * <p>Bound hash options are also supported. Example:</p>
		 * <div class="highlight handlebars ">
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
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">repeat</span>
		 *                 <span class="attribute-name">text</span>
		 *                 <span class="attribute-name">countBinding</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">numRepeats</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   In this example, count will be bound to the value of
		 * the
		 *   <code>numRepeats</code>
		 *   property on the context. If that property
		 * changes, the helper will be re-rendered.
		 * </p>
		 * <h2>Example with extra dependencies</h2>
		 * <p>
		 *   The
		 *   <code>Ember.Handlebars.registerBoundHelper</code>
		 *   method takes a variable length
		 * third parameter which indicates extra dependencies on the passed in value.
		 * This allows the handlebars helper to update when these dependencies change.
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
		 *               Ember.Handlebars.registerBoundHelper(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">capitalizeName</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="keyword">function</span>
		 *               (value) {
		 *               <span class="keyword">return</span>
		 *               value.get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">name</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ).toUpperCase();
		 * },
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">name</span>
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
		 * <h2>Example with multiple bound properties</h2>
		 * <p>
		 *   <code>Ember.Handlebars.registerBoundHelper</code>
		 *   supports binding to
		 * multiple properties, e.g.:
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
		 *               Ember.Handlebars.registerBoundHelper(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">concatenate</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="keyword">function</span>
		 *               () {
		 *               <span class="keyword">var</span>
		 *               values =
		 *               <span class="local-variable">arguments</span>
		 *               [
		 *               <span class="local-variable">arguments</span>
		 *               .length -
		 *               <span class="integer">1</span>
		 *               ];
		 *               <span class="keyword">return</span>
		 *               values.join(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">||</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 * });
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>Which allows for template syntax such as {{concatenate prop1 prop2}} or
		 * {{concatenate prop1 prop2 prop3}}. If any of the properties change,
		 * the helpr will re-render.  Note that dependency keys cannot be
		 * using in conjunction with multi-property helpers, since it is ambiguous
		 * which property the dependent keys would belong to.</p>
		 * <h2>Use with unbound helper</h2>
		 * <p>The {{unbound}} helper can be used with bound helper invocations
		 * to render them in their unbound form, e.g.</p>
		 * <div class="highlight handlebars ">
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
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">unbound</span>
		 *                 <span class="attribute-name">capitalize</span>
		 *                 <span class="attribute-name">name</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>In this example, if the name property changes, the helper
		 * will not re-render.</p>
		 */
		public function registerBoundHelper(name:String, func:Function, dependentKeys:String):void {
		}

	}
}