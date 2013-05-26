package randori.knockout
{
	import randori.webkit.dom.Element;

	[JavaScript(export="false", name="ko")]
	public class Knockout
	{
		public static function applyBindings(viewModel:Object, rootNode:Element):void {
		}
		
		public static function observable(initialValue:Object=null):Object {
			return undefined;	
		}

		public static function observableArray(initialValues:Array):Array {
			return undefined;
		}
		
		public static function computed(evaluatorFunctionOrOptions:Object, evaluatorFunctionTarget:Object, options:Object=null):Object {
			return undefined;
		}
	}
}