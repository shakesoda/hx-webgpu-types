package global;

typedef GPUExtent3DDictStrict = {
	@:optional
	var depth : Any;
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var depthOrArrayLayers : Float;
};