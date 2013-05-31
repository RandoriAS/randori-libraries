package randori.chartjs.options {
[JavaScript(export="false", name="Object", type="json")]
public class RadarOptions extends AbstractOptions{

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

    //Boolean - Show a backdrop to the scale label
    public var scaleShowLabelBackdrop:Boolean = true;

    //String - The colour of the label backdrop	
    public var scaleBackdropColor:String = "rgba(255,255,255,0.75)";

    //Number - The backdrop padding above & below the label in pixels
    public var scaleBackdropPaddingY:int = 2;

    //Number - The backdrop padding to the side of the label in pixels	
    public var scaleBackdropPaddingX :int =2;

    //Boolean - Whether we show the angle lines out of the radar
    public var angleShowLineOut:Boolean = true;

    //String - Colour of the angle line
    public var angleLineColor:String = "rgba(0,0,0,.1)";

    //Number - Pixel width of the angle line
    public var angleLineWidth:int = 1;

    //String - Point label font declaration
    public var pointLabelFontFamily:String = "'Arial'";

    //String - Point label font weight
    public var pointLabelFontStyle:String = "normal";

    //Number - Point label font size in pixels	
    public var pointLabelFontSize:int = 12;

    //String - Point label font colour	
    public var pointLabelFontColor:String = "#666";

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