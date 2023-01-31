package global;

typedef IGPUComputePassEncoder = {
	/**
		Nominal type branding.
		https://github.com/microsoft/TypeScript/pull/33038
	**/
	final __brand : String;
	/**
		Sets the current {@link GPUComputePipeline}.
	**/
	function setPipeline(pipeline:GPUComputePipeline):Null<Any>;
	/**
		Dispatch work to be performed with the current {@link GPUComputePipeline}.
		See [[#computing-operations]] for the detailed specification.
	**/
	function dispatchWorkgroups(workgroupCountX:Float, ?workgroupCountY:Float, ?workgroupCountZ:Float):Null<Any>;
	function dispatch(workgroupCountX:Float, ?workgroupCountY:Float, ?workgroupCountZ:Float):Null<Any>;
	/**
		Dispatch work to be performed with the current {@link GPUComputePipeline} using parameters read
		from a {@link GPUBuffer}.
		See [[#computing-operations]] for the detailed specification.
		packed block of **three 32-bit unsigned integer values (12 bytes total)**,
		given in the same order as the arguments for {@link GPUComputePassEncoder#dispatchWorkgroups}.
		For example:
	**/
	function dispatchWorkgroupsIndirect(indirectBuffer:GPUBuffer, indirectOffset:Float):Null<Any>;
	function dispatchIndirect(indirectBuffer:GPUBuffer, indirectOffset:Float):Null<Any>;
	/**
		Completes recording of the compute pass commands sequence.
	**/
	function end():Null<Any>;
	var label : String;
	/**
		Begins a labeled debug group containing subsequent commands.
	**/
	function pushDebugGroup(groupLabel:String):Null<Any>;
	/**
		Ends the labeled debug group most recently started by {@link GPUDebugCommandsMixin#pushDebugGroup}.
	**/
	function popDebugGroup():Null<Any>;
	/**
		Marks a point in a stream of commands with a label.
	**/
	function insertDebugMarker(markerLabel:String):Null<Any>;
	/**
		Sets the current {@link GPUBindGroup} for the given index.
		
		Sets the current {@link GPUBindGroup} for the given index, specifying dynamic offsets as a subset
		of a {@link Uint32Array}.
	**/
	@:overload(function(index:Float, bindGroup:GPUBindGroup, dynamicOffsetsData:js.lib.Uint32Array, dynamicOffsetsDataStart:Float, dynamicOffsetsDataLength:Float):Null<Any> { })
	function setBindGroup(index:Float, bindGroup:GPUBindGroup, ?dynamicOffsets:Iterable<Float>):Null<Any>;
};