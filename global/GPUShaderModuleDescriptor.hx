package global;

typedef GPUShaderModuleDescriptor = {
	/**
		The <a href="https://gpuweb.github.io/gpuweb/wgsl/">WGSL</a> source code for the shader
		module.
	**/
	var code : String;
	/**
		If defined MAY be interpreted as a source-map-v3 format.
		Source maps are optional, but serve as a standardized way to support dev-tool
		integration such as source-language debugging [[SourceMap]].
		WGSL names (identifiers) in source maps follow the rules defined in WGSL identifier
		comparison.
	**/
	@:optional
	var sourceMap : Dynamic;
	/**
		If defined maps an entry point name from the shader to a {@link GPUShaderModuleCompilationHint}.
		No validation is performed with any of these {@link GPUShaderModuleCompilationHint}.
		Implementations should use any information present in the {@link GPUShaderModuleCompilationHint}
		to perform as much compilation as is possible within {@link GPUDevice#createShaderModule}.
		Entry point names follow the rules defined in WGSL identifier comparison.
		Note: Supplying information in {@link GPUShaderModuleDescriptor#hints} does not have any
		observable effect, other than performance. Because a single shader module can hold
		multiple entry points, and multiple pipelines can be created from a single shader
		module, it can be more performant for an implementation to do as much compilation as
		possible once in {@link GPUDevice#createShaderModule} rather than multiple times in
		the multiple calls to {@link GPUDevice#createComputePipeline} /
		{@link GPUDevice#createRenderPipeline}.
	**/
	@:optional
	var hints : haxe.DynamicAccess<GPUShaderModuleCompilationHint>;
	/**
		The initial value of {@link GPUObjectBase#label|GPUObjectBase.label}.
	**/
	@:optional
	var label : String;
}