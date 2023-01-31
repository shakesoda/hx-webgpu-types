package global;

typedef GPUProgrammableStage = {
	var module : GPUShaderModule;
	var entryPoint : String;
	@:optional
	var constants : haxe.DynamicAccess<Float>;
};