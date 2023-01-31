package global;

typedef GPUTextureViewDescriptor = {
	/**
		The format of the texture view. Must be either the {@link GPUTextureDescriptor#format} of the
		texture or one of the {@link GPUTextureDescriptor#viewFormats} specified during its creation.
	**/
	@:optional
	var format : GPUTextureFormat;
	/**
		The dimension to view the texture as.
	**/
	@:optional
	var dimension : GPUTextureViewDimension;
	/**
		Which {@link GPUTextureAspect|aspect(s)} of the texture are accessible to the texture view.
	**/
	@:optional
	var aspect : GPUTextureAspect;
	/**
		The first (most detailed) mipmap level accessible to the texture view.
	**/
	@:optional
	var baseMipLevel : Float;
	/**
		How many mipmap levels, starting with {@link GPUTextureViewDescriptor#baseMipLevel}, are accessible to
		the texture view.
	**/
	@:optional
	var mipLevelCount : Float;
	/**
		The index of the first array layer accessible to the texture view.
	**/
	@:optional
	var baseArrayLayer : Float;
	/**
		How many array layers, starting with {@link GPUTextureViewDescriptor#baseArrayLayer}, are accessible
		to the texture view.
	**/
	@:optional
	var arrayLayerCount : Float;
	/**
		The initial value of {@link GPUObjectBase#label|GPUObjectBase.label}.
	**/
	@:optional
	var label : String;
};