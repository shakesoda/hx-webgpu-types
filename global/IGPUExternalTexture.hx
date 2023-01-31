package global;

typedef IGPUExternalTexture = {
	/**
		Nominal type branding.
		https://github.com/microsoft/TypeScript/pull/33038
	**/
	final __brand : String;
	/**
		Returns the value of {@link GPUExternalTexture#[[destroyed]]}, which indicates
		whether the texture has [$expire stale external textures|expired$] or not.
	**/
	final expired : Bool;
	var label : String;
};