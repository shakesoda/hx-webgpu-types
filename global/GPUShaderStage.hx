package global;

@:native("GPUShaderStage") extern class GPUShaderStage {
	/**
		Nominal type branding.
		https://github.com/microsoft/TypeScript/pull/33038
	**/
	static final __brand : String;
	static final VERTEX : Int;
	static final FRAGMENT : Int;
	static final COMPUTE : Int;
}