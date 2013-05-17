package ember {

	import randori.webkit.dom.Element;

	[JavaScript(export="false",name="ember.RenderBuffer")]
	public class RenderBuffer {
		/**
		 * <p>Array of class names which will be applied in the class attribute.</p>
		 * <p>
		 *   You can use
		 *   <code>setClasses()</code>
		 *   to set this property directly. If you
		 * use
		 *   <code>addClass()</code>
		 *   , it will be maintained for you.
		 * </p>
		 */
		public var classes:Array;

		/**
		 * <p>
		 *   A hash keyed on the name of the attribute and whose value will be
		 * applied to that attribute. For example, if you wanted to apply a
		 *   <code>data-view="Foo.bar"</code>
		 *   property to an element, you would set the
		 * elementAttributes hash to
		 *   <code>{'data-view':'Foo.bar'}</code>
		 *   .
		 * </p>
		 * <p>
		 *   You should not maintain this hash yourself, rather, you should use
		 * the
		 *   <code>attr()</code>
		 *   method of
		 *   <code>Ember.RenderBuffer</code>
		 *   .
		 * </p>
		 */
		public var elementAttributes:Object;

		/**
		 * <p>// The root view's element
		 *   _element: null,
		 * _hasElement: true,
		 * /**</p>
		 */
		public var elementClasses:Array;

		/**
		 * <p>The id in of the element, to be applied in the id attribute.</p>
		 * <p>
		 *   You should not set this property yourself, rather, you should use
		 * the
		 *   <code>id()</code>
		 *   method of
		 *   <code>Ember.RenderBuffer</code>
		 *   .
		 * </p>
		 */
		public var elementId:String;

		/**
		 * <p>
		 *   A hash keyed on the name of the properties and whose value will be
		 * applied to that property. For example, if you wanted to apply a
		 *   <code>checked=true</code>
		 *   property to an element, you would set the
		 * elementProperties hash to
		 *   <code>{'checked':true}</code>
		 *   .
		 * </p>
		 * <p>
		 *   You should not maintain this hash yourself, rather, you should use
		 * the
		 *   <code>prop()</code>
		 *   method of
		 *   <code>Ember.RenderBuffer</code>
		 *   .
		 * </p>
		 */
		public var elementProperties:Object;

		/**
		 * <p>
		 *   A hash keyed on the name of the style attribute and whose value will
		 * be applied to that attribute. For example, if you wanted to apply a
		 *   <code>background-color:black;</code>
		 *   style to an element, you would set the
		 * elementStyle hash to
		 *   <code>{'background-color':'black'}</code>
		 *   .
		 * </p>
		 * <p>
		 *   You should not maintain this hash yourself, rather, you should use
		 * the
		 *   <code>style()</code>
		 *   method of
		 *   <code>Ember.RenderBuffer</code>
		 *   .
		 * </p>
		 */
		public var elementStyle:Object;

		/**
		 * <p>
		 *   The tagname of the element an instance of
		 *   <code>Ember.RenderBuffer</code>
		 *   represents.
		 * </p>
		 * <p>
		 *   Usually, this gets set as the first parameter to
		 *   <code>Ember.RenderBuffer</code>
		 *   . For
		 * example, if you wanted to create a
		 *   <code>p</code>
		 *   tag, then you would call
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
		 *               Ember.RenderBuffer(
		 *               <span class="string">
		 *                 <span class="delimiter">'</span>
		 *                 <span class="content">p</span>
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
		 */
		public var elementTag:String;

		/**
		 * <p>
		 *   Nested
		 *   <code>RenderBuffers</code>
		 *   will set this to their parent
		 *   <code>RenderBuffer</code>
		 *   instance.
		 * </p>
		 */
		public var parentBuffer:RenderBuffer;

		/**
		 * <p>Adds a class to the buffer, which will be rendered to the class attribute.</p>
		 */
		public function addClass(className:String):void {
		}

		/**
		 * <p>Adds an attribute which will be rendered to the element.</p>
		 */
		public function attr(name:String, value:String):* {
			return null;
		}

		public function element():Element {
			return null;
		}

		/**
		 * <p>Sets the elementID to be used for the element.</p>
		 */
		public function id(id:String):void {
		}

		/**
		 * <p>Adds an property which will be rendered to the element.</p>
		 */
		public function prop(name:String, value:String):* {
			return null;
		}

		/**
		 * <p>
		 *   Adds a string of HTML to the
		 *   <code>RenderBuffer</code>
		 *   .
		 * </p>
		 */
		public function push(string:String):void {
		}

		/**
		 * <p>Remove an attribute from the list of attributes to render.</p>
		 */
		public function removeAttr(name:String):void {
		}

		/**
		 * <p>Remove an property from the list of properties to render.</p>
		 */
		public function removeProp(name:String):void {
		}

		/**
		 * <p>Generates the HTML content for this buffer.</p>
		 */
		public function string():Object {
			return null;
		}

		/**
		 * <p>Adds a style to the style attribute which will be rendered to the element.</p>
		 */
		public function style(name:String, value:String):void {
		}

	}
}