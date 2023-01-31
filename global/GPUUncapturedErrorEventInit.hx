package global;

typedef GPUUncapturedErrorEventInit = {
	var error : GPUError;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};