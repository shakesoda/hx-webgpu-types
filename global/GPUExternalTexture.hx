package global;

@:native("GPUExternalTexture") extern class GPUExternalTexture {
	function new();
	/**
		Returns the value of {@link GPUExternalTexture#[[destroyed]]}, which indicates
		whether the texture has [$expire stale external textures|expired$] or not.
	**/
	final expired : Bool;
	var label : String;
	static var prototype : GPUExternalTexture;
}