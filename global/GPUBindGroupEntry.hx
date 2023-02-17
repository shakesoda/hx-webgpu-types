package global;

typedef GPUBindGroupEntry = {
	/**
		A unique identifier for a resource binding within the {@link GPUBindGroup}, corresponding to a
		{@link GPUBindGroupLayoutEntry#binding|GPUBindGroupLayoutEntry.binding} and a @binding
		attribute in the {@link GPUShaderModule}.
	**/
	var binding : Int;
	/**
		The resource to bind, which may be a {@link GPUSampler}, {@link GPUTextureView},
		{@link GPUExternalTexture}, or {@link GPUBufferBinding}.
	**/
	var resource : GPUBindingResource;
}
