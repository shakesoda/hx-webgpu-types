package global;

typedef GPUBlendComponent = {
	/**
		Defines the {@link GPUBlendOperation} used to calculate the values written to the target
		attachment components.
	**/
	@:optional
	var operation : GPUBlendOperation;
	/**
		Defines the {@link GPUBlendFactor} operation to be performed on values from the fragment shader.
	**/
	@:optional
	var srcFactor : GPUBlendFactor;
	/**
		Defines the {@link GPUBlendFactor} operation to be performed on values from the target attachment.
	**/
	@:optional
	var dstFactor : GPUBlendFactor;
};