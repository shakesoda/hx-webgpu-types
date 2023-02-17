package global;

typedef GPUVertexBufferLayout = {
	/**
		The stride, in bytes, between elements of this array.
	**/
	var arrayStride : Int;
	/**
		Whether each element of this array represents per-vertex data or per-instance data
	**/
	@:optional
	var stepMode : GPUVertexStepMode;
	/**
		An array defining the layout of the vertex attributes within each element.
	**/
	var attributes : Array<GPUVertexAttribute>;
}
