package global;

typedef GPURenderPassDepthStencilAttachment = {
	/**
		A {@link GPUTextureView} describing the texture subresource that will be output to
		and read from for this depth/stencil attachment.
	**/
	var view : GPUTextureView;
	/**
		Indicates the value to clear {@link GPURenderPassDepthStencilAttachment#view}'s depth component
		to prior to executing the render pass. Ignored if {@link GPURenderPassDepthStencilAttachment#depthLoadOp}
		is not {@link GPULoadOp#"clear"}. Must be between 0.0 and 1.0, inclusive.
		<!-- unless unrestricted depth is enabled -->
	**/
	@:optional
	var depthClearValue : Float;
	/**
		Indicates the load operation to perform on {@link GPURenderPassDepthStencilAttachment#view}'s
		depth component prior to executing the render pass.
		Note: It is recommended to prefer clearing; see {@link GPULoadOp#"clear"} for details.
	**/
	@:optional
	var depthLoadOp : GPULoadOp;
	/**
		The store operation to perform on {@link GPURenderPassDepthStencilAttachment#view}'s
		depth component after executing the render pass.
		Note: It is recommended to prefer a clear-value; see {@link GPULoadOp#"load"}.
	**/
	@:optional
	var depthStoreOp : GPUStoreOp;
	/**
		Indicates that the depth component of {@link GPURenderPassDepthStencilAttachment#view}
		is read only.
	**/
	@:optional
	var depthReadOnly : Bool;
	/**
		Indicates the value to clear {@link GPURenderPassDepthStencilAttachment#view}'s stencil component
		to prior to executing the render pass. Ignored if {@link GPURenderPassDepthStencilAttachment#stencilLoadOp}
		is not {@link GPULoadOp#"clear"}.
		The value will be converted to the type of the stencil aspect of `view` by taking the same
		number of LSBs as the number of bits in the stencil aspect of one texel block of `view`.
	**/
	@:optional
	var stencilClearValue : Float;
	/**
		Indicates the load operation to perform on {@link GPURenderPassDepthStencilAttachment#view}'s
		stencil component prior to executing the render pass.
		Note: It is recommended to prefer clearing; see {@link GPULoadOp#"clear"} for details.
	**/
	@:optional
	var stencilLoadOp : GPULoadOp;
	/**
		The store operation to perform on {@link GPURenderPassDepthStencilAttachment#view}'s
		stencil component after executing the render pass.
	**/
	@:optional
	var stencilStoreOp : GPUStoreOp;
	/**
		Indicates that the stencil component of {@link GPURenderPassDepthStencilAttachment#view}
		is read only.
	**/
	@:optional
	var stencilReadOnly : Bool;
};