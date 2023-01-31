package global;

@:native("GPUSampler") extern class GPUSampler {
	function new();
	/**
		Nominal type branding.
		https://github.com/microsoft/TypeScript/pull/33038
	**/
	final __brand : String;
	var label : String;
	static var prototype : GPUSampler;
}