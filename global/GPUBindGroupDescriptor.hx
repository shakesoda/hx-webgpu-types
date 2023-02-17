package global;

typedef GPUBindGroupDescriptor = {
	/**
		The {@link GPUBindGroupLayout} the entries of this bind group will conform to.
	**/
	var layout : GPUBindGroupLayout;
	/**
		A list of entries describing the resources to expose to the shader for each binding
		described by the {@link GPUBindGroupDescriptor#layout}.
	**/
	var entries : Iterable<GPUBindGroupEntry>;
	/**
		The initial value of {@link GPUObjectBase#label|GPUObjectBase.label}.
	**/
	@:optional
	var label : String;
}
