package global;

typedef GPUFragmentState = {
	var targets : Iterable<Null<GPUColorTargetState>>;
	var module : GPUShaderModule;
	var entryPoint : String;
	@:optional
	var constants : haxe.DynamicAccess<Float>;
};