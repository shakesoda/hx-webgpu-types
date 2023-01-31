package global;

typedef GPURenderPassLayout = {
	var colorFormats : Iterable<Null<GPUTextureFormat>>;
	@:optional
	var depthStencilFormat : GPUTextureFormat;
	@:optional
	var sampleCount : Int;
	/**
		The initial value of {@link GPUObjectBase#label|GPUObjectBase.label}.
	**/
	@:optional
	var label : String;
};
