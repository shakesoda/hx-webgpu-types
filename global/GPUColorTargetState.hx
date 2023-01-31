package global;

typedef GPUColorTargetState = {
	var format : GPUTextureFormat;
	@:optional
	var blend : GPUBlendState;
	@:optional
	var writeMask : Int;
};
