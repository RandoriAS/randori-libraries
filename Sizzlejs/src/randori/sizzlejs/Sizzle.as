package randori.sizzlejs {
	import randori.webkit.dom.Element;

	[JavaScript(export="false", name="Sizzle")]
	/**
	* <h2>A pure-JavaScript CSS selector engine designed to be easily dropped in to a host library.</h2>
	* <h3>Selectors</h3>
	* Sizzle supports virtually all CSS 3 Selectors - this even includes some parts that are infrequently implemented such as escaped selectors (".foo\+bar"), Unicode selectors, and results returned in document order. There are a few exceptions to CSS3 selector support. These exceptions are only limited to selectors that would require events added to the DOM to keep track of the state of elements. For instance, the following psuedo-selectors are not supported:
	* <ul>
	* <li>:hover</li>
	* <li>:active</li>
	* <li>:visited</li>
	* <li>:link (this is the opposite of :visited and also requires an event)</li>
	* </ul>
	* <strong>Note:</strong> Some CSS3 selectors were not supported until version 1.9. These were added in 1.9:
	* <ul>
	* <li>:target</li>
	* <li>:root</li>
	* <li>:nth-last-child</li>
	* <li>:nth-of-type / :nth-last-of-type / :first-of-type / :last-of-type / :only-of-type</li>
	* <li>:lang()</li>
	* </ul>
	* In addition to the CSS 3 Selectors Sizzle supports the following additional selectors or conventions.
	* <h3>Changes</h3>
	* <ul>
	* <li>:not(a.b), :not(div > p), :not(div, p): Sizzle supports complex selectors in :not() (most browsers only support :not(a), for example).</li>
	* <li>:not(:not(a)), :not(:has(div:first-child)): Sizzle supports nested pseudos.</li>
	* </ul>
	* <h3>Additions</h3>
	* [NAME!=VALUE]: Finds all elements whose NAME attribute doesn't match the specified value. Is equivalent to :not([NAME=VALUE]).
	* <ul>
	* <li>:contains(TEXT): Finds all elements whose textual context contains the word 'TEXT' (case-sensitive).</li>
	* <li>:header: Finds all elements that are header elements (h1, h2, h3, h4, h5, h6).</li>
	* <li>:parent: Finds all elements that contain another element.</li>
	* </ul>
	* <h3>Positional Selector Additions</h3>
	* The word positional here refers to an element's placement in the set after a selection, based on document order. For instance, div:first would return an array containing the first div on the page and div:first em would initially get the first div on the page, then all of the em's within that div. This works by first doing a selection for divs, retrieving the first one from that set, then using that div as the context for finding all em's. Note that all positional selectors are zero-indexed (corresponding to array positions).
	* <ul>
	* <li>:first/:last: Finds the first or last matching element on the page.</li>
	* <li>:even/:odd: Finds every other element on the page (counting begins at 0, so :even would match the first element).</li>
	* <li>:eq/:nth: Finds the nth element on the page (e.g. :eq(5) finds the 6th element on the page).</li>
	* <li>:lt/:gt: Finds all elements at positions less than or greater than the specified positions.</li>
	* </ul>
	* <h3>Form Selector Additions</h3>
	* <ul>
	* <li>:input: Finds all input elements (includes textareas, selects, and buttons).</li>
	* <li>:text, :checkbox, :file, :password, :submit, :image, :reset, :button: Finds the input element with the specified input type (:button also finds button elements).</li>
	* </ul>
	*/
	public final class Sizzle {

		[JavaScriptMethod(name="")]
		/**
		 * This is the main function for finding elements. It will use querySelectorAll if available.
		 * @param selector A css selector
		 * @param DOMelement An optional element to use as the context for finding elements. The default is the current document.
		 * @param results Optionally pass an array to which Sizzle will append the elements (for instance, jQuery passes the jQuery object here).
		 * @return All of the elements matching the selector
		 */
		public static function select(selector:String, DOMElement:Element=null, results:Array=null):Vector.<Element> {
			return null;
		}

		/**
		 * Uses native matchesSelector if available.
		 * @param element A DOMElement against which Sizzle will test the selector
		 * @param selector A css selector
		 * @return Whether the given element matches the selector
		 */
		public static function matchesSelector(element:Element, selector:String):Boolean {
			return false;
		}

		/**
		 * All the elements in the set that match the given selector.
		 * @param selector A css selector
		 * @param elements An array of DOMElements to filter against the specified selector.
		 * @return All the elements in the set that match the given selector.
		 */
		public static function matches(selector:String, elements:Vector.<Element>):Vector.<Element> {
			return null;
		}

		/**
		 * This method can be called to add a selector to the internal cache of compiled selectors to be
		 * used in a later selection. For instance, if writing a plugin, you may find it useful to add a
		 * custom selector you know will be used by the user at a later time.<br/>
		 * Call Sizzle.compile(":myCustomPseudo") and it's cached.
		 * @param selector A css selector
		 * @return The compiled function to be used when filtering the set of possibly matching elements.
		 */
		public static function compile(selector:String):Function {
		}

		[JavaScriptProperty(name="selectors.cacheLength")]
		/**
		 * Most of the time, it should not be necessary to adjust the size of the selector cache. However,
		 * the size of the internal cache can be adjusted to hold more or less compiled selector functions.
		 * The default is currently 50.
		 */
		public static var cacheLength:int;
	}
}
