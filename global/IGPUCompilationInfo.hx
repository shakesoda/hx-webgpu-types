package global;

typedef IGPUCompilationInfo = {
	/**
		Nominal type branding.
		https://github.com/microsoft/TypeScript/pull/33038
	**/
	final __brand : String;
	final messages : haxe.ds.ReadOnlyArray<GPUCompilationMessage>;
};