package global;

@:native("GPUTexture") extern class GPUTexture {
	function new();
	/**
		Nominal type branding.
		https://github.com/microsoft/TypeScript/pull/33038
	**/
	final __brand : String;
	/**
		Creates a {@link GPUTextureView}.
	**/
	function createView(?descriptor:GPUTextureViewDescriptor):GPUTextureView;
	/**
		Destroys the {@link GPUTexture}.
	**/
	function destroy():Null<Any>;
	/**
		The width of this {@link GPUTexture}.
	**/
	final width : Float;
	/**
		The height of this {@link GPUTexture}.
	**/
	final height : Float;
	/**
		The depth or layer count of this {@link GPUTexture}.
	**/
	final depthOrArrayLayers : Float;
	/**
		The number of mip levels of this {@link GPUTexture}.
	**/
	final mipLevelCount : Float;
	/**
		The number of sample count of this {@link GPUTexture}.
	**/
	final sampleCount : Float;
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
	final usage : Float;
	var label : String;
	static var prototype : GPUTexture;
}