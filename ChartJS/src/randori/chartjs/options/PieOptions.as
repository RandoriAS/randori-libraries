package randori.chartjs.options {

[JavaScript(export="false", name="Object", type="json")]
public class PieOptions extends AbstractOptions{
    //Boolean - Whether we should show a stroke on each segment
        private var segmentShowStroke:Boolean = true;

    //String - The colour of each segment stroke
        private var segmentStrokeColor:String = "#fff";

    //Number - The width of each segment stroke
        private var segmentStrokeWidth:int = 2;

    //Boolean - Whether we animate the rotation of the Pie
        private var animateRotate:Boolean = true;

    //Boolean - Whether we animate scaling the Pie from the centre
        private var animateScale:Boolean = false;

}
}