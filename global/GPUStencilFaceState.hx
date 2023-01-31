package global;

typedef GPUStencilFaceState = {
	/**
		The {@link GPUCompareFunction} used when testing fragments against
		{@link GPURenderPassDescriptor#depthStencilAttachment} stencil values.
	**/
	@:optional
	var compare : GPUCompareFunction;
	/**
		The {@link GPUStencilOperation} performed if the fragment stencil comparison test described by
		{@link GPUStencilFaceState#compare} fails.
	**/
	@:optional
	var failOp : GPUStencilOperation;
	/**
		The {@link GPUStencilOperation} performed if the fragment depth comparison described by
		{@link GPUDepthStencilState#depthCompare} fails.
	**/
	@:optional
	var depthFailOp : GPUStencilOperation;
	/**
		The {@link GPUStencilOperation} performed if the fragment stencil comparison test described by
		{@link GPUStencilFaceState#compare} passes.
	**/
	@:optional
	var passOp : GPUStencilOperation;
};