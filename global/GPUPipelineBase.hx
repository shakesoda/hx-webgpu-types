package global;

typedef GPUPipelineBase = {
	/**
		Gets a {@link GPUBindGroupLayout} that is compatible with the {@link GPUPipelineBase}'s
		{@link GPUBindGroupLayout} at `index`.
	**/
	function getBindGroupLayout(index: Int): GPUBindGroupLayout;
}
