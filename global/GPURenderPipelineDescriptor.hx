package global;

typedef GPURenderPipelineDescriptor = {
	/**
		Describes the vertex shader entry point of the pipeline and its input buffer layouts.
	**/
	var vertex : GPUVertexState;
	/**
		Describes the primitive-related properties of the pipeline.
	**/
	@:optional
	var primitive : GPUPrimitiveState;
	/**
		Describes the optional depth-stencil properties, including the testing, operations, and bias.
	**/
	@:optional
	var depthStencil : GPUDepthStencilState;
	/**
		Describes the multi-sampling properties of the pipeline.
	**/
	@:optional
	var multisample : GPUMultisampleState;
	/**
		Describes the fragment shader entry point of the pipeline and its output colors. If
		`undefined`, the [[#no-color-output]] mode is enabled.
	**/
	@:optional
	var fragment : GPUFragmentState;
	var layout : ts.AnyOf2<String, GPUPipelineLayout>;
	/**
		The initial value of {@link GPUObjectBase#label|GPUObjectBase.label}.
	**/
	@:optional
	var label : String;
};