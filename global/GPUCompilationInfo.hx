package global;

@:native("GPUCompilationInfo") extern class GPUCompilationInfo {
	function new();
	final messages : haxe.ds.ReadOnlyArray<GPUCompilationMessage>;
	static var prototype : GPUCompilationInfo;
}