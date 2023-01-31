package global;

@:native("GPUCommandBuffer") extern class GPUCommandBuffer {
	function new();
	var label : String;
	static var prototype : GPUCommandBuffer;
}