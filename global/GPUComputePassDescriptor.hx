package global;

typedef GPUComputePassDescriptor = {
	/**
		A sequence of {@link GPUComputePassTimestampWrite} values define where and when timestamp values will be written for this pass.
	**/
	@:optional
	var timestampWrites : GPUComputePassTimestampWrites;
	/**
		The initial value of {@link GPUObjectBase#label|GPUObjectBase.label}.
	**/
	@:optional
	var label : String;
};