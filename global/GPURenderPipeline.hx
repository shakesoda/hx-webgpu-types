package global;

@:native("GPURenderPipeline") extern class GPURenderPipeline {
	var label: String;
	/**
		Gets a {@link GPUBindGroupLayout} that is compatible with the {@link GPUPipelineBase}'s
		{@link GPUBindGroupLayout} at `index`.
	**/
	function getBindGroupLayout(index: Int): GPUBindGroupLayout;
}
