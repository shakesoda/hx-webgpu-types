package global;

@:native("GPUQueue") extern class GPUQueue {
	/**
		Schedules the execution of the command buffers by the GPU on this queue.
		Submitted command buffers cannot be used again.
		 	`commandBuffers`:
	**/
	function submit(commandBuffers:Array<GPUCommandBuffer>):Void;
	/**
		Returns a {@link Promise} that resolves once this queue finishes processing all the work submitted
		up to this moment.
		Resolution of this {@link Promise} implies the completion of
		{@link GPUBuffer#mapAsync} calls made prior to that call,
		on {@link GPUBuffer}s last used exclusively on that queue.
	**/
	function onSubmittedWorkDone():js.lib.Promise<Null<Any>>;
	/**
		Issues a write operation of the provided data into a {@link GPUBuffer}.
	**/
	function writeBuffer(buffer:GPUBuffer, bufferOffset:Int, data:js.lib.BufferSource, ?dataOffset:Int, ?size:Int):Void;
	/**
		Issues a write operation of the provided data into a {@link GPUTexture}.
	**/
	function writeTexture(destination:GPUImageCopyTexture, data:js.lib.BufferSource, dataLayout:GPUImageDataLayout, size:GPUExtent3DStrict):Void;
	/**
		Issues a copy operation of the contents of a platform image/canvas
		into the destination texture.
		This operation performs [[#color-space-conversions|color encoding]] into the destination
		encoding according to the parameters of {@link GPUImageCopyTextureTagged}.
		Copying into a `-srgb` texture results in the same texture bytes, not the same decoded
		values, as copying into the corresponding non-`-srgb` format.
		Thus, after a copy operation, sampling the destination texture has
		different results depending on whether its format is `-srgb`, all else unchanged.
		Issue: If an srgb-linear color space is added, explain here how it interacts.
	**/
	function copyExternalImageToTexture(source:GPUImageCopyExternalImage, destination:GPUImageCopyTextureTagged, copySize:GPUExtent3DStrict):Void;
	var label : String;
}
