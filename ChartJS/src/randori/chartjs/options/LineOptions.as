package randori.chartjs.options {
[JavaScript(export="false", name="Object", type="json")]
public class LineOptions extends AbstractOptions{

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

    //Boolean - Whether the line is curved between points
    public var bezierCurve:Boolean = true;

    //Boolean - Whether to show a dot for each point
    public var pointDot:Boolean = true;

    //Number - Radius of each point dot in pixels
    public var pointDotRadius:int = 3;

    //Number - Pixel width of point dot stroke
    public var pointDotStrokeWidth:int = 1;

    //Boolean - Whether to show a stroke for datasets
    public var datasetStroke:Boolean = true;

    //Number - Pixel width of dataset stroke
    public var datasetStrokeWidth:int = 2;

    //Boolean - Whether to fill the dataset with a colour
    public var datasetFill:Boolean = true;
}
}