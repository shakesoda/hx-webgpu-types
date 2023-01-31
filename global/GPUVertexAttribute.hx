package global;

typedef GPUVertexAttribute = {
	/**
		The {@link GPUVertexFormat} of the attribute.
	**/
	var format : GPUVertexFormat;
	/**
		The offset, in bytes, from the beginning of the element to the data for the attribute.
	**/
	var offset : Float;
	/**
		The numeric location associated with this attribute, which will correspond with a
		<a href="https://gpuweb.github.io/gpuweb/wgsl/#input-output-locations">"@location" attribute</a>
		declared in the {@link GPURenderPipelineDescriptor#vertex}.{@link GPUProgrammableStage#module|module}.
	**/
	var shaderLocation : Float;
};