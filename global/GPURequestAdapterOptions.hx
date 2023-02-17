package global;

typedef GPURequestAdapterOptions = {
	@:optional
	var powerPreference : GPUPowerPreference;
	@:optional
	var forceFallbackAdapter : Bool;
}