package randori.two
{
	import randori.two.params.TwoParams;
	import randori.webkit.dom.Element;

	[JavaScript(export="false",name="Two")]
	/**
	 * When you import the library Two is a window level class that serves as the main interaction point for the project.
	 * It exposes a number of methods and properties. These make it possible to draw, but also afford other capabilities
	 * such as augmenting the drawing space. Below are the documented properties and features of the Two class. 
	 * Unless specified methods return their instance of Two for the purpose of chaining. 
	 */
	public class Two
	{
		/**
		 * Create a new instance of Two
		 * @param params
		 */
		public function Two(params:TwoParams)
		{
		}
		
		/**
		 * A string representing which type of renderer the instance has implored.
		 * Use the <code>TwoTypes</code> enumeration for the available types.
		 * @see randori.two.constant.TwoTypes
		 */
		public var type:String;
		/**
		 * A number representing how many frames have elapsed.
		 */
		public var frameCount:int;
		/**
		 * A number representing how much time has elapsed since the last frame in milliseconds.
		 */
		public var timeDelta:int;
		/**
		 * The width of the instance's dom element.
		 */
		public var width:int;
		/**
		 * The height of the instance's dom element.
		 */
		public var height:int;
		/**
		 * A <code>Boolean</code> representing whether or not the instance is being updated through the automatic <code>requestAnimationFrame</code>.
		 */
		public var playing:Boolean;
		/**
		 * The instantiated rendering class for the instance. For a list of possible rendering types check out <code>TwoTypes</code>.
		 * @see randori.two.constant.TwoTypes
		 */
		public var renderer:String;
		/**
		 * The base level <code>Group</code> which houses all objects for the instance. 
		 * Because it is a <code>Group</code> transformations can be applied to it that will affect all objects in the instance. 
		 * This is handy as a makeshift camera.
		 */
		public var scene:Group;
		
		/**
		 * A convenient method to append the instance's dom element to the page. 
		 * It's required to add the instance's dom element to the page in order to see anything drawn.
		 * @param element
		 * @return 
		 */
		public function appendTo(element:Element):Two {
			return null;
		}

		/**
		 * This method adds the instance to the <code>requestAnimationFrame</code> loop. In affect enabling animation for this instance.
		 * @return 
		 * 
		 */
		public function play():Two {
			return null;
		}
		
		/**
		 * This method removes the instance from the requestAnimationFrame loop. In affect halting animation for this instance.
		 * @return 
		 * 
		 */
		public function pause():Two {
			return null;
		}

		/**
		 * This method updates the dimensions of the drawing space, increments the tick for animation, and finally calls <code>render()</code>. 
		 * When using the built-in requestAnimationFrame hook, <code>play()</code>, this method is invoked for you automatically.
		 * @return 
		 */
		public function update():Two {
			return null;
		}

		/**
		 * This method makes the instance's renderer draw. It should be unnecessary to invoke this yourself at anytime.
		 * @return 
		 */
		public function render():Two {
			return null;
		}

		/**
		 * Add one or many shapes / groups to the instance. Objects can be added as arguments, <code>two.add(o1, o2, oN)</code>.
		 * @param objects
		 * @return 
		 * 
		 */
		public function add(...objects):Two {
			return null;
		}
		
		/**
		 * Remove one or many shapes / groups from the instance. Objects can be removed as arguments, <code>two.remove(o1, o2, oN)</code>.
		 * @param objects
		 * @return 
		 */
		public function remove(...objects):Two {
			return null;
		}
		
		/**
		 * Removes all objects from the instance's scene. If you intend to have the browser garbage collect this, 
		 * don't forget to delete the references in your application as well.
		 * @return 
		 */
		public function clear():Two {
			return null;
		}

		/**
		 * Draws a line between two coordinates to the instance's drawing space where x1, y1 are the x, y values for the first 
		 * coordinate and x2, y2 are the x, y values for the second coordinate. 
		 * It returns a <code>Polygon</code> object.
		 * @param x1
		 * @param y1
		 * @param x2
		 * @param y2
		 * @return 
		 * 
		 */
		public function makeLine(x1:int, y1:int, x2:int, y2:int):Polygon {
			return null;
		}
		
		/**
		 * Draws a rectangle to the instance's drawing space where x, y are the x, y values for the center point of the rectangle and width, 
		 * height represents the width and height of the rectangle. 
		 * It returns a <code>Polygon</code> object.
		 * @param x
		 * @param y
		 * @param width
		 * @param height
		 * @return 
		 * 
		 */
		public function makeRectangle(x:int, y:int, width:int, height:int):Polygon {
			return null;
		}
		
		/**
		 * Draws a circle to the instance's drawing space where x, y are the x, y values for the center point of 
		 * the circle and radius is the radius of the circle.
		 * It returns a <code>Polygon</code> object. 
		 * @param x
		 * @param y
		 * @param radius
		 * @return 
		 */
		public function makeCircle(x:int, y:int, radius:int):Polygon {
			return null;
		}
		
		/**
		 * Draws an ellipse to the instance's drawing space where x, y are the x, y values for the center point of 
		 * the ellipse and width, height are the dimensions of the ellipse. 
		 * It returns a <code>Polygon</code> object.
		 * @param x
		 * @param y
		 * @param width
		 * @param height
		 * @return 
		 */
		public function makeEllipse(x:int, y:int, width:int, height:int):Polygon {
			return null;
		}
		
		/**
		 * Draws a curved polygon to the instance's drawing space. The arguments are a little tricky. It returns a <code>Polygon</code> object.<br/>
		 * The method accepts any amount of paired x, y values as denoted by the series above. It then checks to see if there is a final argument, 
		 * a boolean open, which marks whether or not the shape should be open. If true the curve will have two clear endpoints, otherwise it 
		 * will be closed.<br/>
	 	 * This method also recognizes the format two.makeCurve(points, open) where points is an array of <code>TwoVector</code>'s and open is an 
		 * optional boolean describing whether or not to expose endpoints. It is imperative if you generate curves this way to make the list of points 
		 * <code>TwoVector</code>'s.
		 * @param x1
		 * @param y1
		 * @param x2
		 * @param y2
		 * @param xN
		 * @param yN
		 * @param open
		 * @return 
		 */
		public function makeCurve(x1:int, y1:int, x2:int, y2:int, xN:int, yN:int, open:Boolean):Polygon {
			return null;
		}

		/**
		 * Draws a polygon to the instance's drawing space. The arguments are a little tricky. It returns a <code>Polygon</code> object.<br/>
		 * The method accepts any amount of paired x, y values as denoted by the series above. It then checks to see if there is a final 
		 * argument, a boolean open, which marks whether or not the shape should be open. If true the polygon will have two clear endpoints, 
		 * otherwise it will be closed.<br/>
		 * This method also recognizes the format <code>makePolygon(points, open)</code> where points is an array of <code>TwoVector</code>'s and open is an 
		 * optional boolean describing whether or not to expose endpoints. It is imperative if you generate curves this way to make the 
		 * list of points <code>TwoVector</code>'s.<br/>
 		 * NB:The <code>Polygon</code> that this method creates is the base shape for all of the make functions.
		 * @param x1
		 * @param y1
		 * @param x2
		 * @param y2
		 * @param xN
		 * @param yN
		 * @param open
		 * @return 
		 * 
		 */
		public function makePolygon(x1:int, y1:int, x2:int, y2:int, xN:int, yN:int, open:Boolean):Polygon {
			return null;
		}
		
		/**
		 * Adds a group to the instance's drawing space. While a group does not have any visible features when rendered it allows 
		 * for nested transformations on shapes. See <code>Group</code> for more information. It accepts an array of objects, <code>Polygon</code>s 
		 * or <code>Group</code>s. As well as a list of objects as the arguments, <code>makeGroup(o1, o2, oN)</code>. 
		 * It returns a <code>Group</code> object.
		 * @param objects
		 * @return 
		 * 
		 */
		public function makeGroup(...objects):Group {
			return null;
		}
		
		/**
		 * Reads an svg node and draws the svg object by creating Two.Polygons and Two.Groups from the reference. It then adds 
		 * it to the instance's drawing space. It returns an <code>Group</code> object.<br/>
 		 * NB: At the time of writing, <code>interpret()</code> accepts compound paths, but often has unexpected results. Therefore it is recommended 
		 * to break apart and Release Compound Paths as much as possible.
		 * @param svgNode
		 * @return 
		 * 
		 */
		public function interpret(svgNode:Element):Group {
			return null;
		}
		
		/**
		 * Bind an event, string, to a callback function. Passing "all" will bind the callback to all events. Inherited from Backbone.js.
		 * @param event
		 * @param callback
		 * 
		 */
		public function bind(event:String, callback:Function):void {
		}

		/**
		 * Remove one or many callback functions. If callback is null it removes all callbacks for an event. If the event name is null, all callback functions 
		 * for the instance are removed. This is highly discouraged. Inherited from Backbone.js.
		 * @param event
		 * @param callback
		 */
		public function unbind(event:String, callback:Function):void {
		}
		
		/**
		 * A two.js specific custom error handler. Takes a message, string, to display in the console to developers.
		 * @param message
		 */
		public static function Error(message:String):void {
		}
		
		/**
		 * Run two.js in noConflict mode, returning the two variable to its previous owner. Returns a reference to the Two class.
		 * @return 
		 */
		public static function noConflict():Two {
			return null;
		}

		/**
		 * A number representing how many subdivisions should be present during curve calculations.
		 */
		public static var Resolution:int = 8;
	
		/**
		 * A running list of all instances created on the page. 
		 */
		public static var Instances:Vector.<Two>;
	}
}