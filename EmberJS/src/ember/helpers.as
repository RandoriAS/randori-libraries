package ember {

	import randori.webkit.dom.Element;

	[JavaScript(export="false",name="ember.helpers")]
	public class helpers {
		/**
		 * <p>
		 *   The
		 *   <code>{{action}}</code>
		 *   helper registers an HTML element within a template for DOM
		 * event handling and forwards that interaction to the view's controller
		 * or supplied
		 *   <code>target</code>
		 *   option (see 'Specifying a Target').
		 * </p>
		 * <p>If the view's controller does not implement the event, the event is sent
		 * to the current route, and it bubbles up the route hierarchy from there.</p>
		 * <p>User interaction with that element will invoke the supplied action name on
		 * the appropriate target.</p>
		 * <p>Given the following Handlebars template on the page</p>
		 * <div class="highlight handlebars ">
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
		 *               <span class="tag">&lt;script</span>
		 *               <span class="attribute-name">type</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">text/x-handlebars</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="attribute-name">data-template-name</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">a-template</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               <span class="inline">&lt;div</span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">action</span>
		 *                 <span class="attribute-name">anActionName</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="error">&gt;</span>
		 *               click me
		 *               <span class="tag">&lt;/div&gt;</span>
		 *               <span class="tag">&lt;/script&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>And application code</p>
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
		 *               AController = Ember.Controller.extend({
		 *               <span class="function">anActionName</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               () {}
		 * });
		 * 
		 * AView = Ember.View.extend({
		 *               <span class="key">controller</span>
		 *               : AController.create(),
		 *               <span class="key">templateName</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">a-template</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               });
		 * 
		 * aView = AView.create();
		 * aView.appendTo(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">body</span>
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
		 * <p>Will results in the following rendered HTML</p>
		 * <div class="highlight html ">
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
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">data-ember-action</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">1</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               click me
		 *               <span class="tag">&lt;/div&gt;</span>
		 *               <span class="tag">&lt;/div&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   Clicking "click me" will trigger the
		 *   <code>anActionName</code>
		 *   method of the
		 *   <code>AController</code>
		 *   . In this case, no additional parameters will be passed.
		 * </p>
		 * <p>If you provide additional parameters to the helper:</p>
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
		 *               <span class="tag">&lt;button</span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">action</span>
		 *                 <span class="error">'</span>
		 *                 <span class="attribute-name">edit</span>
		 *                 <span class="error">'</span>
		 *                 <span class="attribute-name">post</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               Edit
		 *               <span class="tag">&lt;/button&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>Those parameters will be passed along as arguments to the JavaScript
		 * function implementing the action.</p>
		 * <h3>Event Propagation</h3>
		 * <p>
		 *   Events triggered through the action helper will automatically have
		 *   <code>.preventDefault()</code>
		 *   called on them. You do not need to do so in your event
		 * handlers.
		 * </p>
		 * <p>
		 *   To also disable bubbling, pass
		 *   <code>bubbles=false</code>
		 *   to the helper:
		 * </p>
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
		 *               <span class="tag">&lt;button</span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">action</span>
		 *                 <span class="error">'</span>
		 *                 <span class="attribute-name">edit</span>
		 *                 <span class="error">'</span>
		 *                 <span class="attribute-name">post</span>
		 *                 <span class="attribute-name">bubbles</span>
		 *                 =
		 *                 <span class="attribute-value">false</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               Edit
		 *               <span class="tag">&lt;/button&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   If you need the default handler to trigger you should either register your
		 * own event handler, or use event methods on your view class. See
		 *   <code>Ember.View</code>
		 *   'Responding to Browser Events' for more information.
		 * </p>
		 * <h3>Specifying DOM event type</h3>
		 * <p>
		 *   By default the
		 *   <code>{{action}}</code>
		 *   helper registers for DOM
		 *   <code>click</code>
		 *   events. You can
		 * supply an
		 *   <code>on</code>
		 *   option to the helper to specify a different DOM event name:
		 * </p>
		 * <div class="highlight handlebars ">
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
		 *               <span class="tag">&lt;script</span>
		 *               <span class="attribute-name">type</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">text/x-handlebars</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="attribute-name">data-template-name</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">a-template</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               <span class="inline">&lt;div</span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">action</span>
		 *                 <span class="attribute-name">anActionName</span>
		 *                 <span class="attribute-name">on</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">doubleClick</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="error">&gt;</span>
		 *               click me
		 *               <span class="tag">&lt;/div&gt;</span>
		 *               <span class="tag">&lt;/script&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   See
		 *   <code>Ember.View</code>
		 *   'Responding to Browser Events' for a list of
		 * acceptable DOM event names.
		 * </p>
		 * <p>
		 *   NOTE: Because
		 *   <code>{{action}}</code>
		 *   depends on Ember's event dispatch system it will
		 * only function if an
		 *   <code>Ember.EventDispatcher</code>
		 *   instance is available. An
		 *   <code>Ember.EventDispatcher</code>
		 *   instance will be created when a new
		 *   <code>Ember.Application</code>
		 *   is created. Having an instance of
		 *   <code>Ember.Application</code>
		 *   will satisfy this
		 * requirement.
		 * </p>
		 * <h3>Specifying whitelisted modifier keys</h3>
		 * <p>
		 *   By default the
		 *   <code>{{action}}</code>
		 *   helper will ignore click event with pressed modifier
		 * keys. You can supply an
		 *   <code>allowedKeys</code>
		 *   option to specify which keys should not be ignored.
		 * </p>
		 * <div class="highlight handlebars ">
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
		 *               <span class="tag">&lt;script</span>
		 *               <span class="attribute-name">type</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">text/x-handlebars</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="attribute-name">data-template-name</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">a-template</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               <span class="inline">&lt;div</span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">action</span>
		 *                 <span class="attribute-name">anActionName</span>
		 *                 <span class="attribute-name">allowedKeys</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">alt</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="error">&gt;</span>
		 *               click me
		 *               <span class="tag">&lt;/div&gt;</span>
		 *               <span class="tag">&lt;/script&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   This way the
		 *   <code>{{action}}</code>
		 *   will fire when clicking with the alt key pressed down.
		 * </p>
		 * <h3>Specifying a Target</h3>
		 * <p>
		 *   There are several possible target objects for
		 *   <code>{{action}}</code>
		 *   helpers:
		 * </p>
		 * <p>
		 *   In a typical Ember application, where views are managed through use of the
		 *   <code>{{outlet}}</code>
		 *   helper, actions will bubble to the current controller, then
		 * to the current route, and then up the route hierarchy.
		 * </p>
		 * <p>
		 *   Alternatively, a
		 *   <code>target</code>
		 *   option can be provided to the helper to change
		 * which object will receive the method call. This option must be a path
		 * path to an object, accessible in the current context:
		 * </p>
		 * <div class="highlight handlebars ">
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
		 *               <span class="tag">&lt;script</span>
		 *               <span class="attribute-name">type</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">text/x-handlebars</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="attribute-name">data-template-name</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">a-template</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               <span class="inline">&lt;div</span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">action</span>
		 *                 <span class="attribute-name">anActionName</span>
		 *                 <span class="attribute-name">target</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">MyApplication.someObject</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="error">&gt;</span>
		 *               click me
		 *               <span class="tag">&lt;/div&gt;</span>
		 *               <span class="tag">&lt;/script&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   Clicking "click me" in the rendered HTML of the above template will trigger
		 * the
		 *   <code>anActionName</code>
		 *   method of the object at
		 *   <code>MyApplication.someObject</code>
		 *   .
		 * </p>
		 * <p>If an action's target does not implement a method that matches the supplied
		 * action name an error will be thrown.</p>
		 * <div class="highlight handlebars ">
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
		 *               <span class="tag">&lt;script</span>
		 *               <span class="attribute-name">type</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">text/x-handlebars</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="attribute-name">data-template-name</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">a-template</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               <span class="inline">&lt;div</span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">action</span>
		 *                 <span class="attribute-name">aMethodNameThatIsMissing</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="error">&gt;</span>
		 *               click me
		 *               <span class="tag">&lt;/div&gt;</span>
		 *               <span class="tag">&lt;/script&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>With the following application code</p>
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
		 *               AView = Ember.View.extend({
		 *   templateName;
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">a-template</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="comment">// note: no method 'aMethodNameThatIsMissing'</span>
		 *               <span class="function">anActionName</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               (event) {}
		 * });
		 * 
		 * aView = AView.create();
		 * aView.appendTo(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">body</span>
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
		 *   Will throw
		 *   <code>Uncaught TypeError: Cannot call method 'call' of undefined</code>
		 *   when
		 * "click me" is clicked.
		 * </p>
		 * <h3>Additional Parameters</h3>
		 * <p>
		 *   You may specify additional parameters to the
		 *   <code>{{action}}</code>
		 *   helper. These
		 * parameters are passed along as the arguments to the JavaScript function
		 * implementing the action.
		 * </p>
		 * <div class="highlight handlebars ">
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
		 *               <span class="tag">&lt;script</span>
		 *               <span class="attribute-name">type</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">text/x-handlebars</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="attribute-name">data-template-name</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">a-template</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               <span class="inline"/>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{#</span>
		 *                 <span class="attribute-name">each</span>
		 *                 <span class="attribute-name">person</span>
		 *                 <span class="attribute-name">in</span>
		 *                 <span class="attribute-name">people</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="tag">&lt;div</span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">action</span>
		 *                 <span class="attribute-name">edit</span>
		 *                 <span class="attribute-name">person</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               click me
		 *               <span class="tag">&lt;/div&gt;</span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{/</span>
		 *                 <span class="attribute-name">each</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="tag">&lt;/script&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   Clicking "click me" will trigger the
		 *   <code>edit</code>
		 *   method on the current view's
		 * controller with the current person as a parameter.
		 * </p>
		 */
		public function action(actionName:String, context:Object, options:Object):void {
		}

		/**
		 * <p>
		 *   <code>bindAttr</code>
		 *   allows you to create a binding between DOM element attributes and
		 * Ember objects. For example:
		 * </p>
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
		 *               <span class="tag">&lt;img</span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">bindAttr</span>
		 *                 <span class="attribute-name">src</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">imageUrl</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="attribute-name">alt</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">imageTitle</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   The above handlebars template will fill the
		 *   <code>&lt;img&gt;</code>
		 *   's
		 *   <code>src</code>
		 *   attribute will
		 * the value of the property referenced with
		 *   <code>"imageUrl"</code>
		 *   and its
		 *   <code>alt</code>
		 *   attribute with the value of the property referenced with
		 *   <code>"imageTitle"</code>
		 *   .
		 * </p>
		 * <p>If the rendering context of this template is the following object:</p>
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
		 *               {
		 *               <span class="key">imageUrl</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">http://lolcats.info/haz-a-funny</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="key">imageTitle</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">A humorous image of a cat</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               }
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>The resulting HTML output will be:</p>
		 * <div class="highlight html ">
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
		 *               <span class="tag">&lt;img</span>
		 *               <span class="attribute-name">src</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">http://lolcats.info/haz-a-funny</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="attribute-name">alt</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">A humorous image of a cat</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   <code>bindAttr</code>
		 *   cannot redeclare existing DOM element attributes. The use of
		 *   <code>src</code>
		 *   in the following
		 *   <code>bindAttr</code>
		 *   example will be ignored and the hard coded value
		 * of
		 *   <code>src="/failwhale.gif"</code>
		 *   will take precedence:
		 * </p>
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
		 *               <span class="tag">&lt;img</span>
		 *               <span class="attribute-name">src</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">/failwhale.gif</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">bindAttr</span>
		 *                 <span class="attribute-name">src</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">imageUrl</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="attribute-name">alt</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">imageTitle</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <h3>
		 *   <code>bindAttr</code>
		 *   and the
		 *   <code>class</code>
		 *   attribute
		 * </h3>
		 * <p>
		 *   <code>bindAttr</code>
		 *   supports a special syntax for handling a number of cases unique
		 * to the
		 *   <code>class</code>
		 *   DOM element attribute. The
		 *   <code>class</code>
		 *   attribute combines
		 * multiple discreet values into a single attribute as a space-delimited
		 * list of strings. Each string can be:
		 * </p>
		 * <ul>
		 *   <li>a string return value of an object's property.</li>
		 *   <li>a boolean return value of an object's property</li>
		 *   <li>a hard-coded value</li>
		 * </ul>
		 * <p>
		 *   A string return value works identically to other uses of
		 *   <code>bindAttr</code>
		 *   . The
		 * return value of the property will become the value of the attribute. For
		 * example, the following view and template:
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
		 *               AView = Ember.View.extend({
		 *               <span class="function">someProperty</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               (){
		 *               <span class="keyword">return</span>
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">aValue</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ;
		 *     }.property()
		 *   })
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
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
		 *               <span class="tag">&lt;img</span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">bindAttr</span>
		 *                 <span class="attribute-name">class</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">view.someProperty</span>
		 *                 </span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>Result in the following rendered output:</p>
		 * <div class="highlight html ">
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
		 *               <span class="tag">&lt;img</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">aValue</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   A boolean return value will insert a specified class name if the property
		 * returns
		 *   <code>true</code>
		 *   and remove the class name if the property returns
		 *   <code>false</code>
		 *   .
		 * </p>
		 * <p>
		 *   A class name is provided via the syntax
		 *   <code>somePropertyName:class-name-if-true</code>
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
		 * 3</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               AView = Ember.View.extend({
		 *               <span class="key">someBool</span>
		 *               :
		 *               <span class="predefined-constant">true</span>
		 *               })
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
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
		 *               <span class="tag">&lt;img</span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">bindAttr</span>
		 *                 <span class="attribute-name">class</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">view.someBool:class-name-if-true</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>Result in the following rendered output:</p>
		 * <div class="highlight html ">
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
		 *               <span class="tag">&lt;img</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">class-name-if-true</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>An additional section of the binding can be provided if you want to
		 * replace the existing class instead of removing it when the boolean
		 * value changes:</p>
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
		 *               <span class="tag">&lt;img</span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">bindAttr</span>
		 *                 <span class="attribute-name">class</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">view.someBool:class-name-if-true:class-name-if-false</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   A hard-coded value can be used by prepending
		 *   <code>:</code>
		 *   to the desired
		 * class name:
		 *   <code>:class-name-to-always-apply</code>
		 *   .
		 * </p>
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
		 *               <span class="tag">&lt;img</span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">bindAttr</span>
		 *                 <span class="attribute-name">class</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">:class-name-to-always-apply</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>Results in the following rendered output:</p>
		 * <div class="highlight html ">
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
		 *               <span class="tag">&lt;img</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">class-name-to-always-apply</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>All three strategies - string return value, boolean return value, and
		 * hard-coded value – can be combined in a single declaration:</p>
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
		 *               <span class="tag">&lt;img</span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">bindAttr</span>
		 *                 <span class="attribute-name">class</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">:class-name-to-always-apply view.someBool:class-name-if-true view.someProperty</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function bindAttr(options:Object):Object {
			return null;
		}

		/**
		 * <p>
		 *   <code>{{collection}}</code>
		 *   is a
		 *   <code>Ember.Handlebars</code>
		 *   helper for adding instances of
		 *   <code>Ember.CollectionView</code>
		 *   to a template. See
		 *   <code>Ember.CollectionView</code>
		 *   for
		 * additional information on how a
		 *   <code>CollectionView</code>
		 *   functions.
		 * </p>
		 * <p>
		 *   <code>{{collection}}</code>
		 *   's primary use is as a block helper with a
		 *   <code>contentBinding</code>
		 *   option pointing towards an
		 *   <code>Ember.Array</code>
		 *   -compatible object. An
		 *   <code>Ember.View</code>
		 *   instance will be created for each item in its
		 *   <code>content</code>
		 *   property. Each view
		 * will have its own
		 *   <code>content</code>
		 *   property set to the appropriate item in the
		 * collection.
		 * </p>
		 * <p>The provided block will be applied as the template for each item's view.</p>
		 * <p>
		 *   Given an empty
		 *   <code>&lt;body&gt;</code>
		 *   the following template:
		 * </p>
		 * <div class="highlight handlebars ">
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
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{#</span>
		 *                 <span class="attribute-name">collection</span>
		 *                 <span class="attribute-name">contentBinding</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">App.items</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               Hi
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">view.content.name</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{/</span>
		 *                 <span class="attribute-name">collection</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>And the following application code</p>
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
		 *               App = Ember.Application.create()
		 * App.items = [
		 *   Ember.Object.create({
		 *               <span class="key">name</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Dave</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               }),
		 *   Ember.Object.create({
		 *               <span class="key">name</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Mary</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               }),
		 *   Ember.Object.create({
		 *               <span class="key">name</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Sara</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               })
		 * ]
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>Will result in the HTML structure below</p>
		 * <div class="highlight html ">
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
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               Hi Dave
		 *               <span class="tag">&lt;/div&gt;</span>
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               Hi Mary
		 *               <span class="tag">&lt;/div&gt;</span>
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               Hi Sara
		 *               <span class="tag">&lt;/div&gt;</span>
		 *               <span class="tag">&lt;/div&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <h3>Blockless Use</h3>
		 * <p>
		 *   If you provide an
		 *   <code>itemViewClass</code>
		 *   option that has its own
		 *   <code>template</code>
		 *   you can
		 * omit the block.
		 * </p>
		 * <p>The following template:</p>
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
		 *                 <span class="attribute-name">collection</span>
		 *                 <span class="attribute-name">contentBinding</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">App.items</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="attribute-name">itemViewClass</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">App.AnItemView</span>
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
		 * <p>And application code</p>
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
		 *               App = Ember.Application.create();
		 * App.items = [
		 *   Ember.Object.create({
		 *               <span class="key">name</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Dave</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               }),
		 *   Ember.Object.create({
		 *               <span class="key">name</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Mary</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               }),
		 *   Ember.Object.create({
		 *               <span class="key">name</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Sara</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               })
		 * ];
		 * 
		 * App.AnItemView = Ember.View.extend({
		 *               <span class="key">template</span>
		 *               : Ember.Handlebars.compile(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">Greetings {{view.content.name}}</span>
		 *                 <span class="delimiter">"</span>
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
		 * <p>Will result in the HTML structure below</p>
		 * <div class="highlight html ">
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
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               Greetings Dave
		 *               <span class="tag">&lt;/div&gt;</span>
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               Greetings Mary
		 *               <span class="tag">&lt;/div&gt;</span>
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               Greetings Sara
		 *               <span class="tag">&lt;/div&gt;</span>
		 *               <span class="tag">&lt;/div&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <h3>Specifying a CollectionView subclass</h3>
		 * <p>
		 *   By default the
		 *   <code>{{collection}}</code>
		 *   helper will create an instance of
		 *   <code>Ember.CollectionView</code>
		 *   . You can supply a
		 *   <code>Ember.CollectionView</code>
		 *   subclass to
		 * the helper by passing it as the first argument:
		 * </p>
		 * <div class="highlight handlebars ">
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
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{#</span>
		 *                 <span class="attribute-name">collection</span>
		 *                 <span class="attribute-name">App.MyCustomCollectionClass</span>
		 *                 <span class="attribute-name">contentBinding</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">App.items</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               Hi
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">view.content.name</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{/</span>
		 *                 <span class="attribute-name">collection</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <h3>
		 *   Forwarded
		 *   <code>item.*</code>
		 *   -named Options
		 * </h3>
		 * <p>
		 *   As with the
		 *   <code>{{view}}</code>
		 *   , helper options passed to the
		 *   <code>{{collection}}</code>
		 *   will be
		 * set on the resulting
		 *   <code>Ember.CollectionView</code>
		 *   as properties. Additionally,
		 * options prefixed with
		 *   <code>item</code>
		 *   will be applied to the views rendered for each
		 * item (note the camelcasing):
		 * </p>
		 * <div class="highlight handlebars ">
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
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{#</span>
		 *                 <span class="attribute-name">collection</span>
		 *                 <span class="attribute-name">contentBinding</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">App.items</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="attribute-name">itemTagName</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">p</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="attribute-name">itemClassNames</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">greeting</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               Howdy
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">view.content.name</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{/</span>
		 *                 <span class="attribute-name">collection</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>Will result in the following HTML structure:</p>
		 * <div class="highlight html ">
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
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               <span class="tag">&lt;p</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view greeting</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               Howdy Dave
		 *               <span class="tag">&lt;/p&gt;</span>
		 *               <span class="tag">&lt;p</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view greeting</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               Howdy Mary
		 *               <span class="tag">&lt;/p&gt;</span>
		 *               <span class="tag">&lt;p</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view greeting</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               Howdy Sara
		 *               <span class="tag">&lt;/p&gt;</span>
		 *               <span class="tag">&lt;/div&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function collection(path:String, options:Object):Object {
			return null;
		}

		/**
		 * <p>
		 *   The control helper is currently under development and is considered experimental.
		 * To enable it, set
		 *   <code>ENV.EXPERIMENTAL_CONTROL_HELPER = true</code>
		 *   before requiring Ember.
		 * </p>
		 */
		public function control(path:String, modelPath:String, options:Object):Object {
			return null;
		}

		/**
		 * <p>
		 *   Execute the
		 *   <code>debugger</code>
		 *   statement in the current context.
		 * </p>
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
		 *                 <span class="attribute-name">debugger</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function debugger(property:String):void {
		}

		/**
		 * <p>
		 *   The
		 *   <code>{{#each}}</code>
		 *   helper loops over elements in a collection, rendering its
		 * block once for each item. It is an extension of the base Handlebars
		 *   <code>{{#each}}</code>
		 *   helper:
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
		 *               Developers = [{
		 *               <span class="key">name</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Yehuda</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               },{
		 *               <span class="key">name</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Tom</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               }, {
		 *               <span class="key">name</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Paul</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               }];
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <div class="highlight handlebars ">
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
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{#</span>
		 *                 <span class="attribute-name">each</span>
		 *                 <span class="attribute-name">Developers</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">name</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{/</span>
		 *                 <span class="attribute-name">each</span>
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
		 *   <code>{{each}}</code>
		 *   supports an alternative syntax with element naming:
		 * </p>
		 * <div class="highlight handlebars ">
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
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{#</span>
		 *                 <span class="attribute-name">each</span>
		 *                 <span class="attribute-name">person</span>
		 *                 <span class="attribute-name">in</span>
		 *                 <span class="attribute-name">Developers</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">person.name</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{/</span>
		 *                 <span class="attribute-name">each</span>
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
		 *   When looping over objects that do not have properties,
		 *   <code>{{this}}</code>
		 *   can be used
		 * to render the object:
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
		 *               DeveloperNames = [
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Yehuda</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Tom</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Paul</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ]
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <div class="highlight handlebars ">
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
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{#</span>
		 *                 <span class="attribute-name">each</span>
		 *                 <span class="attribute-name">DeveloperNames</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">this</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{/</span>
		 *                 <span class="attribute-name">each</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <h3>{{else}} condition</h3>
		 * <p>
		 *   <code>{{#each}}</code>
		 *   can have a matching
		 *   <code>{{else}}</code>
		 *   . The contents of this block will render
		 * if the collection is empty.
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
		 *               {{
		 *               <span class="error">#</span>
		 *               each person
		 *               <span class="keyword">in</span>
		 *               Developers}}
		 *   {{person.name}}
		 * {{
		 *               <span class="keyword">else</span>
		 *               }}
		 *               <span class="tag">&lt;p&gt;</span>
		 *               Sorry, nobody is available for this task.
		 *               <span class="tag">&lt;/p&gt;</span>
		 *               {{
		 *               <span class="regexp">
		 *                 <span class="delimiter">/</span>
		 *                 <span class="content">each}}</span>
		 *               </span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <h3>Specifying a View class for items</h3>
		 * <p>
		 *   If you provide an
		 *   <code>itemViewClass</code>
		 *   option that references a view class
		 * with its own
		 *   <code>template</code>
		 *   you can omit the block.
		 * </p>
		 * <p>The following template:</p>
		 * <div class="highlight handlebars ">
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
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{#</span>
		 *                 <span class="attribute-name">view</span>
		 *                 <span class="attribute-name">App.MyView</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">each</span>
		 *                 <span class="attribute-name">view.items</span>
		 *                 <span class="attribute-name">itemViewClass</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">App.AnItemView</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{/</span>
		 *                 <span class="attribute-name">view</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>And application code</p>
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
		 *               App = Ember.Application.create({
		 *               <span class="key">MyView</span>
		 *               : Ember.View.extend({
		 *               <span class="key">items</span>
		 *               : [
		 *       Ember.Object.create({
		 *               <span class="key">name</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Dave</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               }),
		 *       Ember.Object.create({
		 *               <span class="key">name</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Mary</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               }),
		 *       Ember.Object.create({
		 *               <span class="key">name</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">Sara</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               })
		 *     ]
		 *   })
		 * });
		 * 
		 * App.AnItemView = Ember.View.extend({
		 *               <span class="key">template</span>
		 *               : Ember.Handlebars.compile(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">Greetings {{name}}</span>
		 *                 <span class="delimiter">"</span>
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
		 * <p>Will result in the HTML structure below</p>
		 * <div class="highlight html ">
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
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               Greetings Dave
		 *               <span class="tag">&lt;/div&gt;</span>
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               Greetings Mary
		 *               <span class="tag">&lt;/div&gt;</span>
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               Greetings Sara
		 *               <span class="tag">&lt;/div&gt;</span>
		 *               <span class="tag">&lt;/div&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <h3>Representing each item with a Controller.</h3>
		 * <p>
		 *   By default the controller lookup within an
		 *   <code>{{#each}}</code>
		 *   block will be
		 * the controller of the template where the
		 *   <code>{{#each}}</code>
		 *   was used. If each
		 * item needs to be presented by a custom controller you can provide a
		 *   <code>itemController</code>
		 *   option which references a controller by lookup name.
		 * Each item in the loop will be wrapped in an instance of this controller
		 * and the item itself will be set to the
		 *   <code>content</code>
		 *   property of that controller.
		 * </p>
		 * <p>This is useful in cases where properties of model objects need transformation
		 * or synthesis for display:</p>
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
		 *               App.DeveloperController = Ember.ObjectController.extend({
		 *               <span class="function">isAvailableForHire</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               (){
		 *               <span class="keyword">return</span>
		 *               !
		 *               <span class="local-variable">this</span>
		 *               .get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">content.isEmployed</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ) &amp;&amp;
		 *               <span class="local-variable">this</span>
		 *               .get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">content.isSeekingWork</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *   }.property(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">isEmployed</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ,
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">isSeekingWork</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               )
		 * })
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <div class="highlight handlebars ">
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
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{#</span>
		 *                 <span class="attribute-name">each</span>
		 *                 <span class="attribute-name">person</span>
		 *                 <span class="attribute-name">in</span>
		 *                 <span class="attribute-name">developers</span>
		 *                 <span class="attribute-name">itemController</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">developer</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">person.name</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{#</span>
		 *                 <span class="attribute-name">if</span>
		 *                 <span class="attribute-name">person.isAvailableForHire</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               Hire me!
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{/</span>
		 *                 <span class="attribute-name">if</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{/</span>
		 *                 <span class="attribute-name">each</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function each(name:String, path:String, options:Object):void {
		}

[JavaScriptMethod(name="if")]
		/**
		 * <p>
		 *   See
		 *   <code>boundIf</code>
		 * </p>
		 */
		public function if_(context:Function, options:Object):Object {
			return null;
		}

		public function linkTo(routeName:String, context:Object):Object {
			return null;
		}

		/**
		 * <p>
		 *   <code>log</code>
		 *   allows you to output the value of a value in the current rendering
		 * context.
		 * </p>
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
		 *                 <span class="attribute-name">log</span>
		 *                 <span class="attribute-name">myVariable</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function log(property:String):void {
		}

		/**
		 * <p>
		 *   The
		 *   <code>outlet</code>
		 *   helper is a placeholder that the router will fill in with
		 * the appropriate template based on the current state of the application.
		 * </p>
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
		 *                 <span class="attribute-name">outlet</span>
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
		 *   By default, a template based on Ember's naming conventions will be rendered
		 * into the
		 *   <code>outlet</code>
		 *   (e.g.
		 *   <code>App.PostsRoute</code>
		 *   will render the
		 *   <code>posts</code>
		 *   template).
		 * </p>
		 * <p>
		 *   You can render a different template by using the
		 *   <code>render()</code>
		 *   method in the
		 * route's
		 *   <code>renderTemplate</code>
		 *   hook. The following will render the
		 *   <code>favoritePost</code>
		 *   template into the
		 *   <code>outlet</code>
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
		 *               App.PostsRoute = Ember.Route.extend({
		 *               <span class="function">renderTemplate</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               () {
		 *               <span class="local-variable">this</span>
		 *               .render(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">favoritePost</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *   }
		 * });
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>You can create custom named outlets for more control.</p>
		 * <div class="highlight handlebars ">
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
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">outlet</span>
		 *                 <span class="attribute-name">favoritePost</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">outlet</span>
		 *                 <span class="attribute-name">posts</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>Then you can define what template is rendered into each outlet in your
		 * route.</p>
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
		 *               App.PostsRoute = Ember.Route.extend({
		 *               <span class="function">renderTemplate</span>
		 *               :
		 *               <span class="keyword">function</span>
		 *               () {
		 *               <span class="local-variable">this</span>
		 *               .render(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">favoritePost</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               , {
		 *               <span class="key">outlet</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">favoritePost</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               });
		 *               <span class="local-variable">this</span>
		 *               .render(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">posts</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               , {
		 *               <span class="key">outlet</span>
		 *               :
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">posts</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               });
		 *   }
		 * });
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function outlet(property:String):void {
		}

		/**
		 * <p>
		 *   <code>partial</code>
		 *   renders a template directly using the current context.
		 * If needed the context can be set using the
		 *   <code>{{#with foo}}</code>
		 *   helper.
		 * </p>
		 * <div class="highlight html ">
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
		 *               <span class="tag">&lt;script</span>
		 *               <span class="attribute-name">type</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">text/x-handlebars</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="attribute-name">data-template-name</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">header_bar</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               <span class="inline">
		 *                 {{
		 *                 <span class="error">#</span>
		 *                 <span class="keyword">with</span>
		 *                 currentUser}}
		 *     {{partial user_info}}
		 *   {{
		 *                 <span class="regexp">
		 *                   <span class="delimiter">/</span>
		 *                   <span class="content">with}}</span>
		 *                 </span>
		 *               </span>
		 *               <span class="tag">&lt;/script&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   The
		 *   <code>data-template-name</code>
		 *   attribute of a partial template
		 * is prefixed with an underscore.
		 * </p>
		 * <div class="highlight html ">
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
		 *               <span class="tag">&lt;script</span>
		 *               <span class="attribute-name">type</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">text/x-handlebars</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="attribute-name">data-template-name</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">_user_info</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               <span class="inline">
		 *                 <span class="tag">&lt;span&gt;</span>
		 *                 Hello {{username}}!
		 *                 <span class="tag">&lt;/span&gt;</span>
		 *               </span>
		 *               <span class="tag">&lt;/script&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function partial(partialName:String):void {
		}

		/**
		 * <p>Renders the named template in the current context using the singleton
		 * instance of the same-named controller.</p>
		 * <p>If a view class with the same name exists, uses the view class.</p>
		 * <p>
		 *   If a
		 *   <code>model</code>
		 *   is specified, it becomes the model for that controller.
		 * </p>
		 * <p>
		 *   The default target for
		 *   <code>{{action}}</code>
		 *   s in the rendered template is the
		 * named controller.
		 * </p>
		 */
		public function render(name:String, contextString:Object?, options:Object):void {
		}

		/**
		 * <p>
		 *   <code>template</code>
		 *   allows you to render a template from inside another template.
		 * This allows you to re-use the same template in multiple places. For example:
		 * </p>
		 * <div class="highlight html ">
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
		 *               <span class="tag">&lt;script</span>
		 *               <span class="attribute-name">type</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">text/x-handlebars</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="attribute-name">data-template-name</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">logged_in_user</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               <span class="inline">
		 *                 {{
		 *                 <span class="error">#</span>
		 *                 <span class="keyword">with</span>
		 *                 loggedInUser}}
		 *     Last Login: {{lastLogin}}
		 *     User Info: {{template
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">user_info</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 }}
		 *   {{
		 *                 <span class="regexp">
		 *                   <span class="delimiter">/</span>
		 *                   <span class="content">with}}</span>
		 *                 </span>
		 *               </span>
		 *               <span class="tag">&lt;/script&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <div class="highlight html ">
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
		 *               <span class="tag">&lt;script</span>
		 *               <span class="attribute-name">type</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">text/x-handlebars</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="attribute-name">data-template-name</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">user_info</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               <span class="inline">
		 *                 Name:
		 *                 <span class="tag">&lt;em&gt;</span>
		 *                 {{name}}
		 *                 <span class="tag">&lt;/em&gt;</span>
		 *                 Karma:
		 *                 <span class="tag">&lt;em&gt;</span>
		 *                 {{karma}}
		 *                 <span class="tag">&lt;/em&gt;</span>
		 *               </span>
		 *               <span class="tag">&lt;/script&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <div class="highlight handlebars ">
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
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{#</span>
		 *                 <span class="attribute-name">if</span>
		 *                 <span class="attribute-name">isUser</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">template</span>
		 *                 <span class="error">"</span>
		 *                 <span class="attribute-name">user_info</span>
		 *                 <span class="error">"</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">else</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">template</span>
		 *                 <span class="error">"</span>
		 *                 <span class="attribute-name">unlogged_user_info</span>
		 *                 <span class="error">"</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{/</span>
		 *                 <span class="attribute-name">if</span>
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
		 *   This helper looks for templates in the global
		 *   <code>Ember.TEMPLATES</code>
		 *   hash. If you
		 * add
		 *   <code>&lt;script&gt;</code>
		 *   tags to your page with the
		 *   <code>data-template-name</code>
		 *   attribute set,
		 * they will be compiled and placed in this hash automatically.
		 * </p>
		 * <p>You can also manually register templates by adding them to the hash:</p>
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
		 *               Ember.TEMPLATES[
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">my_cool_template</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               ] = Ember.Handlebars.compile(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">&lt;b&gt;{{user}}&lt;/b&gt;</span>
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
		public function template(templateName:String):void {
		}

		/**
		 * <p>
		 *   <code>unbound</code>
		 *   allows you to output a property without binding.
		 *   <em>Important:</em>
		 *   The
		 * output will not be updated if the property changes. Use with caution.
		 * </p>
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
		 *               <span class="tag">&lt;div&gt;</span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">unbound</span>
		 *                 <span class="attribute-name">somePropertyThatDoesntChange</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="tag">&lt;/div&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   <code>unbound</code>
		 *   can also be used in conjunction with a bound helper to
		 * render it in its unbound form:
		 * </p>
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
		 *               <span class="tag">&lt;div&gt;</span>
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{</span>
		 *                 <span class="attribute-name">unbound</span>
		 *                 <span class="attribute-name">helperName</span>
		 *                 <span class="attribute-name">somePropertyThatDoesntChange</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               <span class="tag">&lt;/div&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function unbound(property:String):Object {
			return null;
		}

		public function unless(context:Function, options:Object):Object {
			return null;
		}

		/**
		 * <p>
		 *   <code>{{view}}</code>
		 *   inserts a new instance of
		 *   <code>Ember.View</code>
		 *   into a template passing its
		 * options to the
		 *   <code>Ember.View</code>
		 *   's
		 *   <code>create</code>
		 *   method and using the supplied block as
		 * the view's own template.
		 * </p>
		 * <p>
		 *   An empty
		 *   <code>&lt;body&gt;</code>
		 *   and the following template:
		 * </p>
		 * <div class="highlight handlebars ">
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
		 *               A span:
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{#</span>
		 *                 <span class="attribute-name">view</span>
		 *                 <span class="attribute-name">tagName</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">span</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               hello.
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{/</span>
		 *                 <span class="attribute-name">view</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>Will result in HTML structure:</p>
		 * <div class="highlight html ">
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
		 *               <span class="tag">&lt;body&gt;</span>
		 *               <span class="comment">&lt;!-- Note: the handlebars template script
		 *        also results in a rendered Ember.View
		 *        which is the outer &lt;div&gt; here --&gt;</span>
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               A span:
		 *               <span class="tag">&lt;span</span>
		 *               <span class="attribute-name">id</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember1</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               Hello.
		 *               <span class="tag">&lt;/span&gt;</span>
		 *               <span class="tag">&lt;/div&gt;</span>
		 *               <span class="tag">&lt;/body&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <h3>
		 *   <code>parentView</code>
		 *   setting
		 * </h3>
		 * <p>
		 *   The
		 *   <code>parentView</code>
		 *   property of the new
		 *   <code>Ember.View</code>
		 *   instance created through
		 *   <code>{{view}}</code>
		 *   will be set to the
		 *   <code>Ember.View</code>
		 *   instance of the template where
		 *   <code>{{view}}</code>
		 *   was called.
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
		 *               aView = Ember.View.create({
		 *               <span class="key">template</span>
		 *               : Ember.Handlebars.compile(
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">{{#view}} my parent: {{parentView.elementId}} {{/view}}</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               )
		 * });
		 * 
		 * aView.appendTo(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">body</span>
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
		 * <p>Will result in HTML structure:</p>
		 * <div class="highlight html ">
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
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">id</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember1</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">id</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember2</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               my parent: ember1
		 *               <span class="tag">&lt;/div&gt;</span>
		 *               <span class="tag">&lt;/div&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <h3>Setting CSS id and class attributes</h3>
		 * <p>
		 *   The HTML
		 *   <code>id</code>
		 *   attribute can be set on the
		 *   <code>{{view}}</code>
		 *   's resulting element with
		 * the
		 *   <code>id</code>
		 *   option. This option will
		 *   <em>not</em>
		 *   be passed to
		 *   <code>Ember.View.create</code>
		 *   .
		 * </p>
		 * <div class="highlight handlebars ">
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
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{#</span>
		 *                 <span class="attribute-name">view</span>
		 *                 <span class="attribute-name">tagName</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">span</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="attribute-name">id</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">a-custom-id</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               hello.
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{/</span>
		 *                 <span class="attribute-name">view</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>Results in the following HTML structure:</p>
		 * <div class="highlight html ">
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
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               <span class="tag">&lt;span</span>
		 *               <span class="attribute-name">id</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">a-custom-id</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               hello.
		 *               <span class="tag">&lt;/span&gt;</span>
		 *               <span class="tag">&lt;/div&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   The HTML
		 *   <code>class</code>
		 *   attribute can be set on the
		 *   <code>{{view}}</code>
		 *   's resulting element
		 * with the
		 *   <code>class</code>
		 *   or
		 *   <code>classNameBindings</code>
		 *   options. The
		 *   <code>class</code>
		 *   option will
		 * directly set the CSS
		 *   <code>class</code>
		 *   attribute and will not be passed to
		 *   <code>Ember.View.create</code>
		 *   .
		 *   <code>classNameBindings</code>
		 *   will be passed to
		 *   <code>create</code>
		 *   and use
		 *   <code>Ember.View</code>
		 *   's class name binding functionality:
		 * </p>
		 * <div class="highlight handlebars ">
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
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{#</span>
		 *                 <span class="attribute-name">view</span>
		 *                 <span class="attribute-name">tagName</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">span</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="attribute-name">class</span>
		 *                 =
		 *                 <span class="string">
		 *                   <span class="delimiter">"</span>
		 *                   <span class="content">a-custom-class</span>
		 *                   <span class="delimiter">"</span>
		 *                 </span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               hello.
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{/</span>
		 *                 <span class="attribute-name">view</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>Results in the following HTML structure:</p>
		 * <div class="highlight html ">
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
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               <span class="tag">&lt;span</span>
		 *               <span class="attribute-name">id</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember2</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view a-custom-class</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               hello.
		 *               <span class="tag">&lt;/span&gt;</span>
		 *               <span class="tag">&lt;/div&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <h3>Supplying a different view class</h3>
		 * <p>
		 *   <code>{{view}}</code>
		 *   can take an optional first argument before its supplied options to
		 * specify a path to a custom view class.
		 * </p>
		 * <div class="highlight handlebars ">
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
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{#</span>
		 *                 <span class="attribute-name">view</span>
		 *                 <span class="error">"</span>
		 *                 <span class="attribute-name">MyApp.CustomView</span>
		 *                 <span class="error">"</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *               hello.
		 *               <span class="inline">
		 *                 <span class="inline-delimiter">{{/</span>
		 *                 <span class="attribute-name">view</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>The first argument can also be a relative path accessible from the current
		 * context.</p>
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
		 *               MyApp = Ember.Application.create({});
		 * MyApp.OuterView = Ember.View.extend({
		 *               <span class="key">innerViewClass</span>
		 *               : Ember.View.extend({
		 *               <span class="key">classNames</span>
		 *               : [
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">a-custom-view-class-as-property</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ]
		 *   }),
		 *               <span class="key">template</span>
		 *               : Ember.Handlebars.compile(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">{{#view "view.innerViewClass"}} hi {{/view}}</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               )
		 * });
		 * 
		 * MyApp.OuterView.create().appendTo(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">body</span>
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
		 * <p>Will result in the following HTML:</p>
		 * <div class="highlight html ">
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
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">id</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember1</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">id</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember2</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">ember-view a-custom-view-class-as-property</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               hi
		 *               <span class="tag">&lt;/div&gt;</span>
		 *               <span class="tag">&lt;/div&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <h3>Blockless use</h3>
		 * <p>
		 *   If you supply a custom
		 *   <code>Ember.View</code>
		 *   subclass that specifies its own template
		 * or provide a
		 *   <code>templateName</code>
		 *   option to
		 *   <code>{{view}}</code>
		 *   it can be used without
		 * supplying a block. Attempts to use both a
		 *   <code>templateName</code>
		 *   option and supply a
		 * block will throw an error.
		 * </p>
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
		 *                 <span class="attribute-name">view</span>
		 *                 <span class="error">"</span>
		 *                 <span class="attribute-name">MyApp.ViewWithATemplateDefined</span>
		 *                 <span class="error">"</span>
		 *                 <span class="inline-delimiter">}}</span>
		 *               </span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <h3>
		 *   <code>viewName</code>
		 *   property
		 * </h3>
		 * <p>
		 *   You can supply a
		 *   <code>viewName</code>
		 *   option to
		 *   <code>{{view}}</code>
		 *   . The
		 *   <code>Ember.View</code>
		 *   instance
		 * will be referenced as a property of its parent view by this name.
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
		 *               aView = Ember.View.create({
		 *               <span class="key">template</span>
		 *               : Ember.Handlebars.compile(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">{{#view viewName="aChildByName"}} hi {{/view}}</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               )
		 * });
		 * 
		 * aView.appendTo(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">body</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 * aView.get(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">aChildByName</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               )
		 *               <span class="comment">// the instance of Ember.View created by {{view}} helper</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function view(path:String, options:Object):Object {
			return null;
		}

[JavaScriptMethod(name="with")]
		public function with_(context:Function, options:Object):Object {
			return null;
		}

		/**
		 * <p>
		 *   When used in a Handlebars template that is assigned to an
		 *   <code>Ember.View</code>
		 *   instance's
		 *   <code>layout</code>
		 *   property Ember will render the layout template first,
		 * inserting the view's own rendered output at the
		 *   <code>{{yield}}</code>
		 *   location.
		 * </p>
		 * <p>
		 *   An empty
		 *   <code>&lt;body&gt;</code>
		 *   and the following application code:
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
		 * 8</pre>
		 *           </td>
		 *           <td class="code">
		 *             <pre>
		 *               AView = Ember.View.extend({
		 *               <span class="key">classNames</span>
		 *               : [
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">a-view-with-layout</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ],
		 *               <span class="key">layout</span>
		 *               : Ember.Handlebars.compile(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">&lt;div class="wrapper"&gt;{{yield}}&lt;/div&gt;</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ),
		 *               <span class="key">template</span>
		 *               : Ember.Handlebars.compile(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">&lt;span&gt;I am wrapped&lt;/span&gt;</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               )
		 * });
		 * 
		 * aView = AView.create();
		 * aView.appendTo(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">body</span>
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
		 * <p>Will result in the following HTML output:</p>
		 * <div class="highlight html ">
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
		 *               <span class="tag">&lt;body&gt;</span>
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">ember-view a-view-with-layout</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               <span class="tag">&lt;div</span>
		 *               <span class="attribute-name">class</span>
		 *               =
		 *               <span class="string">
		 *                 <span class="delimiter">"</span>
		 *                 <span class="content">wrapper</span>
		 *                 <span class="delimiter">"</span>
		 *               </span>
		 *               <span class="tag">&gt;</span>
		 *               <span class="tag">&lt;span&gt;</span>
		 *               I am wrapped
		 *               <span class="tag">&lt;/span&gt;</span>
		 *               <span class="tag">&lt;/div&gt;</span>
		 *               <span class="tag">&lt;/div&gt;</span>
		 *               <span class="tag">&lt;/body&gt;</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 * <p>
		 *   The
		 *   <code>yield</code>
		 *   helper cannot be used outside of a template assigned to an
		 *   <code>Ember.View</code>
		 *   's
		 *   <code>layout</code>
		 *   property and will throw an error if attempted.
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
		 *               BView = Ember.View.extend({
		 *               <span class="key">classNames</span>
		 *               : [
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">a-view-with-layout</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               ],
		 *               <span class="key">template</span>
		 *               : Ember.Handlebars.compile(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">{{yield}}</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               )
		 * });
		 * 
		 * bView = BView.create();
		 * bView.appendTo(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">body</span>
		 *                 <span class="delimiter">'</span>
		 *               </span>
		 *               );
		 *               <span class="comment">// throws</span>
		 *               <span class="comment">// Uncaught Error: assertion failed: You called yield in a template that was not a layout</span>
		 *             </pre>
		 *           </td>
		 *         </tr>
		 *       </tbody>
		 *     </table>
		 *   </div>
		 * </div>
		 */
		public function yield(options:Object):Object {
			return null;
		}

	}
}