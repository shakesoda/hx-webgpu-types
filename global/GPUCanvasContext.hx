package global;

@:native("GPUCanvasContext") extern class GPUCanvasContext {
	function new();
	/**
		The canvas this context was created from.
	**/
	final canvas : ts.AnyOf2<js.html.CanvasElement, js.html.OffscreenCanvas>;
	/**
		Configures the context for this canvas.
		This clears the drawing buffer to transparent black (in [$Replace the drawing buffer$]).
	**/
	function configure(configuration:GPUCanvasConfiguration):Null<Any>;
	/**
		Removes the context configuration. Destroys any textures produced while configured.
	**/
	function unconfigure():Null<Any>;
	function getPreferredFormat(adapter:GPUAdapter):GPUTextureFormat;
	/**
		Get the {@link GPUTexture} that will be composited to the document by the {@link GPUCanvasContext}
		next.
		Note: The same {@link GPUTexture} object will be returned by every
		call to {@link GPUCanvasContext#getCurrentTexture} made within the same frame (i.e. between
		invocations of "[$update the rendering of the WebGPU canvas$]"), even if that {@link GPUTexture}
		is destroyed, failed validation, or failed to allocate, **unless** the current texture has
		been removed (in [$Replace the drawing buffer$]).
	**/
	function getCurrentTexture():GPUTexture;
	static var prototype : GPUCanvasContext;
}