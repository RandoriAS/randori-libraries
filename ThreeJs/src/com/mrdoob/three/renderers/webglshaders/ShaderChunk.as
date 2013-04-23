package com.mrdoob.three.renderers.webglshaders
{


[JavaScript(export="false", name="THREE.ShaderChunk")]
public class ShaderChunk
{
    // FOG
    public static var fog_pars_fragment:String;
    public static var fog_fragment:String;
    
    // ENVIRONMENT MAP
    public static var envmap_pars_fragment:String;
    public static var envmap_fragment:String;
    public static var envmap_pars_vertex:String;
    public static var worldpos_vertex:String;
    public static var envmap_vertex:String;
    
    // COLOR MAP (particles)
    public static var map_particle_pars_fragment:String;
    public static var map_particle_fragment:String;
    
    // COLOR MAP (triangles)
    public static var map_pars_vertex:String;
    public static var map_pars_fragment:String;
    public static var map_vertex:String;
    public static var map_fragment:String;
    
    // LIGHT MAP
    public static var lightmap_pars_fragment:String;
    public static var lightmap_pars_vertex:String;
	public static var lightmap_fragment:String;
	public static var lightmap_vertex:String;
	
	// BUMPMAP
    public static var bumpmap_pars_fragment:String;
    
    // NORMAL MAP
    public static var normalmap_pars_fragment:String;
    
    // SPECULAR MAP
	public static var specularmap_pars_fragment:String;
	public static var specularmap_fragment:String;	
	
	// LIGHTS LAMBERT
	public static var lights_lambert_pars_vertex:String;
	public static var lights_lambert_vertex:String;
	
	// LIGHTS PHONG
	public static var lights_phong_pars_vertex:String;
	public static var lights_phong_vertex:String;
	public static var lights_phong_pars_fragment:String;
	public static var lights_phong_fragment:String;
	
	// VERTEX COLORS
	public static var color_pars_fragment:String;
    public static var color_fragment:String;
	public static var color_pars_vertex:String;
	public static var color_vertex:String;
	
	// SKINNING
    public static var skinning_pars_vertex:String;
    public static var skinbase_vertex:String;
	public static var skinning_vertex:String;
	
	// MORPHING
	public static var morphtarget_pars_vertex:String;
	public static var morphtarget_vertex:String;
	public static var default_vertex:String;
	public static var morphnormal_vertex:String;
	public static var skinnormal_vertex:String;
	public static var defaultnormal_vertex:String;
	
	// SHADOW MAP
    public static var shadowmap_pars_fragment:String;
	public static var shadowmap_fragment:String;
    public static var shadowmap_pars_vertex:String;
	public static var shadowmap_vertex:String;
	
	// ALPHATEST
	public static var alphatest_fragment:String;
	
	// LINEAR SPACE
    public static var linear_to_gamma_fragment:String;
}

}