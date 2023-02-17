package global;

typedef GPUFragmentState = {
	var targets : Array<Null<GPUColorTargetState>>;
	var module : GPUShaderModule;
	var entryPoint : String;
	@:optional
	var constants : haxe.DynamicAccess<Float>;
}
