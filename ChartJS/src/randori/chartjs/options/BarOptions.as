package randori.chartjs.options {
[JavaScript(export="false", name="Object", type="json")]
public class BarOptions extends AbstractOptions{

    //Boolean - Whether to show labels on the scale	
    public var scaleShowLabels:Boolean = false;

    //Interpolated JS string - can access value
    public var scaleLabel:String = "<%=value%>";

    //String - Scale label font declaration for the scale label
    public var scaleFontFamily:String = "'Arial'";

    //Number - Scale label font size in pixels	
    public var scaleFontSize:int = 12;

    //String - Scale label font weight style	
    public var scaleFontStyle:String = "normal";

    //String - Scale label font colour	
    public var scaleFontColor:String = "#666";

    ///Boolean - Whether grid lines are shown across the chart
    public var scaleShowGridLines:Boolean = true;

    //String - Colour of the grid lines
    public var scaleGridLineColor:String = "rgba(0,0,0,.05)";

    //Number - Width of the grid lines
    public var scaleGridLineWidth:int = 1;

    //Boolean - If there is a stroke on each bar
    public var barShowStroke:Boolean = true;

    //Number - Pixel width of the bar stroke	
    public var barStrokeWidth:int = 2;

    //Number - Spacing between each of the X value sets
    public var barValueSpacing:int = 5;

    //Number - Spacing between data sets within X values
    public var barDatasetSpacing:int = 1;

}
}