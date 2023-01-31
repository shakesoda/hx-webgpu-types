package global;

@:native("GPUShaderModule") extern class GPUShaderModule {
	function new();
	/**
		Nominal type branding.
		https://github.com/microsoft/TypeScript/pull/33038
	**/
	final __brand : String;
	/**
		Returns any messages generated during the {@link GPUShaderModule}'s compilation.
		The locations, order, and contents of messages are implementation-defined.
		In particular, messages may not be ordered by {@link GPUCompilationMessage#lineNum}.
	**/
	function compilationInfo():js.lib.Promise<GPUCompilationInfo>;
	var label : String;
	static var prototype : GPUShaderModule;
}