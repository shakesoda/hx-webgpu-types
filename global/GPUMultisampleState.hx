package global;

typedef GPUMultisampleState = {
	/**
		Number of samples per pixel. This {@link GPURenderPipeline} will be compatible only
		with attachment textures ({@link GPURenderPassDescriptor#colorAttachments}
		and {@link GPURenderPassDescriptor#depthStencilAttachment})
		with matching {@link GPUTextureDescriptor#sampleCount}s.
	**/
	@:optional
	var count : Int;
	/**
		Mask determining which samples are written to.
	**/
	@:optional
	var mask : Int;
	/**
		When `true` indicates that a fragment's alpha channel should be used to generate a sample
		coverage mask.
	**/
	@:optional
	var alphaToCoverageEnabled : Bool;
};
