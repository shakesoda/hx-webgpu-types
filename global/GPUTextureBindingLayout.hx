package global;

typedef GPUTextureBindingLayout = {
	/**
		Indicates the type required for texture views bound to this binding.
	**/
	@:optional
	var sampleType : GPUTextureSampleType;
	/**
		Indicates the required {@link GPUTextureViewDescriptor#dimension} for texture views bound to
		this binding.
	**/
	@:optional
	var viewDimension : GPUTextureViewDimension;
	/**
		Indicates whether or not texture views bound to this binding must be multisampled.
	**/
	@:optional
	var multisampled : Bool;
};