package global;

@:native("GPUShaderModule") extern class GPUShaderModule {
	function new();
	/**
		Returns any messages generated during the {@link GPUShaderModule}'s compilation.
		The locations, order, and contents of messages are implementation-defined.
		In particular, messages may not be ordered by {@link GPUCompilationMessage#lineNum}.
	**/
	function compilationInfo():js.lib.Promise<GPUCompilationInfo>;
	var label : String;
	static var prototype : GPUShaderModule;
}