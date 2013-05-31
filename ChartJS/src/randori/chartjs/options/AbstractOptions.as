package randori.chartjs.options {
import randori.chartjs.easing.Easing;

[JavaScript(export="false", name="Object", type="json")]
public class AbstractOptions {
    //Boolean - If we show the scale above the chart data
    public var scaleOverlay:Boolean = false;

    //Boolean - If we want to override with a hard coded scale
    public var scaleOverride:Boolean = false;

    //** Required if scaleOverride is true **
    //Number - The number of steps in a hard coded scale
    public var scaleSteps:int;

    //Number - The value jump in the hard coded scale
    public var scaleStepWidth:Object = null;

    //Number - The scale starting value
    public var scaleStartValue:Object = null;

    //String - Colour of the scale line
    public var scaleLineColor:String = "rgba(0,0,0,.1)";

    //Number - Pixel width of the scale line
    public var scaleLineWidth:int = 1;

    //Boolean - Whether to animate the chart
    public var animation:Boolean = true;

    //Number - Number of animation steps
    public var animationSteps:int = 60;

    //String - Animation easing effect
    public var animationEasing:String = Easing.EASE_OUT_QUART;

    //Function - Fires when the animation is complete
    public var onAnimationComplete:Function = null;
}
}