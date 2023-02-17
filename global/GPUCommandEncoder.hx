package global;

@:native("GPUCommandEncoder") extern class GPUCommandEncoder {
	/**
		Begins encoding a render pass described by `descriptor`.
	**/
	function beginRenderPass(descriptor:GPURenderPassDescriptor):GPURenderPassEncoder;
	/**
		Begins encoding a compute pass described by `descriptor`.
		 	descriptor:
	**/
	function beginComputePass(?descriptor:GPUComputePassDescriptor):GPUComputePassEncoder;
	/**
		Encode a command into the {@link GPUCommandEncoder} that copies data from a sub-region of a
		{@link GPUBuffer} to a sub-region of another {@link GPUBuffer}.
	**/
	function copyBufferToBuffer(source:GPUBuffer, sourceOffset:Int, destination:GPUBuffer, destinationOffset:Int, size:Int):Void;
	/**
		Encode a command into the {@link GPUCommandEncoder} that copies data from a sub-region of a
		{@link GPUBuffer} to a sub-region of one or multiple continuous texture subresources.
	**/
	function copyBufferToTexture(source:GPUImageCopyBuffer, destination:GPUImageCopyTexture, copySize:GPUExtent3DStrict):Void;
	/**
		Encode a command into the {@link GPUCommandEncoder} that copies data from a sub-region of one or
		multiple continuous texture subresourcesto a sub-region of a {@link GPUBuffer}.
	**/
	function copyTextureToBuffer(source:GPUImageCopyTexture, destination:GPUImageCopyBuffer, copySize:GPUExtent3DStrict):Void;
	/**
		Encode a command into the {@link GPUCommandEncoder} that copies data from a sub-region of one
		or multiple contiguous texture subresources to another sub-region of one or
		multiple continuous texture subresources.
	**/
	function copyTextureToTexture(source:GPUImageCopyTexture, destination:GPUImageCopyTexture, copySize:GPUExtent3DStrict):Void;
	/**
		Encode a command into the {@link GPUCommandEncoder} that fills a sub-region of a
		{@link GPUBuffer} with zeros.
	**/
	function clearBuffer(buffer:GPUBuffer, ?offset:Int, ?size:Int):Void;
	/**
		Writes a timestamp value into a querySet when all previous commands have completed executing.
	**/
	function writeTimestamp(querySet:GPUQuerySet, queryIndex:Int):Void;
	/**
		Resolves query results from a {@link GPUQuerySet} out into a range of a {@link GPUBuffer}.
		 	querySet:
		 	firstQuery:
		 	queryCount:
		 	destination:
		 	destinationOffset:
	**/
	function resolveQuerySet(querySet:GPUQuerySet, firstQuery:Int, queryCount:Int, destination:GPUBuffer, destinationOffset:Int):Void;
	/**
		Completes recording of the commands sequence and returns a corresponding {@link GPUCommandBuffer}.
		 	descriptor:
	**/
	function finish(?descriptor:GPUObjectDescriptorBase):GPUCommandBuffer;
	var label : String;
	/**
		Begins a labeled debug group containing subsequent commands.
	**/
	function pushDebugGroup(groupLabel:String):Void;
	/**
		Ends the labeled debug group most recently started by {@link GPUDebugCommandsMixin#pushDebugGroup}.
	**/
	function popDebugGroup():Void;
	/**
		Marks a point in a stream of commands with a label.
	**/
	function insertDebugMarker(markerLabel:String):Void;
}
