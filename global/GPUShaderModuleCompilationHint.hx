package global;

typedef GPUShaderModuleCompilationHint = {
	/**
		A {@link GPUPipelineLayout} that the {@link GPUShaderModule} may be used with in a future
		{@link GPUDevice#createComputePipeline()} or {@link GPUDevice#createRenderPipeline} call.
		If set to {@link GPUAutoLayoutMode#"auto"} the layout will be the [$default pipeline layout$]
		for the entry point associated with this hint will be used.
	**/
	@:optional
	var layout : ts.AnyOf2<String, GPUPipelineLayout>;
};