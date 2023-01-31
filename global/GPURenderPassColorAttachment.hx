package global;

typedef GPURenderPassColorAttachment = {
	/**
		A {@link GPUTextureView} describing the texture subresource that will be output to for this
		color attachment.
	**/
	var view : GPUTextureView;
	/**
		A {@link GPUTextureView} describing the texture subresource that will receive the resolved
		output for this color attachment if {@link GPURenderPassColorAttachment#view} is
		multisampled.
	**/
	@:optional
	var resolveTarget : GPUTextureView;
	/**
		Indicates the value to clear {@link GPURenderPassColorAttachment#view} to prior to executing the
		render pass. If not map/exist|provided, defaults to `{r: 0, g: 0, b: 0, a: 0}`. Ignored
		if {@link GPURenderPassColorAttachment#loadOp} is not {@link GPULoadOp#"clear"}.
		The components of {@link GPURenderPassColorAttachment#clearValue} are all double values.
		They are converted [$to a texel value of texture format$] matching the render attachment.
		If conversion fails, a validation error is generated.
	**/
	@:optional
	var clearValue : GPUColor;
	/**
		Indicates the load operation to perform on {@link GPURenderPassColorAttachment#view} prior to
		executing the render pass.
		Note: It is recommended to prefer clearing; see {@link GPULoadOp#"clear"} for details.
	**/
	var loadOp : GPULoadOp;
	/**
		The store operation to perform on {@link GPURenderPassColorAttachment#view}
		after executing the render pass.
	**/
	var storeOp : GPUStoreOp;
};