package global;

typedef GPUComputePipelineDescriptor = {
	/**
		Describes the compute shader entry point of the pipeline.
	**/
	var compute : GPUProgrammableStage;
	var layout : ts.AnyOf2<String, GPUPipelineLayout>;
	/**
		The initial value of {@link GPUObjectBase#label|GPUObjectBase.label}.
	**/
	@:optional
	var label : String;
};