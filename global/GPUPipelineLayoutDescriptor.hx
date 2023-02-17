package global;

typedef GPUPipelineLayoutDescriptor = {
	/**
		A list of {@link GPUBindGroupLayout}s the pipline will use. Each element corresponds to a
	**/
	var bindGroupLayouts : Array<GPUBindGroupLayout>;
	/**
		The initial value of {@link GPUObjectBase#label|GPUObjectBase.label}.
	**/
	@:optional
	var label : String;
}
