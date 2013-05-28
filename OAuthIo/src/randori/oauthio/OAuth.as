package randori.oauthio
{
	[JavaScript(export="false",name="OAuth")]
	/**
	 * JavaScript for interop with http://oauth.io/ library
	 */
	public final class OAuth
	{
		public static function initialize(publicKey:String):void {};
		
		public static function popup(title:String, callBack:Function):void {};
		
		public static function redirect(title:String, url:String):void {};
	}
}