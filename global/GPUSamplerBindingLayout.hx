package global;

typedef GPUSamplerBindingLayout = {
	/**
		Indicates the required type of a sampler bound to this bindings.
	**/
	@:optional
	var type : GPUSamplerBindingType;
}