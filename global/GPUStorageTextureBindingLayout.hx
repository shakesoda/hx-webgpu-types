package global;

typedef GPUStorageTextureBindingLayout = {
	/**
		Indicates whether texture views bound to this binding will be bound for read-only or
		write-only access.
	**/
	@:optional
	var access : String;
	/**
		The required {@link GPUTextureViewDescriptor#format} of texture views bound to this binding.
	**/
	var format : GPUTextureFormat;
	/**
		Indicates the required {@link GPUTextureViewDescriptor#dimension} for texture views bound to
		this binding.
	**/
	@:optional
	var viewDimension : GPUTextureViewDimension;
};