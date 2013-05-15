package randori.underscore {
	
	[JavaScript(export="false",name="_")]
	/**
	 * Underscore.js is a utility-belt library for JavaScript that provides support for the usual functional suspects (each, map, reduce, filter...) without extending any core JavaScript objects.
	 * For Docs, License, Tests, and pre-packed downloads, see: <a href="http://underscorejs.org">http://underscorejs.org</a>
	 */
	public class _ {
		
		/**
		 * <p id="each">
		 *   <b class="header">each</b>
		 *   <code>_.each(list, iterator, [context])</code>
		 *   <span class="alias">
		 *     Alias:
		 *     <b>forEach</b>
		 *   </span>
		 *   <br/>
		 *   Iterates over a
		 *   <b>list</b>
		 *   of elements, yielding each in turn to an
		 *   <b>iterator</b>
		 *   function. The
		 *   <b>iterator</b>
		 *   is bound to the
		 *   <b>context</b>
		 *   object, if one is
		 *         passed. Each invocation of
		 *   <b>iterator</b>
		 *   is called with three arguments:
		 *   <tt>(element, index, list)</tt>
		 *   . If
		 *   <b>list</b>
		 *   is a JavaScript object,
		 *   <b>iterator</b>
		 *   's
		 *         arguments will be
		 *   <tt>(value, key, list)</tt>
		 *   . Delegates to the native
		 *   <b>forEach</b>
		 *   function if it exists.
		 * </p>
		 * <pre>_.each([1, 2, 3], alert);
		 * =&gt; alerts each number in turn...
		 * _.each({one : 1, two : 2, three : 3}, alert);
		 * =&gt; alerts each number value in turn...</pre>
		 */
		public static function each(list:Object, iterator:Function, context:Object=null):void {
		}
		
		/**
		 * <p id="map">
		 *   <b class="header">map</b>
		 *   <code>_.map(list, iterator, [context])</code>
		 *   <span class="alias">
		 *     Alias:
		 *     <b>collect</b>
		 *   </span>
		 *   <br/>
		 *   Produces a new array of values by mapping each value in
		 *   <b>list</b>
		 *   through a transformation function (
		 *   <b>iterator</b>
		 *   ). If the native
		 *   <b>map</b>
		 *   method
		 *         exists, it will be used instead. If
		 *   <b>list</b>
		 *   is a JavaScript object,
		 *   <b>iterator</b>
		 *   's arguments will be
		 *   <tt>(value, key, list)</tt>
		 *   .
		 * </p>
		 * <pre>_.map([1, 2, 3], function(num){ return num * 3; });
		 * =&gt; [3, 6, 9]
		 * _.map({one : 1, two : 2, three : 3}, function(num, key){ return num * 3; });
		 * =&gt; [3, 6, 9]</pre>
		 */
		public static function map(list:Object, iterator:Function, context:Object=null):Array {
			return null;
		}
		
		/**
		 * <p id="reduce">
		 *   <b class="header">reduce</b>
		 *   <code>_.reduce(list, iterator, memo, [context])</code>
		 *   <span class="alias">
		 *     Aliases:
		 *     <b>inject, foldl</b>
		 *   </span>
		 *   <br/>
		 *   Also known as
		 *   <b>inject</b>
		 *   and
		 *   <b>foldl</b>
		 *   ,
		 *   <b>reduce</b>
		 *   boils down a
		 *   <b>list</b>
		 *   of values into a single value.
		 *   <b>Memo</b>
		 *   is the initial state
		 *         of the reduction, and each successive step of it should be returned by
		 *   <b>iterator</b>
		 *   . The iterator is passed four arguments: the
		 *   <tt>memo</tt>
		 *   ,
		 *         then the
		 *   <tt>value</tt>
		 *   and
		 *   <tt>index</tt>
		 *   (or key) of the iteration,
		 *         and finally a reference to the entire
		 *   <tt>list</tt>
		 *   .
		 * </p>
		 * <pre>var sum = _.reduce([1, 2, 3], function(memo, num){ return memo + num; }, 0);
		 * =&gt; 6</pre>
		 */
		public static function reduce(list:Object, iterator:Function, memo:Array, context:Object=null):Number {
			return 0;
		}
		
		/**
		 * <p id="reduceRight">
		 *   <b class="header">reduceRight</b>
		 *   <code>_.reduceRight(list, iterator, memo, [context])</code>
		 *   <span class="alias">
		 *     Alias:
		 *     <b>foldr</b>
		 *   </span>
		 *   <br/>
		 *   The right-associative version of
		 *   <b>reduce</b>
		 *   . Delegates to the
		 *         JavaScript 1.8 version of
		 *   <b>reduceRight</b>
		 *   , if it exists.
		 *   <b>Foldr</b>
		 *   is not as useful in JavaScript as it would be in a language with lazy
		 *         evaluation.
		 * </p>
		 * <pre>var list = [[0, 1], [2, 3], [4, 5]];
		 * var flat = _.reduceRight(list, function(a, b) { return a.concat(b); }, []);
		 * =&gt; [4, 5, 2, 3, 0, 1]</pre>
		 */
		public static function reduceRight(list:Object, iterator:Function, memo:Array, context:Object=null):Array {
			return null;
		}
		
		/**
		 * <p id="find">
		 *   <b class="header">find</b>
		 *   <code>_.find(list, iterator, [context])</code>
		 *   <span class="alias">
		 *     Alias:
		 *     <b>detect</b>
		 *   </span>
		 *   <br/>
		 *   Looks through each value in the
		 *   <b>list</b>
		 *   , returning the first one that
		 *         passes a truth test (
		 *   <b>iterator</b>
		 *   ). The function returns as
		 *         soon as it finds an acceptable element, and doesn't traverse the
		 *         entire list.
		 * </p>
		 * <pre>var even = _.find([1, 2, 3, 4, 5, 6], function(num){ return num % 2 == 0; });
		 * =&gt; 2</pre>
		 */
		public static function find(list:Object, iterator:Function, context:Object=null):Number {
			return 0;
		}
		
		/**
		 * <p id="filter">
		 *   <b class="header">filter</b>
		 *   <code>_.filter(list, iterator, [context])</code>
		 *   <span class="alias">
		 *     Alias:
		 *     <b>select</b>
		 *   </span>
		 *   <br/>
		 *   Looks through each value in the
		 *   <b>list</b>
		 *   , returning an array of all
		 *         the values that pass a truth test (
		 *   <b>iterator</b>
		 *   ). Delegates to the
		 *         native
		 *   <b>filter</b>
		 *   method, if it exists.
		 * </p>
		 * <pre>var evens = _.filter([1, 2, 3, 4, 5, 6], function(num){ return num % 2 == 0; });
		 * =&gt; [2, 4, 6]</pre>
		 */
		public static function filter(list:Object, iterator:Function, context:Object=null):Array {
			return null;
		}
		
		/**
		 * <p id="where">
		 *   <b class="header">where</b>
		 *   <code>_.where(list, properties)</code>
		 *   <br/>
		 *   Looks through each value in the
		 *   <b>list</b>
		 *   , returning an array of all
		 *         the values that contain all of the key-value pairs listed in
		 *   <b>properties</b>
		 *   .
		 * </p>
		 * <pre>_.where(listOfPlays, {author: "Shakespeare", year: 1611});
		 * =&gt; [{title: "Cymbeline", author: "Shakespeare", year: 1611},
		 *     {title: "The Tempest", author: "Shakespeare", year: 1611}]</pre>
		 */
		public static function where(list:Object, properties:Object):void {
		}
		
		/**
		 * <p id="findWhere">
		 *   <b class="header">findWhere</b>
		 *   <code>_.findWhere(list, properties)</code>
		 *   <br/>
		 *   Looks through the
		 *   <b>list</b>
		 *   and returns the
		 *   <i>first</i>
		 *   value that matches
		 *         all of the key-value pairs listed in
		 *   <b>properties</b>
		 *   .
		 * </p>
		 * <pre>_.findWhere(publicServicePulitzers, {newsroom: "The New York Times"});
		 * =&gt; {year: 1918, newsroom: "The New York Times",
		 *   reason: "For its public service in publishing in full so many official reports,
		 *   documents and speeches by European statesmen relating to the progress and
		 *   conduct of the war."}</pre>
		 */
		public static function findWhere(list:Object, properties:Object):void {
		}
		
		/**
		 * <p id="reject">
		 *   <b class="header">reject</b>
		 *   <code>_.reject(list, iterator, [context])</code>
		 *   <br/>
		 *   Returns the values in
		 *   <b>list</b>
		 *   without the elements that the truth
		 *         test (
		 *   <b>iterator</b>
		 *   ) passes. The opposite of
		 *   <b>filter</b>
		 *   .
		 * </p>
		 * <pre>var odds = _.reject([1, 2, 3, 4, 5, 6], function(num){ return num % 2 == 0; });
		 * =&gt; [1, 3, 5]</pre>
		 */
		public static function reject(list:Object, iterator:Function, context:Object=null):Array {
			return null;
		}
		
		/**
		 * <p id="every">
		 *   <b class="header">every</b>
		 *   <code>_.every(list, iterator, [context])</code>
		 *   <span class="alias">
		 *     Alias:
		 *     <b>all</b>
		 *   </span>
		 *   <br/>
		 *   Returns
		 *   <i>true</i>
		 *   if all of the values in the
		 *   <b>list</b>
		 *   pass the
		 *   <b>iterator</b>
		 *   truth test. Delegates to the native method
		 *   <b>every</b>
		 *   , if present.
		 * </p>
		 * <pre>_.every([true, 1, null, 'yes'], _.identity);
		 * =&gt; false</pre>
		 */
		public static function every(list:Object, iterator:Function, context:Object=null):Boolean {
			return false;
		}
		
		/**
		 * <p id="some">
		 *   <b class="header">some</b>
		 *   <code>_.some(list, [iterator], [context])</code>
		 *   <span class="alias">
		 *     Alias:
		 *     <b>any</b>
		 *   </span>
		 *   <br/>
		 *   Returns
		 *   <i>true</i>
		 *   if any of the values in the
		 *   <b>list</b>
		 *   pass the
		 *   <b>iterator</b>
		 *   truth test. Short-circuits and stops traversing the list
		 *         if a true element is found. Delegates to the native method
		 *   <b>some</b>
		 *   ,
		 *         if present.
		 * </p>
		 * <pre>_.some([null, 0, 'yes', false]);
		 * =&gt; true</pre>
		 */
		public static function some(list:Object, iterator:Function=null, context:Object=null):Boolean {
			return false;
		}
		
		/**
		 * <p id="contains">
		 *   <b class="header">contains</b>
		 *   <code>_.contains(list, value)</code>
		 *   <span class="alias">
		 *     Alias:
		 *     <b>include</b>
		 *   </span>
		 *   <br/>
		 *   Returns
		 *   <i>true</i>
		 *   if the
		 *   <b>value</b>
		 *   is present in the
		 *   <b>list</b>
		 *   .
		 *         Uses
		 *   <b>indexOf</b>
		 *   internally, if
		 *   <b>list</b>
		 *   is an Array.
		 * </p>
		 * <pre>_.contains([1, 2, 3], 3);
		 * =&gt; true</pre>
		 */
		public static function contains(list:Object, value:*):Boolean {
			return false;
		}
		
		/**
		 * <p id="invoke">
		 *   <b class="header">invoke</b>
		 *   <code>_.invoke(list, methodName, [*arguments])</code>
		 *   <br/>
		 *   Calls the method named by
		 *   <b>methodName</b>
		 *   on each value in the
		 *   <b>list</b>
		 *   .
		 *         Any extra arguments passed to
		 *   <b>invoke</b>
		 *   will be forwarded on to the
		 *         method invocation.
		 * </p>
		 * <pre>_.invoke([[5, 1, 7], [3, 2, 1]], 'sort');
		 * =&gt; [[1, 5, 7], [1, 2, 3]]</pre>
		 */
		public static function invoke(list:Object, methodName:String, arguments:Array=null):Array {
			return null;
		}
		
		/**
		 * <p id="pluck">
		 *   <b class="header">pluck</b>
		 *   <code>_.pluck(list, propertyName)</code>
		 *   <br/>
		 *   A convenient version of what is perhaps the most common use-case for
		 *   <b>map</b>
		 *   : extracting a list of property values.
		 * </p>
		 * <pre>var stooges = [{name : 'moe', age : 40}, {name : 'larry', age : 50}, {name : 'curly', age : 60}];
		 * _.pluck(stooges, 'name');
		 * =&gt; ["moe", "larry", "curly"]</pre>
		 */
		public static function pluck(list:Object, propertyName:String):Array {
			return null;
		}
		
		/**
		 * <p id="max">
		 *   <b class="header">max</b>
		 *   <code>_.max(list, [iterator], [context])</code>
		 *   <br/>
		 *   Returns the maximum value in
		 *   <b>list</b>
		 *   . If
		 *   <b>iterator</b>
		 *   is passed,
		 *         it will be used on each value to generate the criterion by which the
		 *         value is ranked.
		 * </p>
		 * <pre>var stooges = [{name : 'moe', age : 40}, {name : 'larry', age : 50}, {name : 'curly', age : 60}];
		 * _.max(stooges, function(stooge){ return stooge.age; });
		 * =&gt; {name : 'curly', age : 60};</pre>
		 */
		public static function max(list:Object, iterator:Function=null, context:Object=null):Object {
			return null;
		}
		
		/**
		 * <p id="min">
		 *   <b class="header">min</b>
		 *   <code>_.min(list, [iterator], [context])</code>
		 *   <br/>
		 *   Returns the minimum value in
		 *   <b>list</b>
		 *   . If
		 *   <b>iterator</b>
		 *   is passed,
		 *         it will be used on each value to generate the criterion by which the
		 *         value is ranked.
		 * </p>
		 * <pre>var numbers = [10, 5, 100, 2, 1000];
		 * _.min(numbers);
		 * =&gt; 2</pre>
		 */
		public static function min(list:Object, iterator:Function=null, context:Object=null):Number {
			return 0;
		}
		
		/**
		 * <p id="sortBy">
		 *   <b class="header">sortBy</b>
		 *   <code>_.sortBy(list, iterator, [context])</code>
		 *   <br/>
		 *   Returns a sorted copy of
		 *   <b>list</b>
		 *   , ranked in ascending order by the
		 *         results of running each value through
		 *   <b>iterator</b>
		 *   . Iterator may
		 *         also be the string name of the property to sort by (eg.
		 *   <tt>length</tt>
		 *   ).
		 * </p>
		 * <pre>_.sortBy([1, 2, 3, 4, 5, 6], function(num){ return Math.sin(num); });
		 * =&gt; [5, 4, 6, 3, 1, 2]</pre>
		 */
		public static function sortBy(list:Object, iterator:Function, context:Object=null):Array {
			return null;
		}
		
		/**
		 * <p id="groupBy">
		 *   <b class="header">groupBy</b>
		 *   <code>_.groupBy(list, iterator, [context])</code>
		 *   <br/>
		 *   Splits a collection into sets, grouped by the result of running each
		 *         value through
		 *   <b>iterator</b>
		 *   . If
		 *   <b>iterator</b>
		 *   is a string instead of
		 *         a function, groups by the property named by
		 *   <b>iterator</b>
		 *   on each of
		 *         the values.
		 * </p>
		 * <pre>_.groupBy([1.3, 2.1, 2.4], function(num){ return Math.floor(num); });
		 * =&gt; {1: [1.3], 2: [2.1, 2.4]}
		 * 
		 * _.groupBy(['one', 'two', 'three'], 'length');
		 * =&gt; {3: ["one", "two"], 5: ["three"]}</pre>
		 */
		public static function groupBy(list:Object, iterator:Function, context:Object=null):Object {
			return null;
		}
		
		/**
		 * <p id="countBy">
		 *   <b class="header">countBy</b>
		 *   <code>_.countBy(list, iterator, [context])</code>
		 *   <br/>
		 *   Sorts a list into groups and returns a count for the number of objects
		 *         in each group.
		 *         Similar to
		 *   <tt>groupBy</tt>
		 *   , but instead of returning a list of values,
		 *         returns a count for the number of values in that group.
		 * </p>
		 * <pre>_.countBy([1, 2, 3, 4, 5], function(num) {
		 *   return num % 2 == 0 ? 'even' : 'odd';
		 * });
		 * =&gt; {odd: 3, even: 2}</pre>
		 */
		public static function countBy(list:Object, iterator:Function, context:Object=null):Object {
			return null;
		}
		
		/**
		 * <p id="shuffle">
		 *   <b class="header">shuffle</b>
		 *   <code>_.shuffle(list)</code>
		 *   <br/>
		 *   Returns a shuffled copy of the
		 *   <b>list</b>
		 *   , using a version of the
		 *   <a href="http://en.wikipedia.org/wiki/Fisher%E2%80%93Yates_shuffle">Fisher-Yates shuffle</a>
		 *   .
		 * </p>
		 * <pre>_.shuffle([1, 2, 3, 4, 5, 6]);
		 * =&gt; [4, 1, 6, 3, 5, 2]</pre>
		 */
		public static function shuffle(list:Object):Array {
			return null;
		}
		
		/**
		 * <p id="toArray">
		 *   <b class="header">toArray</b>
		 *   <code>_.toArray(list)</code>
		 *   <br/>
		 *   Converts the
		 *   <b>list</b>
		 *   (anything that can be iterated over), into a
		 *         real Array. Useful for transmuting the
		 *   <b>arguments</b>
		 *   object.
		 * </p>
		 * <pre>(function(){ return _.toArray(arguments).slice(1); })(1, 2, 3, 4);
		 * =&gt; [2, 3, 4]</pre>
		 */
		public static function toArray(list:Object):Array {
			return null;
		}
		
		/**
		 * <p id="size">
		 *   <b class="header">size</b>
		 *   <code>_.size(list)</code>
		 *   <br/>
		 *   Return the number of values in the
		 *   <b>list</b>
		 *   .
		 * </p>
		 * <pre>_.size({one : 1, two : 2, three : 3});
		 * =&gt; 3</pre>
		 */
		public static function size(list:Object):Number {
			return 0;
		}
		
		/**
		 * <p id="first">
		 *   <b class="header">first</b>
		 *   <code>_.first(array, [n])</code>
		 *   <span class="alias">
		 *     Alias:
		 *     <b>head</b>
		 *     ,
		 *     <b>take</b>
		 *   </span>
		 *   <br/>
		 *   Returns the first element of an
		 *   <b>array</b>
		 *   . Passing
		 *   <b>n</b>
		 *   will
		 *         return the first
		 *   <b>n</b>
		 *   elements of the array.
		 * </p>
		 * <pre>_.first([5, 4, 3, 2, 1]);
		 * =&gt; 5</pre>
		 */
		public static function first(array:Array, n:int=0):Number {
			return 0;
		}
		
		/**
		 * <p id="initial">
		 *   <b class="header">initial</b>
		 *   <code>_.initial(array, [n])</code>
		 *   <br/>
		 *   Returns everything but the last entry of the array. Especially useful on
		 *         the arguments object. Pass
		 *   <b>n</b>
		 *   to exclude the last
		 *   <b>n</b>
		 *   elements
		 *         from the result.
		 * </p>
		 * <pre>_.initial([5, 4, 3, 2, 1]);
		 * =&gt; [5, 4, 3, 2]</pre>
		 */
		public static function initial(array:Array, n:int=0):Array {
			return null;
		}
		
		/**
		 * <p id="last">
		 *   <b class="header">last</b>
		 *   <code>_.last(array, [n])</code>
		 *   <br/>
		 *   Returns the last element of an
		 *   <b>array</b>
		 *   . Passing
		 *   <b>n</b>
		 *   will return
		 *         the last
		 *   <b>n</b>
		 *   elements of the array.
		 * </p>
		 * <pre>_.last([5, 4, 3, 2, 1]);
		 * =&gt; 1</pre>
		 */
		public static function last(array:Array, n:int=0):Number {
			return 0;
		}
		
		/**
		 * <p id="rest">
		 *   <b class="header">rest</b>
		 *   <code>_.rest(array, [index])</code>
		 *   <span class="alias">
		 *     Alias:
		 *     <b>tail, drop</b>
		 *   </span>
		 *   <br/>
		 *   Returns the
		 *   <b>rest</b>
		 *   of the elements in an array. Pass an
		 *   <b>index</b>
		 *   to return the values of the array from that index onward.
		 * </p>
		 * <pre>_.rest([5, 4, 3, 2, 1]);
		 * =&gt; [4, 3, 2, 1]</pre>
		 */
		public static function rest(array:Array, index:int=0):Array {
			return null;
		}
		
		/**
		 * <p id="compact">
		 *   <b class="header">compact</b>
		 *   <code>_.compact(array)</code>
		 *   <br/>
		 *   Returns a copy of the
		 *   <b>array</b>
		 *   with all falsy values removed.
		 *         In JavaScript,
		 *   <i>false</i>
		 *   ,
		 *   <i>null</i>
		 *   ,
		 *   <i>0</i>
		 *   ,
		 *   <i>""</i>
		 *   ,
		 *   <i>undefined</i>
		 *   and
		 *   <i>NaN</i>
		 *   are all falsy.
		 * </p>
		 * <pre>_.compact([0, 1, false, 2, '', 3]);
		 * =&gt; [1, 2, 3]</pre>
		 */
		public static function compact(array:Array):Array {
			return null;
		}
		
		/**
		 * <p id="flatten">
		 *   <b class="header">flatten</b>
		 *   <code>_.flatten(array, [shallow])</code>
		 *   <br/>
		 *   Flattens a nested
		 *   <b>array</b>
		 *   (the nesting can be to any depth). If you
		 *         pass
		 *   <b>shallow</b>
		 *   , the array will only be flattened a single level.
		 * </p>
		 * <pre>_.flatten([1, [2], [3, [[4]]]]);
		 * =&gt; [1, 2, 3, 4];
		 * 
		 * _.flatten([1, [2], [3, [[4]]]], true);
		 * =&gt; [1, 2, 3, [[4]]];</pre>
		 */
		public static function flatten(array:Array, shallow:Boolean=false):Array {
			return null;
		}
		
		/**
		 * <p id="without">
		 *   <b class="header">without</b>
		 *   <code>_.without(array, [*values])</code>
		 *   <br/>
		 *   Returns a copy of the
		 *   <b>array</b>
		 *   with all instances of the
		 *   <b>values</b>
		 *   removed.
		 * </p>
		 * <pre>_.without([1, 2, 1, 0, 3, 1, 4], 0, 1);
		 * =&gt; [2, 3, 4]</pre>
		 */
		public static function without(array:Array, values:Array=null):Array {
			return null;
		}
		
		/**
		 * <p id="union">
		 *   <b class="header">union</b>
		 *   <code>_.union(*arrays)</code>
		 *   <br/>
		 *   Computes the union of the passed-in
		 *   <b>arrays</b>
		 *   : the list of unique items,
		 *         in order, that are present in one or more of the
		 *   <b>arrays</b>
		 *   .
		 * </p>
		 * <pre>_.union([1, 2, 3], [101, 2, 1, 10], [2, 1]);
		 * =&gt; [1, 2, 3, 101, 10]</pre>
		 */
		public static function union(arraysarrays:Vector.<Array>):Array {
			return null;
		}
		
		/**
		 * <p id="intersection">
		 *   <b class="header">intersection</b>
		 *   <code>_.intersection(*arrays)</code>
		 *   <br/>
		 *   Computes the list of values that are the intersection of all the
		 *   <b>arrays</b>
		 *   .
		 *         Each value in the result is present in each of the
		 *   <b>arrays</b>
		 *   .
		 * </p>
		 * <pre>_.intersection([1, 2, 3], [101, 2, 1, 10], [2, 1]);
		 * =&gt; [1, 2]</pre>
		 */
		public static function intersection(arraysarrays:Vector.<Array>):Array {
			return null;
		}
		
		/**
		 * <p id="difference">
		 *   <b class="header">difference</b>
		 *   <code>_.difference(array, *others)</code>
		 *   <br/>
		 *   Similar to
		 *   <b>without</b>
		 *   , but returns the values from
		 *   <b>array</b>
		 *   that
		 *         are not present in the
		 *   <b>other</b>
		 *   arrays.
		 * </p>
		 * <pre>_.difference([1, 2, 3, 4, 5], [5, 2, 10]);
		 * =&gt; [1, 3, 4]</pre>
		 */
		public static function difference(array:Array, othersarrays:Vector.<Array>):Array {
			return null;
		}
		
		/**
		 * <p id="uniq">
		 *   <b class="header">uniq</b>
		 *   <code>_.uniq(array, [isSorted], [iterator])</code>
		 *   <span class="alias">
		 *     Alias:
		 *     <b>unique</b>
		 *   </span>
		 *   <br/>
		 *   Produces a duplicate-free version of the
		 *   <b>array</b>
		 *   , using
		 *   <i>===</i>
		 *   to test
		 *         object equality. If you know in advance that the
		 *   <b>array</b>
		 *   is sorted,
		 *         passing
		 *   <i>true</i>
		 *   for
		 *   <b>isSorted</b>
		 *   will run a much faster algorithm.
		 *         If you want to compute unique items based on a transformation, pass an
		 *   <b>iterator</b>
		 *   function.
		 * </p>
		 * <pre>_.uniq([1, 2, 1, 3, 1, 4]);
		 * =&gt; [1, 2, 3, 4]</pre>
		 */
		public static function uniq(array:Array, isSorted:Boolean=false, iterator:Function=null):Array {
			return null;
		}
		
		/**
		 * <p id="zip">
		 *   <b class="header">zip</b>
		 *   <code>_.zip(*arrays)</code>
		 *   <br/>
		 *   Merges together the values of each of the
		 *   <b>arrays</b>
		 *   with the
		 *         values at the corresponding position. Useful when you have separate
		 *         data sources that are coordinated through matching array indexes.
		 *         If you're working with a matrix of nested arrays,
		 *   <b>zip.apply</b>
		 *   can transpose the matrix in a similar fashion.
		 * </p>
		 * <pre>_.zip(['moe', 'larry', 'curly'], [30, 40, 50], [true, false, false]);
		 * =&gt; [["moe", 30, true], ["larry", 40, false], ["curly", 50, false]]</pre>
		 */
		public static function zip(arraysarrays:Vector.<Array>):Array {
			return null;
		}
		
		/**
		 * <p id="object">
		 *   <b class="header">object</b>
		 *   <code>_.object(list, [values])</code>
		 *   <br/>
		 *   Converts arrays into objects. Pass either a single list of
		 *   <tt>[key, value]</tt>
		 *   pairs, or a list of keys, and a list of values.
		 * </p>
		 * <pre>_.object(['moe', 'larry', 'curly'], [30, 40, 50]);
		 * =&gt; {moe: 30, larry: 40, curly: 50}
		 * 
		 * _.object([['moe', 30], ['larry', 40], ['curly', 50]]);
		 * =&gt; {moe: 30, larry: 40, curly: 50}</pre>
		 */
		public static function object(list:Object, values:*):Object {
			return null;
		}
		
		/**
		 * <p id="indexOf">
		 *   <b class="header">indexOf</b>
		 *   <code>_.indexOf(array, value, [isSorted])</code>
		 *   <br/>
		 *   Returns the index at which
		 *   <b>value</b>
		 *   can be found in the
		 *   <b>array</b>
		 *   ,
		 *         or
		 *   <i>-1</i>
		 *   if value is not present in the
		 *   <b>array</b>
		 *   . Uses the native
		 *   <b>indexOf</b>
		 *   function unless it's missing. If you're working with a
		 *         large array, and you know that the array is already sorted, pass
		 *   <tt>true</tt>
		 *   for
		 *   <b>isSorted</b>
		 *   to use a faster binary search ... or, pass a number as
		 *         the third argument in order to look for the first matching value in the
		 *         array after the given index.
		 * </p>
		 * <pre>_.indexOf([1, 2, 3], 2);
		 * =&gt; 1</pre>
		 */
		public static function indexOf(array:Array, value:*, isSorted:Boolean=false):Number {
			return 0;
		}
		
		/**
		 * <p id="lastIndexOf">
		 *   <b class="header">lastIndexOf</b>
		 *   <code>_.lastIndexOf(array, value, [fromIndex])</code>
		 *   <br/>
		 *   Returns the index of the last occurrence of
		 *   <b>value</b>
		 *   in the
		 *   <b>array</b>
		 *   ,
		 *         or
		 *   <i>-1</i>
		 *   if value is not present. Uses the native
		 *   <b>lastIndexOf</b>
		 *   function if possible. Pass
		 *   <b>fromIndex</b>
		 *   to start your search at a
		 *         given index.
		 * </p>
		 * <pre>_.lastIndexOf([1, 2, 3, 1, 2, 3], 2);
		 * =&gt; 4</pre>
		 */
		public static function lastIndexOf(array:Array, value:*, fromIndex:int=0):Number {
			return 0;
		}
		
		/**
		 * <p id="sortedIndex">
		 *   <b class="header">sortedIndex</b>
		 *   <code>_.sortedIndex(list, value, [iterator], [context])</code>
		 *   <br/>
		 *   Uses a binary search to determine the index at which the
		 *   <b>value</b>
		 *   <i>should</i>
		 *   be inserted into the
		 *   <b>list</b>
		 *   in order to maintain the
		 *   <b>list</b>
		 *   's
		 *         sorted order. If an
		 *   <b>iterator</b>
		 *   is passed, it will be used to compute
		 *         the sort ranking of each value, including the
		 *   <b>value</b>
		 *   you pass.
		 * </p>
		 * <pre>_.sortedIndex([10, 20, 30, 40, 50], 35);
		 * =&gt; 3</pre>
		 */
		public static function sortedIndex(list:Object, value:*, iterator:Function=null, context:Object=null):Number {
			return 0;
		}
		
		/**
		 * <p id="range">
		 *   <b class="header">range</b>
		 *   <code>_.range([start], stop, [step])</code>
		 *   <br/>
		 *   A function to create flexibly-numbered lists of integers, handy for
		 *   <tt>each</tt>
		 *   and
		 *   <tt>map</tt>
		 *   loops.
		 *   <b>start</b>
		 *   , if omitted, defaults
		 *         to
		 *   <i>0</i>
		 *   ;
		 *   <b>step</b>
		 *   defaults to
		 *   <i>1</i>
		 *   . Returns a list of integers
		 *         from
		 *   <b>start</b>
		 *   to
		 *   <b>stop</b>
		 *   , incremented (or decremented) by
		 *   <b>step</b>
		 *   ,
		 *         exclusive.
		 * </p>
		 * <pre>_.range(10);
		 * =&gt; [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
		 * _.range(1, 11);
		 * =&gt; [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
		 * _.range(0, 30, 5);
		 * =&gt; [0, 5, 10, 15, 20, 25]
		 * _.range(0, -10, -1);
		 * =&gt; [0, -1, -2, -3, -4, -5, -6, -7, -8, -9]
		 * _.range(0);
		 * =&gt; []</pre>
		 */
		public static function range(start:int=0, stop:int=1, step:int=1):Array {
			return null;
		}
		
		/**
		 * <p id="bind">
		 *   <b class="header">bind</b>
		 *   <code>_.bind(function, object, [*arguments])</code>
		 *   <br/>
		 *   Bind a
		 *   <b>function</b>
		 *   to an
		 *   <b>object</b>
		 *   , meaning that whenever
		 *         the function is called, the value of
		 *   <i>this</i>
		 *   will be the
		 *   <b>object</b>
		 *   .
		 *         Optionally, pass
		 *   <b>arguments</b>
		 *   to the
		 *   <b>function</b>
		 *   to pre-fill them,
		 *         also known as
		 *   <b>partial application</b>
		 *   .
		 * </p>
		 * <pre>var func = function(greeting){ return greeting + ': ' + this.name };
		 * func = _.bind(func, {name : 'moe'}, 'hi');
		 * func();
		 * =&gt; 'hi: moe'</pre>
		 */
		public static function bind(func:Function, object:Object, arguments:Array=null):String {
			return null;
		}
		
		/**
		 * <p id="bindAll">
		 *   <b class="header">bindAll</b>
		 *   <code>_.bindAll(object, [*methodNames])</code>
		 *   <br/>
		 *   Binds a number of methods on the
		 *   <b>object</b>
		 *   , specified by
		 *   <b>methodNames</b>
		 *   , to be run in the context of that object whenever they
		 *         are invoked. Very handy for binding functions that are going to be used
		 *         as event handlers, which would otherwise be invoked with a fairly useless
		 *   <i>this</i>
		 *   . If no
		 *   <b>methodNames</b>
		 *   are provided, all of the object's
		 *         function properties will be bound to it.
		 * </p>
		 * <pre>var buttonView = {
		 *   label   : 'underscore',
		 *   onClick : function(){ alert('clicked: ' + this.label); },
		 *   onHover : function(){ console.log('hovering: ' + this.label); }
		 * };
		 * _.bindAll(buttonView);
		 * jQuery('#underscore_button').bind('click', buttonView.onClick);
		 * =&gt; When the button is clicked, this.label will have the correct value...</pre>
		 */
		public static function bindAll(object:Object, methodNames:Vector.<String>=null):void {
		}
		
		/**
		 * <p id="partial">
		 *   <b class="header">partial</b>
		 *   <code>_.partial(function, [*arguments])</code>
		 *   <br/>
		 *   Partially apply a function by filling in any number of its arguments,
		 *   <i>without</i>
		 *   changing its dynamic
		 *   <tt>this</tt>
		 *   value. A close cousin
		 *         of
		 *   <a href="http://documentcloud.github.io/underscore/#bind">bind</a>
		 *   .
		 * </p>
		 * <pre>var add = function(a, b) { return a + b; };
		 * add5 = _.partial(add, 5);
		 * add5(10);
		 * =&gt; 15</pre>
		 */
		public static function partial(func:Function, arguments:Array=null):Number {
			return 0;
		}
		
		/**
		 * <p id="memoize">
		 *   <b class="header">memoize</b>
		 *   <code>_.memoize(function, [hashFunction])</code>
		 *   <br/>
		 *   Memoizes a given
		 *   <b>function</b>
		 *   by caching the computed result. Useful
		 *         for speeding up slow-running computations. If passed an optional
		 *   <b>hashFunction</b>
		 *   , it will be used to compute the hash key for storing
		 *         the result, based on the arguments to the original function. The default
		 *   <b>hashFunction</b>
		 *   just uses the first argument to the memoized function
		 *         as the key.
		 * </p>
		 * <pre>var fibonacci = _.memoize(function(n) {
		 *   return n &lt; 2 ? n : fibonacci(n - 1) + fibonacci(n - 2);
		 * });</pre>
		 */
		public static function memoize(func:Function, hashFunction:Function=null):void {
		}
		
		/**
		 * <p id="delay">
		 *   <b class="header">delay</b>
		 *   <code>_.delay(function, wait, [*arguments])</code>
		 *   <br/>
		 *   Much like
		 *   <b>setTimeout</b>
		 *   , invokes
		 *   <b>function</b>
		 *   after
		 *   <b>wait</b>
		 *   milliseconds. If you pass the optional
		 *   <b>arguments</b>
		 *   , they will be
		 *         forwarded on to the
		 *   <b>function</b>
		 *   when it is invoked.
		 * </p>
		 * <pre>var log = _.bind(console.log, console);
		 * _.delay(log, 1000, 'logged later');
		 * =&gt; 'logged later' // Appears after one second.</pre>
		 */
		public static function delay(func:Function, wait:int, arguments:Array=null):String {
			return null;
		}
		
		/**
		 * <p id="defer">
		 *   <b class="header">defer</b>
		 *   <code>_.defer(function, [*arguments])</code>
		 *   <br/>
		 *   Defers invoking the
		 *   <b>function</b>
		 *   until the current call stack has cleared,
		 *         similar to using
		 *   <b>setTimeout</b>
		 *   with a delay of 0. Useful for performing
		 *         expensive computations or HTML rendering in chunks without blocking the UI thread
		 *         from updating. If you pass the optional
		 *   <b>arguments</b>
		 *   , they will be
		 *         forwarded on to the
		 *   <b>function</b>
		 *   when it is invoked.
		 * </p>
		 * <pre>_.defer(function(){ alert('deferred'); });
		 * // Returns from the function before the alert runs.</pre>
		 */
		public static function defer(func:Function, arguments:Array=null):void {
		}
		
		/**
		 * <p id="throttle">
		 *   <b class="header">throttle</b>
		 *   <code>_.throttle(function, wait)</code>
		 *   <br/>
		 *   Creates and returns a new, throttled version of the passed function,
		 *         that, when invoked repeatedly, will only actually call the original function
		 *         at most once per every
		 *   <b>wait</b>
		 *   milliseconds. Useful for rate-limiting events that occur faster than you
		 *         can keep up with.
		 * </p>
		 * <pre>var throttled = _.throttle(updatePosition, 100);
		 * $(window).scroll(throttled);</pre>
		 */
		public static function throttle(func:Function, wait:int):void {
		}
		
		/**
		 * <p id="debounce">
		 *   <b class="header">debounce</b>
		 *   <code>_.debounce(function, wait, [immediate])</code>
		 *   <br/>
		 *   Creates and returns a new debounced version of the passed function that
		 *         will postpone its execution until after
		 *   <b>wait</b>
		 *   milliseconds have elapsed since the last time it
		 *         was invoked. Useful for implementing behavior that should only happen
		 *   <i>after</i>
		 *   the input has stopped arriving. For example: rendering a
		 *         preview of a Markdown comment, recalculating a layout after the window
		 *         has stopped being resized, and so on.
		 * </p>
		 */
		public static function debounce(func:Function, wait:int, immediate:Boolean=false):void {
		}
		
		/**
		 * <p id="once">
		 *   <b class="header">once</b>
		 *   <code>_.once(function)</code>
		 *   <br/>
		 *   Creates a version of the function that can only be called one time.
		 *         Repeated calls to the modified function will have no effect, returning
		 *         the value from the original call. Useful for initialization functions,
		 *         instead of having to set a boolean flag and then check it later.
		 * </p>
		 * <pre>var initialize = _.once(createApplication);
		 * initialize();
		 * initialize();
		 * // Application is only created once.</pre>
		 */
		public static function once(func:Function):void {
		}
		
		/**
		 * <p id="after">
		 *   <b class="header">after</b>
		 *   <code>_.after(count, function)</code>
		 *   <br/>
		 *   Creates a version of the function that will only be run after first
		 *         being called
		 *   <b>count</b>
		 *   times. Useful for grouping asynchronous responses,
		 *         where you want to be sure that all the async calls have finished, before
		 *         proceeding.
		 * </p>
		 * <pre>var renderNotes = _.after(notes.length, render);
		 * _.each(notes, function(note) {
		 *   note.asyncSave({success: renderNotes});
		 * });
		 * // renderNotes is run once, after all notes have saved.</pre>
		 */
		public static function after(count:int, func:Function):Function {
			return null;
		}
		
		/**
		 * <p id="wrap">
		 *   <b class="header">wrap</b>
		 *   <code>_.wrap(function, wrapper)</code>
		 *   <br/>
		 *   Wraps the first
		 *   <b>function</b>
		 *   inside of the
		 *   <b>wrapper</b>
		 *   function,
		 *         passing it as the first argument. This allows the
		 *   <b>wrapper</b>
		 *   to
		 *         execute code before and after the
		 *   <b>function</b>
		 *   runs, adjust the arguments,
		 *         and execute it conditionally.
		 * </p>
		 * <pre>var hello = function(name) { return "hello: " + name; };
		 * hello = _.wrap(hello, function(func) {
		 *   return "before, " + func("moe") + ", after";
		 * });
		 * hello();
		 * =&gt; 'before, hello: moe, after'</pre>
		 */
		public static function wrap(func:Function, wrapper:Function):String {
			return null;
		}
		
		/**
		 * <p id="compose">
		 *   <b class="header">compose</b>
		 *   <code>_.compose(*functions)</code>
		 *   <br/>
		 *   Returns the composition of a list of
		 *   <b>functions</b>
		 *   , where each function
		 *         consumes the return value of the function that follows. In math terms,
		 *         composing the functions
		 *   <i>f()</i>
		 *   ,
		 *   <i>g()</i>
		 *   , and
		 *   <i>h()</i>
		 *   produces
		 *   <i>f(g(h()))</i>
		 *   .
		 * </p>
		 * <pre>var greet    = function(name){ return "hi: " + name; };
		 * var exclaim  = function(statement){ return statement + "!"; };
		 * var welcome = _.compose(exclaim, greet);
		 * welcome('moe');
		 * =&gt; 'hi: moe!'</pre>
		 */
		public static function compose(functions:Vector.<Function>):Function {
			return null;
		}
		
		/**
		 * <p id="keys">
		 *   <b class="header">keys</b>
		 *   <code>_.keys(object)</code>
		 *   <br/>
		 *   Retrieve all the names of the
		 *   <b>object</b>
		 *   's properties.
		 * </p>
		 * <pre>_.keys({one : 1, two : 2, three : 3});
		 * =&gt; ["one", "two", "three"]</pre>
		 */
		public static function keys(object:Object):Array {
			return null;
		}
		
		/**
		 * <p id="values">
		 *   <b class="header">values</b>
		 *   <code>_.values(object)</code>
		 *   <br/>
		 *   Return all of the values of the
		 *   <b>object</b>
		 *   's properties.
		 * </p>
		 * <pre>_.values({one : 1, two : 2, three : 3});
		 * =&gt; [1, 2, 3]</pre>
		 */
		public static function values(object:Object):Array {
			return null;
		}
		
		/**
		 * <p id="pairs">
		 *   <b class="header">pairs</b>
		 *   <code>_.pairs(object)</code>
		 *   <br/>
		 *   Convert an object into a list of
		 *   <tt>[key, value]</tt>
		 *   pairs.
		 * </p>
		 * <pre>_.pairs({one: 1, two: 2, three: 3});
		 * =&gt; [["one", 1], ["two", 2], ["three", 3]]</pre>
		 */
		public static function pairs(object:Object):Array {
			return null;
		}
		
		/**
		 * <p id="invert">
		 *   <b class="header">invert</b>
		 *   <code>_.invert(object)</code>
		 *   <br/>
		 *   Returns a copy of the
		 *   <b>object</b>
		 *   where the keys have become the values
		 *         and the values the keys. For this to work, all of your object's values
		 *         should be unique and string serializable.
		 * </p>
		 * <pre>_.invert({Moe: "Moses", Larry: "Louis", Curly: "Jerome"});
		 * =&gt; {Moses: "Moe", Louis: "Larry", Jerome: "Curly"};</pre>
		 */
		public static function invert(object:Object):Object {
			return null;
		}
		
		/**
		 * <p id="object-functions">
		 *   <b class="header">functions</b>
		 *   <code>_.functions(object)</code>
		 *   <span class="alias">
		 *     Alias:
		 *     <b>methods</b>
		 *   </span>
		 *   <br/>
		 *   Returns a sorted list of the names of every method in an object —
		 *         that is to say, the name of every function property of the object.
		 * </p>
		 * <pre>_.functions(_);
		 * =&gt; ["all", "any", "bind", "bindAll", "clone", "compact", "compose" ...</pre>
		 */
		public static function functions(object:Object):Array {
			return null;
		}
		
		/**
		 * <p id="extend">
		 *   <b class="header">extend</b>
		 *   <code>_.extend(destination, *sources)</code>
		 *   <br/>
		 *   Copy all of the properties in the
		 *   <b>source</b>
		 *   objects over to the
		 *   <b>destination</b>
		 *   object, and return the
		 *   <b>destination</b>
		 *   object.
		 *         It's in-order, so the last source will override properties of the same
		 *         name in previous arguments.
		 * </p>
		 * <pre>_.extend({name : 'moe'}, {age : 50});
		 * =&gt; {name : 'moe', age : 50}</pre>
		 */
		public static function extend(destination:Object, sources:Vector.<Object>):Object {
			return null;
		}
		
		/**
		 * <p id="pick">
		 *   <b class="header">pick</b>
		 *   <code>_.pick(object, *keys)</code>
		 *   <br/>
		 *   Return a copy of the
		 *   <b>object</b>
		 *   , filtered to only have values for
		 *         the whitelisted
		 *   <b>keys</b>
		 *   (or array of valid keys).
		 * </p>
		 * <pre>_.pick({name : 'moe', age: 50, userid : 'moe1'}, 'name', 'age');
		 * =&gt; {name : 'moe', age : 50}</pre>
		 */
		public static function pick(object:Object, keys:Vector.<String>):Object {
			return null;
		}
		
		/**
		 * <p id="omit">
		 *   <b class="header">omit</b>
		 *   <code>_.omit(object, *keys)</code>
		 *   <br/>
		 *   Return a copy of the
		 *   <b>object</b>
		 *   , filtered to omit the blacklisted
		 *   <b>keys</b>
		 *   (or array of keys).
		 * </p>
		 * <pre>_.omit({name : 'moe', age : 50, userid : 'moe1'}, 'userid');
		 * =&gt; {name : 'moe', age : 50}</pre>
		 */
		public static function omit(object:Object, keys:Vector.<String>):Object {
			return null;
		}
		
		/**
		 * <p id="defaults">
		 *   <b class="header">defaults</b>
		 *   <code>_.defaults(object, *defaults)</code>
		 *   <br/>
		 *   Fill in null and undefined properties in
		 *   <b>object</b>
		 *   with values from the
		 *   <b>defaults</b>
		 *   objects, and return the
		 *   <b>object</b>
		 *   . As soon as the
		 *         property is filled, further defaults will have no effect.
		 * </p>
		 * <pre>var iceCream = {flavor : "chocolate"};
		 * _.defaults(iceCream, {flavor : "vanilla", sprinkles : "lots"});
		 * =&gt; {flavor : "chocolate", sprinkles : "lots"}</pre>
		 */
		public static function defaults(object:Object, defaults:Vector.<Object>):Object {
			return null;
		}
		
		/**
		 * <p id="clone">
		 *   <b class="header">clone</b>
		 *   <code>_.clone(object)</code>
		 *   <br/>
		 *   Create a shallow-copied clone of the
		 *   <b>object</b>
		 *   . Any nested objects
		 *         or arrays will be copied by reference, not duplicated.
		 * </p>
		 * <pre>_.clone({name : 'moe'});
		 * =&gt; {name : 'moe'};</pre>
		 */
		public static function clone(object:Object):Object {
			return null;
		}
		
		/**
		 * <p id="tap">
		 *   <b class="header">tap</b>
		 *   <code>_.tap(object, interceptor)</code>
		 *   <br/>
		 *   Invokes
		 *   <b>interceptor</b>
		 *   with the
		 *   <b>object</b>
		 *   , and then returns
		 *   <b>object</b>
		 *   .
		 *         The primary purpose of this method is to "tap into" a method chain, in order to perform operations on intermediate results within the chain.
		 * </p>
		 * <pre>_.chain([1,2,3,200])
		 *   .filter(function(num) { return num % 2 == 0; })
		 *   .tap(alert)
		 *   .map(function(num) { return num * num })
		 *   .value();
		 * =&gt; // [2, 200] (alerted)
		 * =&gt; [4, 40000]</pre>
		 */
		public static function tap(object:Object, interceptor:Function):Array {
			return null;
		}
		
		/**
		 * <p id="has">
		 *   <b class="header">has</b>
		 *   <code>_.has(object, key)</code>
		 *   <br/>
		 *   Does the object contain the given key? Identical to
		 *   <tt>object.hasOwnProperty(key)</tt>
		 *   , but uses a safe reference to the
		 *   <tt>hasOwnProperty</tt>
		 *   function, in case it's been
		 *   <a href="http://www.devthought.com/2012/01/18/an-object-is-not-a-hash/">overridden accidentally</a>
		 *   .
		 * </p>
		 * <pre>_.has({a: 1, b: 2, c: 3}, "b");
		 * =&gt; true</pre>
		 */
		public static function has(object:Object, key:String):Boolean {
			return false;
		}
		
		/**
		 * <p id="isEqual">
		 *   <b class="header">isEqual</b>
		 *   <code>_.isEqual(object, other)</code>
		 *   <br/>
		 *   Performs an optimized deep comparison between the two objects, to determine
		 *         if they should be considered equal.
		 * </p>
		 * <pre>var moe   = {name : 'moe', luckyNumbers : [13, 27, 34]};
		 * var clone = {name : 'moe', luckyNumbers : [13, 27, 34]};
		 * moe == clone;
		 * =&gt; false
		 * _.isEqual(moe, clone);
		 * =&gt; true</pre>
		 */
		public static function isEqual(object:Object, other:Object):Boolean {
			return false;
		}
		
		/**
		 * <p id="isEmpty">
		 *   <b class="header">isEmpty</b>
		 *   <code>_.isEmpty(object)</code>
		 *   <br/>
		 *   Returns
		 *   <i>true</i>
		 *   if
		 *   <b>object</b>
		 *   contains no values.
		 * </p>
		 * <pre>_.isEmpty([1, 2, 3]);
		 * =&gt; false
		 * _.isEmpty({});
		 * =&gt; true</pre>
		 */
		public static function isEmpty(object:Object):Boolean {
			return false;
		}
		
		/**
		 * <p id="isElement">
		 *   <b class="header">isElement</b>
		 *   <code>_.isElement(object)</code>
		 *   <br/>
		 *   Returns
		 *   <i>true</i>
		 *   if
		 *   <b>object</b>
		 *   is a DOM element.
		 * </p>
		 * <pre>_.isElement(jQuery('body')[0]);
		 * =&gt; true</pre>
		 */
		public static function isElement(object:Object):Boolean {
			return false;
		}
		
		/**
		 * <p id="isArray">
		 *   <b class="header">isArray</b>
		 *   <code>_.isArray(object)</code>
		 *   <br/>
		 *   Returns
		 *   <i>true</i>
		 *   if
		 *   <b>object</b>
		 *   is an Array.
		 * </p>
		 * <pre>(function(){ return _.isArray(arguments); })();
		 * =&gt; false
		 * _.isArray([1,2,3]);
		 * =&gt; true</pre>
		 */
		public static function isArray(object:Object):Boolean {
			return false;
		}
		
		/**
		 * <p id="isObject">
		 *   <b class="header">isObject</b>
		 *   <code>_.isObject(value)</code>
		 *   <br/>
		 *   Returns
		 *   <i>true</i>
		 *   if
		 *   <b>value</b>
		 *   is an Object. Note that JavaScript
		 *         arrays and functions are objects, while (normal) strings and numbers are not.
		 * </p>
		 * <pre>_.isObject({});
		 * =&gt; true
		 * _.isObject(1);
		 * =&gt; false</pre>
		 */
		public static function isObject(value:*):Boolean {
			return false;
		}
		
		/**
		 * <p id="isArguments">
		 *   <b class="header">isArguments</b>
		 *   <code>_.isArguments(object)</code>
		 *   <br/>
		 *   Returns
		 *   <i>true</i>
		 *   if
		 *   <b>object</b>
		 *   is an Arguments object.
		 * </p>
		 * <pre>(function(){ return _.isArguments(arguments); })(1, 2, 3);
		 * =&gt; true
		 * _.isArguments([1,2,3]);
		 * =&gt; false</pre>
		 */
		public static function isArguments(object:Object):Boolean {
			return false;
		}
		
		/**
		 * <p id="isFunction">
		 *   <b class="header">isFunction</b>
		 *   <code>_.isFunction(object)</code>
		 *   <br/>
		 *   Returns
		 *   <i>true</i>
		 *   if
		 *   <b>object</b>
		 *   is a Function.
		 * </p>
		 * <pre>_.isFunction(alert);
		 * =&gt; true</pre>
		 */
		public static function isFunction(object:Object):Boolean {
			return false;
		}
		
		/**
		 * <p id="isString">
		 *   <b class="header">isString</b>
		 *   <code>_.isString(object)</code>
		 *   <br/>
		 *   Returns
		 *   <i>true</i>
		 *   if
		 *   <b>object</b>
		 *   is a String.
		 * </p>
		 * <pre>_.isString("moe");
		 * =&gt; true</pre>
		 */
		public static function isString(object:Object):Boolean {
			return false;
		}
		
		/**
		 * <p id="isNumber">
		 *   <b class="header">isNumber</b>
		 *   <code>_.isNumber(object)</code>
		 *   <br/>
		 *   Returns
		 *   <i>true</i>
		 *   if
		 *   <b>object</b>
		 *   is a Number (including
		 *   <tt>NaN</tt>
		 *   ).
		 * </p>
		 * <pre>_.isNumber(8.4 * 5);
		 * =&gt; true</pre>
		 */
		public static function isNumber(object:Object):Boolean {
			return false;
		}
		
		/**
		 * <p id="isFinite">
		 *   <b class="header">isFinite</b>
		 *   <code>_.isFinite(object)</code>
		 *   <br/>
		 *   Returns
		 *   <i>true</i>
		 *   if
		 *   <b>object</b>
		 *   is a finite Number.
		 * </p>
		 * <pre>_.isFinite(-101);
		 * =&gt; true
		 * 
		 * _.isFinite(-Infinity);
		 * =&gt; false</pre>
		 */
		public static function isFinite(object:Object):Boolean {
			return false;
		}
		
		/**
		 * <p id="isBoolean">
		 *   <b class="header">isBoolean</b>
		 *   <code>_.isBoolean(object)</code>
		 *   <br/>
		 *   Returns
		 *   <i>true</i>
		 *   if
		 *   <b>object</b>
		 *   is either
		 *   <i>true</i>
		 *   or
		 *   <i>false</i>
		 *   .
		 * </p>
		 * <pre>_.isBoolean(null);
		 * =&gt; false</pre>
		 */
		public static function isBoolean(object:Object):Boolean {
			return false;
		}
		
		/**
		 * <p id="isDate">
		 *   <b class="header">isDate</b>
		 *   <code>_.isDate(object)</code>
		 *   <br/>
		 *   Returns
		 *   <i>true</i>
		 *   if
		 *   <b>object</b>
		 *   is a Date.
		 * </p>
		 * <pre>_.isDate(new Date());
		 * =&gt; true</pre>
		 */
		public static function isDate(object:Object):Boolean {
			return false;
		}
		
		/**
		 * <p id="isRegExp">
		 *   <b class="header">isRegExp</b>
		 *   <code>_.isRegExp(object)</code>
		 *   <br/>
		 *   Returns
		 *   <i>true</i>
		 *   if
		 *   <b>object</b>
		 *   is a RegExp.
		 * </p>
		 * <pre>_.isRegExp(/moe/);
		 * =&gt; true</pre>
		 */
		public static function isRegExp(object:Object):Boolean {
			return false;
		}
		
		/**
		 * <p id="isNaN">
		 *   <b class="header">isNaN</b>
		 *   <code>_.isNaN(object)</code>
		 *   <br/>
		 *   Returns
		 *   <i>true</i>
		 *   if
		 *   <b>object</b>
		 *   is
		 *   <i>NaN</i>
		 *   .
		 *   <br/>
		 *   Note: this is not
		 *         the same as the native
		 *   <b>isNaN</b>
		 *   function, which will also return
		 *         true if the variable is
		 *   <i>undefined</i>
		 *   .
		 * </p>
		 * <pre>_.isNaN(NaN);
		 * =&gt; true
		 * isNaN(undefined);
		 * =&gt; true
		 * _.isNaN(undefined);
		 * =&gt; false</pre>
		 */
		public static function isNaN(object:Object):Boolean {
			return false;
		}
		
		/**
		 * <p id="isNull">
		 *   <b class="header">isNull</b>
		 *   <code>_.isNull(object)</code>
		 *   <br/>
		 *   Returns
		 *   <i>true</i>
		 *   if the value of
		 *   <b>object</b>
		 *   is
		 *   <i>null</i>
		 *   .
		 * </p>
		 * <pre>_.isNull(null);
		 * =&gt; true
		 * _.isNull(undefined);
		 * =&gt; false</pre>
		 */
		public static function isNull(object:Object):Boolean {
			return false;
		}
		
		/**
		 * <p id="isUndefined">
		 *   <b class="header">isUndefined</b>
		 *   <code>_.isUndefined(value)</code>
		 *   <br/>
		 *   Returns
		 *   <i>true</i>
		 *   if
		 *   <b>value</b>
		 *   is
		 *   <i>undefined</i>
		 *   .
		 * </p>
		 * <pre>_.isUndefined(window.missingVariable);
		 * =&gt; true</pre>
		 */
		public static function isUndefined(value:*):Boolean {
			return false;
		}
		
		/**
		 * <p id="noConflict">
		 *   <b class="header">noConflict</b>
		 *   <code>_.noConflict()</code>
		 *   <br/>
		 *   Give control of the "_" variable back to its previous owner. Returns
		 *         a reference to the
		 *   <b>Underscore</b>
		 *   object.
		 * </p>
		 * <pre>var underscore = _.noConflict();</pre>
		 */
		public static function noConflict():_ {
			return null;
		}
		
		/**
		 * <p id="identity">
		 *   <b class="header">identity</b>
		 *   <code>_.identity(value)</code>
		 *   <br/>
		 *   Returns the same value that is used as the argument. In math:
		 *   <tt>f(x) = x</tt>
		 *   <br/>
		 *   This function looks useless, but is used throughout Underscore as
		 *         a default iterator.
		 * </p>
		 * <pre>var moe = {name : 'moe'};
		 * moe === _.identity(moe);
		 * =&gt; true</pre>
		 */
		public static function identity(value:*):* {
			return null;
		}
		
		/**
		 * <p id="times">
		 *   <b class="header">times</b>
		 *   <code>_.times(n, iterator, [context])</code>
		 *   <br/>
		 *   Invokes the given iterator function
		 *   <b>n</b>
		 *   times. Each invocation of
		 *   <b>iterator</b>
		 *   is called with an
		 *   <tt>index</tt>
		 *   argument.
		 *   <br/>
		 *   <i>
		 *     Note: this example uses the
		 *     <a href="http://documentcloud.github.io/underscore/#chaining">chaining syntax</a>
		 *   </i>
		 *   .
		 * </p>
		 * <pre>_(3).times(function(n){ genie.grantWishNumber(n); });</pre>
		 */
		public static function times(n:int, iterator:Function, context:Object=null):void {
		}
		
		/**
		 * <p id="random">
		 *   <b class="header">random</b>
		 *   <code>_.random(min, max)</code>
		 *   <br/>
		 *   Returns a random integer between
		 *   <b>min</b>
		 *   and
		 *   <b>max</b>
		 *   , inclusive.
		 *         If you only pass one argument, it will return a number between
		 *   <tt>0</tt>
		 *   and that number.
		 * </p>
		 * <pre>_.random(0, 100);
		 * =&gt; 42</pre>
		 */
		public static function random(min:int, max:int):Number {
			return 0;
		}
		
		/**
		 * <p id="mixin">
		 *   <b class="header">mixin</b>
		 *   <code>_.mixin(object)</code>
		 *   <br/>
		 *   Allows you to extend Underscore with your own utility functions. Pass
		 *         a hash of
		 *   <tt>{name: function}</tt>
		 *   definitions to have your functions
		 *         added to the Underscore object, as well as the OOP wrapper.
		 * </p>
		 * <pre>_.mixin({
		 *   capitalize : function(string) {
		 *     return string.charAt(0).toUpperCase() + string.substring(1).toLowerCase();
		 *   }
		 * });
		 * _("fabio").capitalize();
		 * =&gt; "Fabio"</pre>
		 */
		public static function mixin(object:Object):void {
		}
		
		/**
		 * <p id="uniqueId">
		 *   <b class="header">uniqueId</b>
		 *   <code>_.uniqueId([prefix])</code>
		 *   <br/>
		 *   Generate a globally-unique id for client-side models or DOM elements
		 *         that need one. If
		 *   <b>prefix</b>
		 *   is passed, the id will be appended to it.
		 * </p>
		 * <pre>_.uniqueId('contact_');
		 * =&gt; 'contact_104'</pre>
		 */
		public static function uniqueId(prefix:String=null):String {
			return null;
		}
		
		/**
		 * <p id="escape">
		 *   <b class="header">escape</b>
		 *   <code>_.escape(string)</code>
		 *   <br/>
		 *   Escapes a string for insertion into HTML, replacing
		 *   <tt>&amp;</tt>
		 *   ,
		 *   <tt>&lt;</tt>
		 *   ,
		 *   <tt>&gt;</tt>
		 *   ,
		 *   <tt>"</tt>
		 *   ,
		 *   <tt>'</tt>
		 *   , and
		 *   <tt>/</tt>
		 *   characters.
		 * </p>
		 * <pre>_.escape('Curly, Larry &amp; Moe');
		 * =&gt; "Curly, Larry &amp;amp; Moe"</pre>
		 */
		public static function escape(string:String):String {
			return null;
		}
		
		/**
		 * <p id="unescape">
		 *   <b class="header">unescape</b>
		 *   <code>_.unescape(string)</code>
		 *   <br/>
		 *   The opposite of
		 *   <a href="http://documentcloud.github.io/underscore/#escape">
		 *     <b>escape</b>
		 *   </a>
		 *   , replaces
		 *   <tt>&amp;amp;</tt>
		 *   ,
		 *   <tt>&amp;lt;</tt>
		 *   ,
		 *   <tt>&amp;gt;</tt>
		 *   ,
		 *   <tt>&amp;quot;</tt>
		 *   ,
		 *   <tt>&amp;#x27;</tt>
		 *   , and
		 *   <tt>&amp;#x2F;</tt>
		 *   with their unescaped counterparts.
		 * </p>
		 * <pre>_.unescape('Curly, Larry &amp;amp; Moe');
		 * =&gt; "Curly, Larry &amp; Moe"</pre>
		 */
		public static function unescape(string:String):String {
			return null;
		}
		
		/**
		 * <p id="result">
		 *   <b class="header">result</b>
		 *   <code>_.result(object, property)</code>
		 *   <br/>
		 *   If the value of the named property is a function then invoke it; otherwise, return it.
		 * </p>
		 * <pre>var object = {cheese: 'crumpets', stuff: function(){ return 'nonsense'; }};
		 * _.result(object, 'cheese');
		 * =&gt; "crumpets"
		 * _.result(object, 'stuff');
		 * =&gt; "nonsense"</pre>
		 */
		public static function result(object:Object, property:String):* {
			return null;
		}
		
		/**
		 * <p id="template">
		 *   <b class="header">template</b>
		 *   <code>_.template(templateString, [data], [settings])</code>
		 *   <br/>
		 *   Compiles JavaScript templates into functions that can be evaluated
		 *         for rendering. Useful for rendering complicated bits of HTML from JSON
		 *         data sources. Template functions can both interpolate variables, using
		 *   <tt>&lt;%= … %&gt;</tt>
		 *   , as well as execute arbitrary JavaScript code, with
		 *   <tt>&lt;% … %&gt;</tt>
		 *   . If you wish to interpolate a value, and have
		 *         it be HTML-escaped, use
		 *   <tt>&lt;%- … %&gt;</tt>
		 *   When you evaluate a template function, pass in a
		 *   <b>data</b>
		 *   object that has properties corresponding to the template's free
		 *         variables. If you're writing a one-off, you can pass the
		 *   <b>data</b>
		 *   object as the second parameter to
		 *   <b>template</b>
		 *   in order to render
		 *         immediately instead of returning a template function.  The
		 *   <b>settings</b>
		 *   argument
		 *         should be a hash containing any
		 *   <tt>_.templateSettings</tt>
		 *   that should be overridden.
		 * </p>
		 * <pre>var compiled = _.template("hello: &lt;%= name %&gt;");
		 * compiled({name : 'moe'});
		 * =&gt; "hello: moe"
		 * 
		 * var list = "&lt;% _.each(people, function(name) { %&gt; &lt;li&gt;&lt;%= name %&gt;&lt;/li&gt; &lt;% }); %&gt;";
		 * _.template(list, {people : ['moe', 'curly', 'larry']});
		 * =&gt; "&lt;li&gt;moe&lt;/li&gt;&lt;li&gt;curly&lt;/li&gt;&lt;li&gt;larry&lt;/li&gt;"
		 * 
		 * var template = _.template("&lt;b&gt;&lt;%- value %&gt;&lt;/b&gt;");
		 * template({value : '&lt;script&gt;'});
		 * =&gt; "&lt;b&gt;&amp;lt;script&amp;gt;&lt;/b&gt;"</pre>
		 */
		public static function template(templateString:String, data:Object=null, settings:Object=null):Function {
			return null;
		}
		
		/**
		 * <p id="chain">
		 *   <b class="header">chain</b>
		 *   <code>_.chain(obj)</code>
		 *   <br/>
		 *   Returns a wrapped object. Calling methods on this object will continue
		 *         to return wrapped objects until
		 *   <tt>value</tt>
		 *   is used.
		 * </p>
		 * <pre>var stooges = [{name : 'curly', age : 25}, {name : 'moe', age : 21}, {name : 'larry', age : 23}];
		 * var youngest = _.chain(stooges)
		 *   .sortBy(function(stooge){ return stooge.age; })
		 *   .map(function(stooge){ return stooge.name + ' is ' + stooge.age; })
		 *   .first()
		 *   .value();
		 * =&gt; "moe is 21"</pre>
		 */
		public static function chain(obj:Object):_chained {
			return null;
		}
		
	}
}