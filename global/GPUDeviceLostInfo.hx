package global;

@:native("GPUDeviceLostInfo") extern class GPUDeviceLostInfo {
	function new();
	/**
		Nominal type branding.
		https://github.com/microsoft/TypeScript/pull/33038
	**/
	final __brand : String;
	final reason : Null<String>;
	final message : String;
	static var prototype : GPUDeviceLostInfo;
}