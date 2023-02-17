package global;

enum abstract GPUTextureFormat(String) {
	// 8-bit formats
	final R8UNorm = "r8unorm";
	final R8SNorm = "r8snorm";
	final R8UInt = "r8uint";
	final R8SInt = "r8sint";

	// 16-bit formats
	final R16UInt = "r16uint";
	final R16SInt = "r16sint";
	final R16Float = "r16float";
	final RG8UNorm = "rg8unorm";
	final RG8SNorm = "rg8snorm";
	final RG8UInt = "rg8uint";
	final RG8SInt = "rg8sint";

	// 32-bit formats
	final R32UInt = "r32uint";
	final R32SInt = "r32sint";
	final R32Float = "r32float";
	final RG16UInt = "rg16uint";
	final RG16SInt = "rg16sint";
	final RG16Float = "rg16float";
	final RGBA8UNorm = "rgba8unorm";
	final RGBA8UNorm_sRGB = "rgba8unorm-srgb";
	final RGBA8SNorm = "rgba8snorm";
	final RGBA8UInt = "rgba8uint";
	final RGBA8SInt = "rgba8sint";
	final BGRA8UNorm = "bgra8unorm";
	final BGRA8UNorm_sRGB = "bgra8unorm-srgb";
	// Packed 32-bit formats
	final RGB9E5UFloat = "rgb9e5ufloat";
	final RGB10A2UNorm = "rgb10a2unorm";
	final RG11B10UFloat = "rg11b10ufloat";

	// 64-bit formats
	final RG32UInt = "rg32uint";
	final RG32SInt = "rg32sint";
	final RG32Float = "rg32float";
	final RGBA16UInt = "rgba16uint";
	final RGBA16SInt = "rgba16sint";
	final RGBA16Float = "rgba16float";

	// 128-bit formats
	final RGBA32UInt = "rgba32uint";
	final RGBA32SInt = "rgba32sint";
	final RGBA32Float = "rgba32float";

	// Depth/stencil formats
	final Stencil8 = "stencil8";
	final Depth16UNorm = "depth16unorm";
	final Depth24Plus = "depth24plus";
	final Depth24PlusStencil8 = "depth24plus-stencil8";
	final Depth32Float = "depth32float";

	// "depth32float-stencil8" feature
	final Depth32FloatStencil8 = "depth32float-stencil8";

	// BC compressed formats usable if "texture-compression-bc" is both
	// supported by the device/user agent and enabled in requestDevice.
	final BC1RGBAUNorm = "bc1-rgba-unorm";
	final BC1RGBAUNorm_sRGB = "bc1-rgba-unorm-srgb";
	final BC2RGBAUNorm = "bc2-rgba-unorm";
	final BC2RGBAUNorm_sRGB = "bc2-rgba-unorm-srgb";
	final BC3RGBAUNorm = "bc3-rgba-unorm";
	final BC3RGBAUNorm_sRGB = "bc3-rgba-unorm-srgb";
	final BC4RUNorm = "bc4-r-unorm";
	final BC4RSNorm = "bc4-r-snorm";
	final BC5RGUNorm = "bc5-rg-unorm";
	final BC5RGSNorm = "bc5-rg-snorm";
	final BC6HRGBUFloat = "bc6h-rgb-ufloat";
	final BC6HRGBFloat = "bc6h-rgb-float";
	final BC7RGBAUNorm = "bc7-rgba-unorm";
	final BC7RGBAUNorm_sRGB = "bc7-rgba-unorm-srgb";

	// ETC2 compressed formats usable if "texture-compression-etc2" is both
	// supported by the device/user agent and enabled in requestDevice.
	final ETC2RGB8UNorm = "etc2-rgb8unorm";
	final ETC2RGB8UNorm_sRGB = "etc2-rgb8unorm-srgb";
	final ETC2RGB8A1UNorm = "etc2-rgb8a1unorm";
	final ETC2RGB8A1UNorm_sRGB = "etc2-rgb8a1unorm-srgb";
	final ETC2RGBA8UNorm = "etc2-rgba8unorm";
	final ETC2RGBA8UNorm_sRGB = "etc2-rgba8unorm-srgb";
	final EACR11UNorm = "eac-r11unorm";
	final EACR11SNorm = "eac-r11snorm";
	final EACRG11UNorm = "eac-rg11unorm";
	final EACRG11SNorm = "eac-rg11snorm";

	// ASTC compressed formats usable if "texture-compression-astc" is both
	// supported by the device/user agent and enabled in requestDevice.
	final ASTC4x4UNorm = "astc-4x4-unorm";
	final ASTC4x4UNorm_sRGB = "astc-4x4-unorm-srgb";
	final ASTC5x4UNorm = "astc-5x4-unorm";
	final ASTC5x4UNorm_sRGB = "astc-5x4-unorm-srgb";
	final ASTC5x5UNorm = "astc-5x5-unorm";
	final ASTC5x5UNorm_sRGB = "astc-5x5-unorm-srgb";
	final ASTC6x5UNorm = "astc-6x5-unorm";
	final ASTC6x5UNorm_sRGB = "astc-6x5-unorm-srgb";
	final ASTC6x6UNorm = "astc-6x6-unorm";
	final ASTC6x6UNorm_sRGB = "astc-6x6-unorm-srgb";
	final ASTC8x5UNorm = "astc-8x5-unorm";
	final ASTC8x5UNorm_sRGB = "astc-8x5-unorm-srgb";
	final ASTC8x6UNorm = "astc-8x6-unorm";
	final ASTC8x6UNorm_sRGB = "astc-8x6-unorm-srgb";
	final ASTC8x8UNorm = "astc-8x8-unorm";
	final ASTC8x8UNorm_sRGB = "astc-8x8-unorm-srgb";
	final ASTC10x5UNorm = "astc-10x5-unorm";
	final ASTC10x5UNorm_sRGB = "astc-10x5-unorm-srgb";
	final ASTC10x6UNorm = "astc-10x6-unorm";
	final ASTC10x6UNorm_sRGB = "astc-10x6-unorm-srgb";
	final ASTC10x8UNorm = "astc-10x8-unorm";
	final ASTC10x8UNorm_sRGB = "astc-10x8-unorm-srgb";
	final ASTC10x10UNorm = "astc-10x10-unorm";
	final ASTC10x10UNorm_sRGB = "astc-10x10-unorm-srgb";
	final ASTC12x10UNorm = "astc-12x10-unorm";
	final ASTC12x10UNorm_sRGB = "astc-12x10-unorm-srgb";
	final ASTC12x12UNorm = "astc-12x12-unorm";
	final ASTC12x12UNorm_sRGB = "astc-12x12-unorm-srgb";
}
