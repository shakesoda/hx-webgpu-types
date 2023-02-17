package global;

typedef GPUSamplerDescriptor = {
	@:optional
	var addressModeU : GPUAddressMode;
	@:optional
	var addressModeV : GPUAddressMode;
	/**
		Specifies the {{GPUAddressMode|address modes}} for the texture width, height, and depth
		coordinates, respectively.
	**/
	@:optional
	var addressModeW : GPUAddressMode;
	/**
		Specifies the sampling behavior when the sample footprint is smaller than or equal to one
		texel.
	**/
	@:optional
	var magFilter : GPUFilterMode;
	/**
		Specifies the sampling behavior when the sample footprint is larger than one texel.
	**/
	@:optional
	var minFilter : GPUFilterMode;
	/**
		Specifies behavior for sampling between mipmap levels.
	**/
	@:optional
	var mipmapFilter : GPUFilterMode;
	@:optional
	var lodMinClamp : Float;
	/**
		Specifies the minimum and maximum levels of detail, respectively, used internally when
		sampling a texture.
	**/
	@:optional
	var lodMaxClamp : Float;
	/**
		When provided the sampler will be a comparison sampler with the specified
		{@link GPUCompareFunction}.
		Note: Comparison samplers may use filtering, but the sampling results will be
		implementation-dependent and may differ from the normal filtering rules.
	**/
	@:optional
	var compare : GPUCompareFunction;
	/**
		Specifies the maximum anisotropy value clamp used by the sampler.
		Note: Most implementations support {@link GPUSamplerDescriptor#maxAnisotropy} values in range
		between 1 and 16, inclusive. The used value of {@link GPUSamplerDescriptor#maxAnisotropy} will
		be clamped to the maximum value that the platform supports.
	**/
	@:optional
	var maxAnisotropy : Int;
	/**
		The initial value of {@link GPUObjectBase#label|GPUObjectBase.label}.
	**/
	@:optional
	var label : String;
}
