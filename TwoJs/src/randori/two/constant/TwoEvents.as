package randori.two.constant
{
	[JavaScript(export="false")]
	/**
	 * A list of actionable events triggered by a given instance. For the most part these are internal events in 
	 * order to enable two-way databinding. Exceptions include update event on animation loop and resize when the 
	 * dimensions of the drawing space change. Related to <code>Two.bind</code> and <code>Two.trigger</code>.
	 */
	public final class TwoEvents
	{
		public static const play:String = 'play';
		public static const pause:String = 'pause';
		public static const update:String = 'update';
		public static const render:String = 'render';
		public static const resize:String = 'resize';
		public static const change:String = 'change';
	}
}