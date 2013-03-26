/***
 * Copyright 2013 LTN Consulting, Inc. /dba Digital PrimatesÂ®
 * 
 * Licensed under the Apache License, Version 2.0 (the 'License');
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * 
 * 
 * !!!! THIS IS A GENERATED FILE, DO NOT MAKE ANY CHANGES TO IT MANUALLY !!!!
 * The XML files at this location: https://github.com/jquery/api.jqueryui.com were
 * used to generate this class
 * @author Randori JQueryUI generator
*/
package randori.jqueryui {
	import randori.webkit.dom.Element;
	
	
	/**
	 * Select a date from a popup or inline calendar
	 * <p>The jQuery UI Datepicker is a highly configurable plugin that adds datepicker functionality to your pages. You can customize the date format and language, restrict the selectable date ranges and add in buttons and other navigation options easily.</p><p>By default, the datepicker calendar opens in a small overlay when the associated text field gains focus. For an inline calendar, simply attach the datepicker to a div or span.</p><h3>Keyboard interaction</h3><p>While the datepicker is open, the following key commands are available:</p><ul><li>PAGE UP: Move to the previous month.</li><li>PAGE DOWN: Move to the next month.</li><li>CTRL+PAGE UP: Move to the previous year.</li><li>CTRL+PAGE DOWN: Move to the next year.</li><li>CTRL+HOME: Move to the current month. Open the datepicker if closed.</li><li>CTRL+LEFT: Move to the previous day.</li><li>CTRL+RIGHT: Move to the next day.</li><li>CTRL+UP: Move to the previous week.</li><li>CTRL+DOWN: Move the next week.</li><li>ENTER: Select the focused date.</li><li>CTRL+END: Close the datepicker and erase the date.</li><li>ESCAPE: Close the datepicker without selection.</li></ul><h3 id="utility-functions">Utility functions</h3><h4 id="utility-setDefaults">$.datepicker.setDefaults( settings )</h4><p>Change the default settings for all date pickers.</p><p>Use the <a href="#method-option"><code>option()</code></a> method to change settings for individual instances.</p><div><strong>Code examples:</strong><p>Set all date pickers to open on focus or a click on an icon.</p><pre><code>
	 * $.datepicker.setDefaults({
	 * showOn: "both",
	 * buttonImageOnly: true,
	 * buttonImage: "calendar.gif",
	 * buttonText: "Calendar"
	 * });
	 * </code></pre><p>Set all date pickers to have French text.</p><pre><code>
	 * $.datepicker.setDefaults( $.datepicker.regional[ "fr" ] );
	 * </code></pre></div><h4 id="utility-formatDate">$.datepicker.formatDate( format, date, settings )</h4><p>Format a date into a string value with a specified format.</p><p>The format can be combinations of the following:</p><ul><li>d - day of month (no leading zero)</li><li>dd - day of month (two digit)</li><li>o - day of the year (no leading zeros)</li><li>oo - day of the year (three digit)</li><li>D - day name short</li><li>DD - day name long</li><li>m - month of year (no leading zero)</li><li>mm - month of year (two digit)</li><li>M - month name short</li><li>MM - month name long</li><li>y - year (two digit)</li><li>yy - year (four digit)</li><li>@ - Unix timestamp (ms since 01/01/1970)</li><li> ! - Windows ticks (100ns since 01/01/0001)</li><li>'...' - literal text</li><li>'' - single quote</li><li>anything else - literal text</li></ul><p>There are also a number of predefined standard date formats available from <code>$.datepicker</code>:</p><ul><li>ATOM - 'yy-mm-dd' (Same as RFC 3339/ISO 8601)</li><li>COOKIE - 'D, dd M yy'</li><li>ISO_8601 - 'yy-mm-dd'</li><li>RFC_822 - 'D, d M y' (See RFC 822)</li><li>RFC_850 - 'DD, dd-M-y' (See RFC 850)</li><li>RFC_1036 - 'D, d M y' (See RFC 1036)</li><li>RFC_1123 - 'D, d M yy' (See RFC 1123)</li><li>RFC_2822 - 'D, d M yy' (See RFC 2822)</li><li>RSS - 'D, d M y' (Same as RFC 822)</li><li>TICKS - '!'</li><li>TIMESTAMP - '@'</li><li>W3C - 'yy-mm-dd' (Same as ISO 8601)</li></ul><div><strong>Code examples:</strong><p>Display the date in ISO format. Produces "2007-01-26".</p><pre><code>
	 * $.datepicker.formatDate( "yy-mm-dd", new Date( 2007, 1 - 1, 26 ) );
	 * </code></pre><p>Display the date in expanded French format. Produces "Samedi, Juillet 14, 2007".</p><pre><code>
	 * $.datepicker.formatDate( "DD, MM d, yy", new Date( 2007, 7 - 1, 14 ), {
	 * dayNamesShort: $.datepicker.regional[ "fr" ].dayNamesShort,
	 * dayNames: $.datepicker.regional[ "fr" ].dayNames,
	 * monthNamesShort: $.datepicker.regional[ "fr" ].monthNamesShort,
	 * monthNames: $.datepicker.regional[ "fr" ].monthNames
	 * });
	 * </code></pre></div><h4 id="utility-parseDate">$.datepicker.parseDate( format, value, settings )</h4><p>Extract a date from a string value with a specified format.</p><p>The format can be combinations of the following:</p><ul><li>d - day of month (no leading zero)</li><li>dd - day of month (two digit)</li><li>o - day of year (no leading zeros)</li><li>oo - day of year (three digit)</li><li>D - day name short</li><li>DD - day name long</li><li>m - month of year (no leading zero)</li><li>mm - month of year (two digit)</li><li>M - month name short</li><li>MM - month name long</li><li>y - year (two digit)</li><li>yy - year (four digit)</li><li>@ - Unix timestamp (ms since 01/01/1970)</li><li> ! - Windows ticks (100ns since 01/01/0001)</li><li>'...' - literal text</li><li>'' - single quote</li><li>anything else - literal text</li></ul><p>A number of exceptions may be thrown:</p><ul><li>'Invalid arguments' if either format or value is null</li><li>'Missing number at position nn' if format indicated a numeric value that is not then found</li><li>'Unknown name at position nn' if format indicated day or month name that is not then found</li><li>'Unexpected literal at position nn' if format indicated a literal value that is not then found</li><li>'Invalid date' if the date is invalid, such as '31/02/2007'</li></ul><div><strong>Code examples:</strong><p>Extract a date in ISO format.</p><pre><code>
	 * $.datepicker.parseDate( "yy-mm-dd", "2007-01-26" );
	 * </code></pre><p>Extract a date in expanded French format.</p><pre><code>
	 * $.datepicker.parseDate( "DD, MM d, yy", "Samedi, Juillet 14, 2007", {
	 * shortYearCuroff: 20,
	 * dayNamesShort: $.datepicker.regional[ "fr" ].dayNamesShort,
	 * dayNames: $.datepicker.regional[ "fr" ].dayNames,
	 * monthNamesShort: $.datepicker.regional[ "fr" ].monthNamesShort,
	 * monthNames: $.datepicker.regional[ "fr" ].monthNames
	 * });
	 * </code></pre></div><h4 id="utility-iso8601Week">$.datepicker.iso8601Week( date )</h4><p>Determine the week of the year for a given date: 1 to 53.</p><p>This function uses the ISO 8601 definition of a week: weeks start on a Monday and the first week of the year contains January 4. This means that up to three days from the previous year may be included in the of first week of the current year, and that up to three days from the current year may be included in the last week of the previous year.</p><p>This function is the default implementation for the <a href="#option-calculateWeek"><code>calculateWeek</code></a> option.</p><div><strong>Code examples:</strong><p>Find the week of the year for a date.</p><pre><code>
	 * $.datepicker.iso8601Week( new Date( 2007, 1 - 1, 26 ) );
	 * </code></pre></div><h4 id="utility-noWeekends">$.datepicker.noWeekends</h4><p>Set as beforeShowDay function to prevent selection of weekends.</p><p>We can provide the <code>noWeekends()</code> function into the <a href="#option-beforeShowDay"><code>beforeShowDay</code></a> option which will calculate all the weekdays and provide an array of <code>true</code>/<code>false</code> values indicating whether a date is selectable.</p><div><strong>Code examples:</strong><p>Set the DatePicker so no weekend is selectable</p><pre><code>
	 * $( "#datepicker" ).datepicker({
	 * beforeShowDay: $.datepicker.noWeekends
	 * });
	 * </code></pre></div><h3>Localization</h3><p>Datepicker provides support for localizing its content to cater for different languages and date formats. Each localization is contained within its own file with the language code appended to the name, e.g., <code>jquery.ui.datepicker-fr.js</code> for French. The desired localization file should be included after the main datepicker code. Each localization file adds its settings to the set of available localizations and automatically applies them as defaults for all instances.</p><p>The <code>$.datepicker.regional</code> attribute holds an array of localizations, indexed by language code, with <code>""</code> referring to the default (English). Each entry is an object with the following attributes: <code>closeText</code>, <code>prevText</code>, <code>nextText</code>, <code>currentText</code>, <code>monthNames</code>, <code>monthNamesShort</code>, <code>dayNames</code>, <code>dayNamesShort</code>, <code>dayNamesMin</code>, <code>weekHeader</code>, <code>dateFormat</code>, <code>firstDay</code>, <code>isRTL</code>, <code>showMonthAfterYear</code>, and <code>yearSuffix</code>.</p><p>You can restore the default localizations with:</p><code>$.datepicker.setDefaults( $.datepicker.regional[ "" ] );</code><p>And can then override an individual datepicker for a specific locale:</p><code>$( selector ).datepicker( $.datepicker.regional[ "fr" ] );</code><h3>Dependencies</h3><ul><li><a href="/category/ui-core/">UI Core</a></li><li><a href="/category/effects-core/">Effects Core</a> (optional; for use with the <a href="#option-showAnim"><code>showAnim</code></a> option)</li></ul>
	 */
	[JavaScript(export="false")]
	public class Datepicker {
		
		/**
		 * An input element that is to be updated with the selected date from the datepicker. Use the <a href="#option-altFormat"><code>altFormat</code></a> option to change the format of the date within this field. Leave as blank for no alternate field.
		 */
		public var altField:*;
		
		public var altFieldSelector:String;
		
		public var altFieldjQuery:JQueryUI;
		
		public var altFieldElement:Element;
		
		/**
		 * The <a href="#option-dateFormat"><code>dateFormat</code></a> to be used for the <a href="#option-altField"><code>altField</code></a> option. This allows one date format to be shown to the user for selection purposes, while a different format is actually sent behind the scenes. For a full list of the possible formats see the <a href="#utility-formatDate"><code>formatDate</code></a> function
		 */
		public var altFormat:String;
		
		/**
		 * The text to display after each date field, e.g., to show the required format.
		 */
		public var appendText:String;
		
		/**
		 * Set to <code>true</code> to automatically resize the input field to accommodate dates in the current <a href="#option-dateFormat"><code>dateFormat</code></a>.
		 */
		public var autoSize:Boolean;
		
		/**
		 * The URL for the popup button image. If set, the <a href="#option-buttonText"><code>buttonText</code></a> option becomes the <code>alt</code> value and is not directly displayed.
		 */
		public var buttonImage:String;
		
		/**
		 * Whether the button image should be rendered by itself instead of inside a button element.
		 */
		public var buttonImageOnly:Boolean;
		
		/**
		 * The text to display on the trigger button. Use in conjunction with the <a href="#option-showOn"><code>showOn</code></a> option set to <code>"button"</code> or <code>"both"</code>.
		 */
		public var buttonText:String;
		
		/**
		 * A function to calculate the week of the year for a given date. The default implementation uses the ISO 8601 definition: weeks start on a Monday; the first week of the year contains the first Thursday of the year.
		 */
		public var calculateWeek:Function;
		
		/**
		 * Whether the month should be rendered as a dropdown instead of text.
		 */
		public var changeMonth:Boolean;
		
		/**
		 * Whether the year should be rendered as a dropdown instead of text. Use the <a href="#option-yearRange"><code>yearRange</code></a> option to control which years are made available for selection.
		 */
		public var changeYear:Boolean;
		
		/**
		 * The text to display for the close link. Use the <a href="#option-showButtonPanel"><code>showButtonPanel</code></a> option to display this button.
		 */
		public var closeText:String;
		
		/**
		 * When <code>true</code>, entry in the input field is constrained to those characters allowed by the current <a href="#option-dateFormat"><code>dateFormat</code></a> option.
		 */
		public var constrainInput:Boolean;
		
		/**
		 * The text to display for the current day link. Use the <a href="#option-showButtonPanel"><code>showButtonPanel</code></a> option to display this button.
		 */
		public var currentText:String;
		
		/**
		 * The format for parsed and displayed dates. For a full list of the possible formats see the <code><a href="#utility-formatDate"><code>formatDate</code></a></code> function.
		 */
		public var dateFormat:String;
		
		/**
		 * The list of long day names, starting from Sunday, for use as requested via the <a href="#option-dateFormat"><code>dateFormat</code></a> option.
		 */
		public var dayNames:Array;
		
		/**
		 * The list of minimised day names, starting from Sunday, for use as column headers within the datepicker.
		 */
		public var dayNamesMin:Array;
		
		/**
		 * The list of abbreviated day names, starting from Sunday, for use as requested via the <a href="#option-dateFormat"><code>dateFormat</code></a> option.
		 */
		public var dayNamesShort:Array;
		
		/**
		 * Set the date to highlight on first opening if the field is blank. Specify either an actual date via a Date object or as a string in the current <a href="#option-dateFormat"><code>dateFormat</code></a>, or a number of days from today (e.g. +7) or a string of values and periods ('y' for years, 'm' for months, 'w' for weeks, 'd' for days, e.g. '+1m +7d'), or null for today.
		 */
		public var defaultDate:*;
		
		/**
		 * A date object containing the default date.
		 */
		public var defaultDateDate:Date;
		
		/**
		 * A number of days from today. For example <code>2</code> represents two days from today and <code>-1</code> represents yesterday.
		 */
		public var defaultDateNumber:Number;
		
		/**
		 * A string in the format defined by the <a href="#option-dateFormat"><code>dateFormat</code></a> option, or a relative date. Relative dates must contain value and period pairs; valid periods are <code>"y"</code> for years, <code>"m"</code> for months, <code>"w"</code> for weeks, and <code>"d"</code> for days. For example, <code>"+1m +7d"</code> represents one month and seven days from today.
		 */
		public var defaultDateString:String;
		
		/**
		 * Control the speed at which the datepicker appears, it may be a time in milliseconds or a string representing one of the three predefined speeds ("slow", "normal", "fast").
		 */
		public var duration:*;
		
		public var durationNumber:Number;
		
		public var durationString:String;
		
		/**
		 * Set the first day of the week: Sunday is <code>0</code>, Monday is <code>1</code>, etc.
		 */
		public var firstDay:int;
		
		/**
		 * When <code>true</code>, the current day link moves to the currently selected date instead of today.
		 */
		public var gotoCurrent:Boolean;
		
		/**
		 * Normally the previous and next links are disabled when not applicable (see the <a href="#option-minDate"><code>minDate</code></a> and <a href="#option-maxDate"><code>maxDate</code></a> options). You can hide them altogether by setting this attribute to <code>true</code>.
		 */
		public var hideIfNoPrevNext:Boolean;
		
		/**
		 * Whether the current language is drawn from right to left.
		 */
		public var isRTL:Boolean;
		
		/**
		 * The maximum selectable date. When set to <code>null</code>, there is no maximum.
		 */
		public var maxDate:*;
		
		/**
		 * A date object containing the maximum date.
		 */
		public var maxDateDate:Date;
		
		/**
		 * A number of days from today. For example <code>2</code> represents two days from today and <code>-1</code> represents yesterday.
		 */
		public var maxDateNumber:Number;
		
		/**
		 * A string in the format defined by the <a href="#option-dateFormat"><code>dateFormat</code></a> option, or a relative date. Relative dates must contain value and period pairs; valid periods are <code>"y"</code> for years, <code>"m"</code> for months, <code>"w"</code> for weeks, and <code>"d"</code> for days. For example, <code>"+1m +7d"</code> represents one month and seven days from today.
		 */
		public var maxDateString:String;
		
		/**
		 * The minimum selectable date. When set to <code>null</code>, there is no minimum.
		 */
		public var minDate:*;
		
		/**
		 * A date object containing the minimum date.
		 */
		public var minDateDate:Date;
		
		/**
		 * A number of days from today. For example <code>2</code> represents two days from today and <code>-1</code> represents yesterday.
		 */
		public var minDateNumber:Number;
		
		/**
		 * A string in the format defined by the <a href="#option-dateFormat"><code>dateFormat</code></a> option, or a relative date. Relative dates must contain value and period pairs; valid periods are <code>"y"</code> for years, <code>"m"</code> for months, <code>"w"</code> for weeks, and <code>"d"</code> for days. For example, <code>"+1m +7d"</code> represents one month and seven days from today.
		 */
		public var minDateString:String;
		
		/**
		 * The list of full month names, for use as requested via the <a href="#option-dateFormat"><code>dateFormat</code></a> option.
		 */
		public var monthNames:Array;
		
		/**
		 * The list of abbreviated month names, as used in the month header on each datepicker and as requested via the <a href="#option-dateFormat"><code>dateFormat</code></a> option.
		 */
		public var monthNamesShort:Array;
		
		/**
		 * Whether the <a href="#option-prevText"><code>prevText</code></a> and <a href="#option-nextText"><code>nextText</code></a> options should be parsed as dates by the <code><a href="#utility-formatDate"><code>formatDate</code></a></code> function, allowing them to display the target month names for example.
		 */
		public var navigationAsDateFormat:Boolean;
		
		/**
		 * The text to display for the next month link. With the standard ThemeRoller styling, this value is replaced by an icon.
		 */
		public var nextText:String;
		
		/**
		 * The number of months to show at once.
		 */
		public var numberOfMonths:*;
		
		/**
		 * The number of months to display in a single row.
		 */
		public var numberOfMonthsNumber:Number;
		
		/**
		 * An array defining the number of rows and columns to display.
		 */
		public var numberOfMonthsArray:Array;
		
		/**
		 * The text to display for the previous month link. With the standard ThemeRoller styling, this value is replaced by an icon.
		 */
		public var prevText:String;
		
		/**
		 * Whether days in other months shown before or after the current month are selectable. This only applies if the <a href="#option-showOtherMonths"><code>showOtherMonths</code></a> option is set to <code>true</code>.
		 */
		public var selectOtherMonths:Boolean;
		
		/**
		 * The cutoff year for determining the century for a date (used in conjunction with <a href="#option-dateFormat"><code>dateFormat</code></a> 'y'). Any dates entered with a year value less than or equal to the cutoff year are considered to be in the current century, while those greater than it are deemed to be in the previous century.
		 */
		public var shortYearCutoff:*;
		
		/**
		 * A value between <code>0</code> and <code>99</code> indicating the cutoff year.
		 */
		public var shortYearCutoffNumber:Number;
		
		/**
		 * A relative number of years from the current year, e.g., <code>"+3"</code> or <code>"-5"</code>.
		 */
		public var shortYearCutoffString:String;
		
		/**
		 * The name of the animation used to show and hide the datepicker. Use <code>"show"</code> (the default), <code>"slideDown"</code>, <code>"fadeIn"</code>, any of the <a href="/category/effects/">jQuery UI effects</a>. Set to an empty string to disable animation.
		 */
		public var showAnim:String;
		
		/**
		 * Whether to show the button panel.
		 */
		public var showButtonPanel:Boolean;
		
		/**
		 * When displaying multiple months via the <a href="#option-numberOfMonths"><code>numberOfMonths</code></a> option, the <code>showCurrentAtPos</code> option defines which position to display the current month in.
		 */
		public var showCurrentAtPos:Number;
		
		/**
		 * Whether to show the month after the year in the header.
		 */
		public var showMonthAfterYear:Boolean;
		
		/**
		 * When the datepicker should appear. The datepicker can appear when the field receives focus (<code>"focus"</code>), when a button is clicked (<code>"button"</code>), or when either event occurs (<code>"both"</code>).
		 */
		public var showOn:String;
		
		/**
		 * If using one of the jQuery UI effects for the <a href="#option-showAnim"><code>showAnim</code></a> option, you can provide additional settings for that animation via this option.
		 */
		public var showOptions:Object;
		
		/**
		 * Whether to display dates in other months (non-selectable) at the start or end of the current month. To make these days selectable use the <a href="#option-selectOtherMonths"><code>selectOtherMonths</code></a> option.
		 */
		public var showOtherMonths:Boolean;
		
		/**
		 * When <code>true</code>, a column is added to show the week of the year. The <a href="#option-calculateWeek"><code>calculateWeek</code></a> option determines how the week of the year is calculated. You may also want to change the <a href="#option-firstDay"><code>firstDay</code></a> option.
		 */
		public var showWeek:Boolean;
		
		/**
		 * Set how many months to move when clicking the previous/next links.
		 */
		public var stepMonths:Number;
		
		/**
		 * The text to display for the week of the year column heading. Use the <a href="#option-showWeek"><code>showWeek</code></a> option to display this column.
		 */
		public var weekHeader:String;
		
		/**
		 * The range of years displayed in the year drop-down: either relative to today's year (<code>"-nn:+nn"</code>), relative to the currently selected year (<code>"c-nn:c+nn"</code>), absolute (<code>"nnnn:nnnn"</code>), or combinations of these formats (<code>"nnnn:-nn"</code>). Note that this option only affects what appears in the drop-down, to restrict which dates may be selected use the <a href="#option-minDate"><code>minDate</code></a> and/or <a href="#option-maxDate"><code>maxDate</code></a> options.
		 */
		public var yearRange:String;
		
		/**
		 * Additional text to display after the year in the month headers.
		 */
		public var yearSuffix:String;
		
		/**
		 * A function that takes an input field and current datepicker instance and returns an options object to update the datepicker with. It is called just before the datepicker is displayed.
		 */
		public var beforeShow:Function;
		
		/**
		 * A function takes a date as a parameter and must return an array with <code>[0]</code> equal to <code>true</code>/<code>false</code> indicating whether or not this date is selectable, <code>[1]</code> equal to a CSS class name or <code>""</code> for the default presentation, and <code>[2]</code> an optional popup tooltip for this date. It is called for each day in the datepicker before it is displayed.
		 */
		public var beforeShowDay:Function;
		
		/**
		 * Called when the datepicker moves to a new month and/or year. The function receives the selected year, month (1-12), and the datepicker instance as parameters. <code>this</code> refers to the associated input field.
		 */
		public var onChangeMonthYear:Function;
		
		/**
		 * Called when the datepicker is closed, whether or not a date is selected. The function receives the selected date as text (<code>""</code> if none) and the datepicker instance as parameters. <code>this</code> refers to the associated input field.
		 */
		public var onClose:Function;
		
		/**
		 * Called when the datepicker is selected. The function receives the selected date as text and the datepicker instance as parameters. <code>this</code> refers to the associated input field.
		 */
		public var onSelect:Function;
		
		/**
		 * Opens the datepicker in a dialog box.
		 */
		public function dialog():void {
		}
		
		/**
		 * Determine whether a date picker has been disabled.
		 */
		public function isDisabled():Boolean {
			return false;
		}
		
		/**
		 * Close a previously opened date picker.
		 */
		public function hide():void {
		}
		
		/**
		 * Open the date picker. If the datepicker is attached to an input, the input must be visible for the datepicker to be shown.
		 */
		public function show():void {
		}
		
		/**
		 * Redraw the date picker, after having made some external modifications.
		 */
		public function refresh():void {
		}
		
		/**
		 * Returns the current date for the datepicker or <code>null</code> if no date has been selected.
		 */
		public function getDate():Date {
			return null;
		}
		
		/**
		 * Sets the date for the datepicker. The new date may be a <code>Date</code> object or a string in the current <a href="#option-dateFormat">date format</a> (e.g., <code>"01/26/2009"</code>), a number of days from today (e.g., <code>+7</code>) or a string of values and periods (<code>"y"</code> for years, <code>"m"</code> for months, <code>"w"</code> for weeks, <code>"d"</code> for days, e.g., <code>"+1m +7d"</code>), or <code>null</code> to clear the selected date.
		 */
		public function setDate():void {
		}
		
		/**
		 * Removes the <code>Datepicker</code> functionality completely. This will return the element back to its pre-init state.
		 */
		public function destroy():void {
		}
		
		/**
		 * Gets the value currently associated with the specified <code>optionName</code>.
		 */
		[JavaScriptMethod(name="option")]
		public function option1(optionName:String):JQueryUI {
			return null;
		}
		
		/**
		 * Gets an object containing key/value pairs representing the current <code>Datepicker</code> options hash.
		 */
		[JavaScriptMethod(name="option")]
		public function option2():JQueryUI {
			return null;
		}
		
		/**
		 * Sets the value of the <code>Datepicker</code> option associated with the specified <code>optionName</code>.
		 */
		[JavaScriptMethod(name="option")]
		public function option3(optionName:String, value:Object):JQueryUI {
			return null;
		}
		
		/**
		 * Sets one or more options for the <code>Datepicker</code>.
		 */
		[JavaScriptMethod(name="option")]
		public function option4(options:Object):JQueryUI {
			return null;
		}
		
		/**
		 * Returns a <code>jQuery</code> object containing the <placeholder name="widget-element" />.
		 */
		public function widget():JQueryUI {
			return null;
		}
		
		public function option(...params):* {
			return null;
		}
	}
}
