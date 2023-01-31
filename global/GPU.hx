package global;

@:native("GPU") extern class GPU {
	function new();
	/**
		Requests an adapter from the user agent.
		The user agent chooses whether to return an adapter, and, if so,
		chooses according to the provided options.
	**/
	function requestAdapter(?options:GPURequestAdapterOptions):js.lib.Promise<Null<GPUAdapter>>;
	/**
		Returns an optimal {@link GPUTextureFormat} for displaying 8-bit depth, standard dynamic range
		content on this system. Must only return {@link GPUTextureFormat#"rgba8unorm"} or
		{@link GPUTextureFormat#"bgra8unorm"}.
		The returned value can be passed as the {@link GPUCanvasConfiguration#format} to
		{@link GPUCanvasContext#configure} calls on a {@link GPUCanvasContext} to ensure the associated
		canvas is able to display its contents efficiently.
		Note: Canvases which are not displayed to the screen may or may not benefit from using this
		format.
	**/
	function getPreferredCanvasFormat():GPUTextureFormat;
}