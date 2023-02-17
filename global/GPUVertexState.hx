package global;

typedef GPUVertexState = {
	@:optional
	var buffers : Iterable<Null<GPUVertexBufferLayout>>;
	var module : GPUShaderModule;
	var entryPoint : String;
	@:optional
	var constants : haxe.DynamicAccess<Float>;
}