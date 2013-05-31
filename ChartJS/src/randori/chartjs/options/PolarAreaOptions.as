package randori.chartjs.options {

[JavaScript(export="false", name="Object", type="json")]
public class PolarAreaOptions extends AbstractOptions{

    //Boolean - whether we should show text labels
        public var scaleShowLabels:Boolean = true;

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
        public var scaleBackdropPaddingX:int = 2;

    //Boolean - Stroke a line around each segment in the chart
        public var segmentShowStroke:Boolean = true;

    //String - The colour of the stroke on each segement.
        public var segmentStrokeColor:String = "#fff";

    //Number - The width of the stroke value in pixels	
        public var segmentStrokeWidth:int = 2;

    //Boolean - Whether to animate the rotation of the chart
        public var animateRotate:Boolean = true;

    //Boolean - Whether to animate scaling the chart from the centre
        public var animateScale:Boolean = false;

}
}