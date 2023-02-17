package global;

typedef GPUImageCopyTexture = {
	/**
		Texture to copy to/from.
	**/
	var texture : GPUTexture;
	/**
		Mip-map level of the {@link GPUImageCopyTexture#texture} to copy to/from.
	**/
	@:optional
	var mipLevel : Int;
	/**
		Defines the origin of the copy - the minimum corner of the texture sub-region to copy to/from.
		Together with `copySize`, defines the full copy sub-region.
	**/
	@:optional
	var origin : GPUOrigin3D;
	/**
		Defines which aspects of the {@link GPUImageCopyTexture#texture} to copy to/from.
	**/
	@:optional
	var aspect : GPUTextureAspect;
}