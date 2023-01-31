package global;

@:native("GPUMapMode") extern class GPUMapMode {
	function new();
	/**
		Nominal type branding.
		https://github.com/microsoft/TypeScript/pull/33038
	**/
	final __brand : String;
	final READ : Float;
	final WRITE : Float;
	static var prototype : GPUMapMode;
	@:native("READ")
	static final READ_ : Float;
	@:native("WRITE")
	static final WRITE_ : Float;
}