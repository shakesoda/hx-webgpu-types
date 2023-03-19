package global;

typedef GPUBindGroupLayoutDescriptor = {
	var entries: Array<GPUBindGroupLayoutEntry>;
	/**
		The initial value of {@link GPUObjectBase#label|GPUObjectBase.label}.
	**/
	@:optional
	var label: String;
}
