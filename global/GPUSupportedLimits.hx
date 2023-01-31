package global;

@:native("GPUSupportedLimits") extern class GPUSupportedLimits {
	final maxTextureDimension1D: Int;
	final maxTextureDimension2D: Int;
	final maxTextureDimension3D: Int;
	final maxTextureArrayLayers: Int;
	final maxBindGroups: Int;
	final maxBindingsPerBindGroup: Int;
	final maxDynamicUniformBuffersPerPipelineLayout: Int;
	final maxDynamicStorageBuffersPerPipelineLayout: Int;
	final maxSampledTexturesPerShaderStage: Int;
	final maxSamplersPerShaderStage: Int;
	final maxStorageBuffersPerShaderStage: Int;
	final maxStorageTexturesPerShaderStage: Int;
	final maxUniformBuffersPerShaderStage: Int;
	final maxUniformBufferBindingSize: Int;
	final maxStorageBufferBindingSize: Int;
	final minUniformBufferOffsetAlignment: Int;
	final minStorageBufferOffsetAlignment: Int;
	final maxVertexBuffers: Int;
	final maxBufferSize: Int;
	final maxVertexAttributes: Int;
	final maxVertexBufferArrayStride: Int;
	final maxInterStageShaderComponents: Int;
	final maxInterStageShaderVariables: Int;
	final maxColorAttachments: Int;
	final maxColorAttachmentBytesPerPixel: Int;
	final maxComputeWorkgroupStorageSize: Int;
	final maxComputeInvocationsPerWorkgroup: Int;
	final maxComputeWorkgroupSizeX: Int;
	final maxComputeWorkgroupSizeY: Int;
	final maxComputeWorkgroupSizeZ: Int;
	final maxComputeWorkgroupsPerDimension: Int;
}
