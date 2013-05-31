package randori.chartjs.options {

[JavaScript(export="false", name="Object", type="json")]
public class DoughnutOptions extends AbstractOptions{
    //Boolean - Whether we should show a stroke on each segment
        private var segmentShowStroke:Boolean = true;

    //String - The colour of each segment stroke
        private var segmentStrokeColor:String = "#fff";

    //Number - The width of each segment stroke
        private var segmentStrokeWidth:int = 2;

    //The percentage of the chart that we cut out of the middle.
        private var percentageInnerCutout:int = 50;

    //Boolean - Whether we animate the rotation of the Doughnut
        private var animateRotate:Boolean = true;

    //Boolean - Whether we animate scaling the Doughnut from the centre
        private var animateScale:Boolean = false;

}
}