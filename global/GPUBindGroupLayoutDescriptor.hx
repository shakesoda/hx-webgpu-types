package global;

typedef GPUBindGroupLayoutDescriptor = {
	var entries : Iterable<GPUBindGroupLayoutEntry>;
	/**
		The initial value of {@link GPUObjectBase#label|GPUObjectBase.label}.
	**/
	@:optional
	var label : String;
};