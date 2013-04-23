package com.mrdoob.three.textures
{
	[JavaScript(export="false", name="THREE.CompressedTexture")]
	public class CompressedTexture extends Texture
	{
		
		public function CompressedTexture(mipmaps:Array, width:Number, height:Number, format:int, type:int, mapping:IMapping, wrapS:int, wrapT:int, magFilter:int, minFilter:int, anisotropy:Number):void
        {
            super(image, mapping, wrapS, wrapT, magFilter, minFilter, format, type, anisotropy);
        }

        override public function clone():Texture { return null; }

	}
}

