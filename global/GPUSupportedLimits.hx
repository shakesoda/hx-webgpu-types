package global;

@:native("GPUSupportedLimits") extern class GPUSupportedLimits {
	/**
		Nominal type branding.
		https://github.com/microsoft/TypeScript/pull/33038
	**/
	final __brand : String;
	final maxTextureDimension1D : Float;
	final maxTextureDimension2D : Float;
	final maxTextureDimension3D : Float;
	final maxTextureArrayLayers : Float;
	final maxBindGroups : Float;
	final maxBindingsPerBindGroup : Float;
	final maxDynamicUniformBuffersPerPipelineLayout : Float;
	final maxDynamicStorageBuffersPerPipelineLayout : Float;
	final maxSampledTexturesPerShaderStage : Float;
	final maxSamplersPerShaderStage : Float;
	final maxStorageBuffersPerShaderStage : Float;
	final maxStorageTexturesPerShaderStage : Float;
	final maxUniformBuffersPerShaderStage : Float;
	final maxUniformBufferBindingSize : Float;
	final maxStorageBufferBindingSize : Float;
	final minUniformBufferOffsetAlignment : Float;
	final minStorageBufferOffsetAlignment : Float;
	final maxVertexBuffers : Float;
	final maxBufferSize : Float;
	final maxVertexAttributes : Float;
	final maxVertexBufferArrayStride : Float;
	final maxInterStageShaderComponents : Float;
	final maxInterStageShaderVariables : Float;
	final maxColorAttachments : Float;
	final maxColorAttachmentBytesPerPixel : Float;
	final maxComputeWorkgroupStorageSize : Float;
	final maxComputeInvocationsPerWorkgroup : Float;
	final maxComputeWorkgroupSizeX : Float;
	final maxComputeWorkgroupSizeY : Float;
	final maxComputeWorkgroupSizeZ : Float;
	final maxComputeWorkgroupsPerDimension : Float;
}