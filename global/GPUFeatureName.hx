package global;

enum abstract GPUFeatureName(String) {
	final DepthClipControl = "depth-clip-control";
	final Depth32FloatStencil8 = "depth32float-stencil8";
	final TextureCompressionBC = "texture-compression-bc";
	final TextureCompressionETC2 = "texture-compression-etc2";
	final TextureCompressionASTC = "texture-compression-astc";
	final TimestampQuery = "timestamp-query";
	final IndirectFirstInstance = "indirect-first-instance";
	final ShaderF16 = "shader-f16";
	final RG11B10UFloatRenderable = "rg11b10ufloat-renderable";
	final BGRA8UNormStorage = "bgra8unorm-storage";
}
