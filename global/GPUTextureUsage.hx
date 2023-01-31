package global;

@:native("GPUTextureUsage") extern class GPUTextureUsage {
	/**
		Nominal type branding.
		https://github.com/microsoft/TypeScript/pull/33038
	**/
	static final __brand : String;
	static final COPY_SRC : Int;
	static final COPY_DST : Int;
	static final TEXTURE_BINDING : Int;
	static final STORAGE_BINDING : Int;
	static final RENDER_ATTACHMENT : Int;
}