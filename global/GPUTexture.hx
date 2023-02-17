package global;

@:native("GPUTexture") extern class GPUTexture {
	function new();
	/**
		Creates a {@link GPUTextureView}.
	**/
	function createView(?descriptor:GPUTextureViewDescriptor):GPUTextureView;
	/**
		Destroys the {@link GPUTexture}.
	**/
	function destroy():Void;
	/**
		The width of this {@link GPUTexture}.
	**/
	final width : Int;
	/**
		The height of this {@link GPUTexture}.
	**/
	final height : Int;
	/**
		The depth or layer count of this {@link GPUTexture}.
	**/
	final depthOrArrayLayers : Int;
	/**
		The number of mip levels of this {@link GPUTexture}.
	**/
	final mipLevelCount : Int;
	/**
		The number of sample count of this {@link GPUTexture}.
	**/
	final sampleCount : Int;
	/**
		The dimension of the set of texel for each of this {@link GPUTexture}'s subresources.
	**/
	final dimension : GPUTextureDimension;
	/**
		The format of this {@link GPUTexture}.
	**/
	final format : GPUTextureFormat;
	/**
		The allowed usages for this {@link GPUTexture}.
	**/
	final usage : Int;
	var label : String;
}
