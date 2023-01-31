package global;

typedef GPURenderPassLayout = {
	var colorFormats : Iterable<Null<GPUTextureFormat>>;
	@:optional
	var depthStencilFormat : GPUTextureFormat;
	@:optional
	var sampleCount : Float;
	/**
		The initial value of {@link GPUObjectBase#label|GPUObjectBase.label}.
	**/
	@:optional
	var label : String;
};