package global;

typedef IGPURenderPipeline = {
	var label: String;
	/**
		Gets a {@link GPUBindGroupLayout} that is compatible with the {@link GPUPipelineBase}'s
		{@link GPUBindGroupLayout} at `index`.
	**/
	function getBindGroupLayout(index: Float): GPUBindGroupLayout;
};
