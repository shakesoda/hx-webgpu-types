package global;

@:native("GPUComputePassEncoder") extern class GPUComputePassEncoder {
	/**
		Sets the current {@link GPUComputePipeline}.
	**/
	function setPipeline(pipeline:GPUComputePipeline):Void;
	/**
		Dispatch work to be performed with the current {@link GPUComputePipeline}.
		See [[#computing-operations]] for the detailed specification.
	**/
	function dispatchWorkgroups(workgroupCountX:Int, ?workgroupCountY:Int, ?workgroupCountZ:Int):Void;

	/**
		Dispatch work to be performed with the current {@link GPUComputePipeline} using parameters read
		from a {@link GPUBuffer}.
		See [[#computing-operations]] for the detailed specification.
		packed block of **three 32-bit unsigned integer values (12 bytes total)**,
		given in the same order as the arguments for {@link GPUComputePassEncoder#dispatchWorkgroups}.
		For example:
	**/
	function dispatchWorkgroupsIndirect(indirectBuffer:GPUBuffer, indirectOffset:Int):Void;
	function dispatchIndirect(indirectBuffer:GPUBuffer, indirectOffset:Int):Void;
	/**
		Completes recording of the compute pass commands sequence.
	**/
	function end():Void;
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
	/**
		Sets the current {@link GPUBindGroup} for the given index.

		Sets the current {@link GPUBindGroup} for the given index, specifying dynamic offsets as a subset
		of a {@link Uint32Array}.
	**/
	@:overload(function(index:Int, bindGroup:GPUBindGroup, dynamicOffsetsData:js.lib.Uint32Array, dynamicOffsetsDataStart:Int, dynamicOffsetsDataLength:Int):Void { })
	function setBindGroup(index:Int, bindGroup:GPUBindGroup, ?dynamicOffsets:Array<Int>):Void;
}
