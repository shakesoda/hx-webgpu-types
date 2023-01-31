package global;

@:native("GPURenderBundleEncoder") extern class GPURenderBundleEncoder {
	function new();
	/**
		Completes recording of the render bundle commands sequence.
		 	descriptor:
	**/
	function finish(?descriptor:GPUObjectDescriptorBase):GPURenderBundle;
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
	/**
		Sets the current {@link GPURenderPipeline}.
	**/
	function setPipeline(pipeline:GPURenderPipeline):Null<Any>;
	/**
		Sets the current index buffer.
	**/
	function setIndexBuffer(buffer:GPUBuffer, indexFormat:GPUIndexFormat, ?offset:Float, ?size:Float):Null<Any>;
	/**
		Sets the current vertex buffer for the given slot.
	**/
	function setVertexBuffer(slot:Float, buffer:GPUBuffer, ?offset:Float, ?size:Float):Null<Any>;
	/**
		Draws primitives.
		See [[#rendering-operations]] for the detailed specification.
	**/
	function draw(vertexCount:Float, ?instanceCount:Float, ?firstVertex:Float, ?firstInstance:Float):Null<Any>;
	/**
		Draws indexed primitives.
		See [[#rendering-operations]] for the detailed specification.
	**/
	function drawIndexed(indexCount:Float, ?instanceCount:Float, ?firstIndex:Float, ?baseVertex:Float, ?firstInstance:Float):Null<Any>;
	/**
		Draws primitives using parameters read from a {@link GPUBuffer}.
		See [[#rendering-operations]] for the detailed specification.
		packed block of **four 32-bit unsigned integer values (16 bytes total)**, given in the same
		order as the arguments for {@link GPURenderEncoderBase#draw}. For example:
	**/
	function drawIndirect(indirectBuffer:GPUBuffer, indirectOffset:Float):Null<Any>;
	/**
		Draws indexed primitives using parameters read from a {@link GPUBuffer}.
		See [[#rendering-operations]] for the detailed specification.
		tightly packed block of **five 32-bit unsigned integer values (20 bytes total)**, given in
		the same order as the arguments for {@link GPURenderEncoderBase#drawIndexed}. For example:
	**/
	function drawIndexedIndirect(indirectBuffer:GPUBuffer, indirectOffset:Float):Null<Any>;
	static var prototype : GPURenderBundleEncoder;
}