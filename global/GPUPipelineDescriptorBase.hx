package global;

typedef GPUPipelineDescriptorBase = {
	var layout : ts.AnyOf2<String, GPUPipelineLayout>;
	/**
		The initial value of {@link GPUObjectBase#label|GPUObjectBase.label}.
	**/
	@:optional
	var label : String;
}