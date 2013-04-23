package com.mrdoob.three
{

    import com.mrdoob.three.math.*;
    import randori.webkit.html.*;

    [JavaScript(export="false")]
    public class Three
    {

        public static const CullFaceNone:int = 0;
        public static const CullFaceBack:int = 1;
        public static const CullFaceFront:int = 2;
        public static const CullFaceFrontBack:int = 3;

        public static const FrontFaceDirectionCW:int = 0;
        public static const FrontFaceDirectionCCW:int = 1;

        public static const BasicShadowMap:int = 0;
        public static const PCFShadowMap:int = 1;
        public static const PCFSoftShadowMap:int = 2;

        public static const FrontSide:int = 0;
        public static const BackSide:int = 1;
        public static const DoubleSide:int = 2;

        public static const NoShading:int = 0;
        public static const FlatShading:int = 1;
        public static const SmoothShading:int = 2;

        public static const NoColors:int = 0;
        public static const FaceColors:int = 1;
        public static const VertexColors:int = 2;

        public static const NoBlending:int = 0;
        public static const NormalBlending:int = 1;
        public static const AdditiveBlending:int = 2;
        public static const SubtractiveBlending:int = 3;
        public static const MultiplyBlending:int = 4;
        public static const CustomBlending:int = 5;

        public static const AddEquation:int = 100;
        public static const SubtractEquation:int = 101;
        public static const ReverseSubtractEquation:int = 102;

        public static const ZeroFactor:int = 200;
        public static const OneFactor:int = 201;
        public static const SrcColorFactor:int = 202;
        public static const OneMinusSrcColorFactor:int = 203;
        public static const SrcAlphaFactor:int = 204;
        public static const OneMinusSrcAlphaFactor:int = 205;
        public static const DstAlphaFactor:int = 206;
        public static const OneMinusDstAlphaFactor:int = 207;

        public static const DstColorFactor:int = 208;
        public static const OneMinusDstColorFactor:int = 209;
        public static const SrcAlphaSaturateFactor:int = 210;

        public static const MultiplyOperation:int = 0;
        public static const MixOperation:int = 1;
        public static const AddOperation:int = 2;

        public static const RepeatWrapping:int = 1000;
        public static const ClampToEdgeWrapping:int = 1001;
        public static const MirroredRepeatWrapping:int = 1002;

        public static const NearestFilter:int = 1003;
        public static const NearestMipMapNearestFilter:int = 1004;
        public static const NearestMipMapLinearFilter:int = 1005;
        public static const LinearFilter:int = 1006;
        public static const LinearMipMapNearestFilter:int = 1007;
        public static const LinearMipMapLinearFilter:int = 1008;

        public static const UnsignedByteType:int = 1009;
        public static const ByteType:int = 1010;
        public static const ShortType:int = 1011;
        public static const UnsignedShortType:int = 1012;
        public static const intType:int = 1013;
        public static const UnsignedintType:int = 1014;
        public static const NumberType:int = 1015;

        //public static const UnsignedByteType:int = 1009;
        public static const UnsignedShort4444Type:int = 1016;
        public static const UnsignedShort5551Type:int = 1017;
        public static const UnsignedShort565Type:int = 1018;

        public static const AlphaFormat:int = 1019;
        public static const RGBFormat:int = 1020;
        public static const RGBAFormat:int = 1021;
        public static const LuminanceFormat:int = 1022;
        public static const LuminanceAlphaFormat:int = 1023;

        public static const RGB_S3TC_DXT1_Format:int = 2001;
        public static const RGBA_S3TC_DXT1_Format:int = 2002;
        public static const RGBA_S3TC_DXT3_Format:int = 2003;
        public static const RGBA_S3TC_DXT5_Format:int = 2004;

        public static const SpriteAlignmentTopLeft:Vector2 = new Vector2(1, -1);
        public static const SpriteAlignmentTopCenter:Vector2 = new Vector2(0, -1);
        public static const SpriteAlignmentTopRight:Vector2 = new Vector2(-1, -1);
        public static const SpriteAlignmentCenterLeft:Vector2 = new Vector2(1, 0);
        public static const SpriteAlignmentCenter:Vector2 = new Vector2(0, 0);
        public static const SpriteAlignmentCenterRight:Vector2 = new Vector2(-1, 0);
        public static const SpriteAlignmentBottomLeft:Vector2 = new Vector2(1, 1);
        public static const SpriteAlignmentBottomCenter:Vector2 = new Vector2(0, 1);
        public static const SpriteAlignmentBottomRight:Vector2 = new Vector2(-1, 1);

        public static const LineStrip:int = 0;
        public static const LinePieces:int = 1;
        
    
    }

}
