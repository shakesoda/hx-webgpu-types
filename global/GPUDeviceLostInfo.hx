package global;

@:native("GPUDeviceLostInfo") extern class GPUDeviceLostInfo {
	function new();
	final reason : Null<String>;
	final message : String;
	static var prototype : GPUDeviceLostInfo;
}
