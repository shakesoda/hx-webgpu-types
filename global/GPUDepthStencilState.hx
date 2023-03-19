package global;

typedef GPUDepthStencilState = {
	/**
		The {@link GPUTextureViewDescriptor#format} of {@link GPURenderPassDescriptor#depthStencilAttachment}
		this {@link GPURenderPipeline} will be compatible with.
	**/
	var format : GPUTextureFormat;
	/**
		Indicates if this {@link GPURenderPipeline} can modify
		{@link GPURenderPassDescriptor#depthStencilAttachment} depth values.
	**/
	var depthWriteEnabled : Bool;
	/**
		The comparison operation used to test fragment depths against
		{@link GPURenderPassDescriptor#depthStencilAttachment} depth values.
	**/
	var depthCompare : GPUCompareFunction;
	/**
		Defines how stencil comparisons and operations are performed for front-facing primitives.
	**/
	@:optional
	var stencilFront : GPUStencilFaceState;
	/**
		Defines how stencil comparisons and operations are performed for back-facing primitives.
	**/
	@:optional
	var stencilBack : GPUStencilFaceState;
	/**
		Bitmask controlling which {@link GPURenderPassDescriptor#depthStencilAttachment} stencil value
		bits are read when performing stencil comparison tests.
	**/
	@:optional
	var stencilReadMask : Float;
	/**
		Bitmask controlling which {@link GPURenderPassDescriptor#depthStencilAttachment} stencil value
		bits are written to when performing stencil operations.
	**/
	@:optional
	var stencilWriteMask : Float;
	/**
		Constant depth bias added to each fragment. See [$biased fragment depth$] for details.
	**/
	@:optional
	var depthBias : Float;
	/**
		Depth bias that scales with the fragment’s slope. See [$biased fragment depth$] for details.
	**/
	@:optional
	var depthBiasSlopeScale : Float;
	/**
		The maximum depth bias of a fragment. See [$biased fragment depth$] for details.
	**/
	@:optional
	var depthBiasClamp : Float;
}
