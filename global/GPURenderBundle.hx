package global;

@:native("GPURenderBundle") extern class GPURenderBundle {
	function new();
	/**
		Nominal type branding.
		https://github.com/microsoft/TypeScript/pull/33038
	**/
	final __brand : String;
	var label : String;
	static var prototype : GPURenderBundle;
}