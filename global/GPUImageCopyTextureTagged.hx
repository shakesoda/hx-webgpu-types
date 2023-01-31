package global;

typedef GPUImageCopyTextureTagged = {
	/**
		Describes whether the data written into the texture should have its RGB channels
		premultiplied by the alpha channel, or not.
		If this option is set to `true` and the {@link GPUImageCopyExternalImage#source} is also
		premultiplied, the source RGB values must be preserved even if they exceed their
		corresponding alpha values.
		Note:
		If {@link GPUImageCopyTextureTagged#premultipliedAlpha} matches the source image,
		conversion may not be necessary. See [[#color-space-conversion-elision]].
	**/
	@:optional
	var premultipliedAlpha : Bool;
	/**
		Texture to copy to/from.
	**/
	var texture : GPUTexture;
	/**
		Mip-map level of the {@link GPUImageCopyTexture#texture} to copy to/from.
	**/
	@:optional
	var mipLevel : Float;
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
};