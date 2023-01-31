package global;

@:native("GPURenderPipeline") extern class GPURenderPipeline {
	function new();
	/**
		Nominal type branding.
		https://github.com/microsoft/TypeScript/pull/33038
	**/
	final __brand : String;
	var label : String;
	/**
		Gets a {@link GPUBindGroupLayout} that is compatible with the {@link GPUPipelineBase}'s
		{@link GPUBindGroupLayout} at `index`.
	**/
	function getBindGroupLayout(index:Float):GPUBindGroupLayout;
	static var prototype : GPURenderPipeline;
}