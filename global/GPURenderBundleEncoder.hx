package global;

@:native("GPURenderBundleEncoder") extern class GPURenderBundleEncoder {
	/**
		Completes recording of the render bundle commands sequence.
		 	descriptor:
	**/
	function finish(?descriptor: GPUObjectDescriptorBase): GPURenderBundle;
	var label: String;
	/**
		Begins a labeled debug group containing subsequent commands.
	**/
	function pushDebugGroup(groupLabel: String): Void;
	/**
		Ends the labeled debug group most recently started by {@link GPUDebugCommandsMixin#pushDebugGroup}.
	**/
	function popDebugGroup(): Void;
	/**
		Marks a point in a stream of commands with a label.
	**/
	function insertDebugMarker(markerLabel:String): Void;
	/**
		Sets the current {@link GPUBindGroup} for the given index.
		
		Sets the current {@link GPUBindGroup} for the given index, specifying dynamic offsets as a subset
		of a {@link Uint32Array}.
	**/
	@:overload(function(index: Int, bindGroup: GPUBindGroup, dynamicOffsetsData: js.lib.Uint32Array, dynamicOffsetsDataStart: Int, dynamicOffsetsDataLength: Int): Void { })
	function setBindGroup(index: Int, bindGroup: GPUBindGroup, ?dynamicOffsets: Array<Int>): Void;
	/**
		Sets the current {@link GPURenderPipeline}.
	**/
	function setPipeline(pipeline: GPURenderPipeline): Void;
	/**
		Sets the current index buffer.
	**/
	function setIndexBuffer(buffer: GPUBuffer, indexFormat: GPUIndexFormat, ?offset: Int, ?size: Int): Void;
	/**
		Sets the current vertex buffer for the given slot.
	**/
	function setVertexBuffer(slot: Int, buffer: GPUBuffer, ?offset: Int, ?size: Int): Void;
	/**
		Draws primitives.
		See [[#rendering-operations]] for the detailed specification.
	**/
	function draw(vertexCount: Int, ?instanceCount: Int, ?firstVertex: Int, ?firstInstance: Int): Void;
	/**
		Draws indexed primitives.
		See [[#rendering-operations]] for the detailed specification.
	**/
	function drawIndexed(indexCount: Int, ?instanceCount: Int, ?firstIndex: Int, ?baseVertex: Int, ?firstInstance: Int): Void;
	/**
		Draws primitives using parameters read from a {@link GPUBuffer}.
		See [[#rendering-operations]] for the detailed specification.
		packed block of **four 32-bit unsigned integer values (16 bytes total)**, given in the same
		order as the arguments for {@link GPURenderEncoderBase#draw}. For example:
	**/
	function drawIndirect(indirectBuffer: GPUBuffer, indirectOffset: Int): Void;
	/**
		Draws indexed primitives using parameters read from a {@link GPUBuffer}.
		See [[#rendering-operations]] for the detailed specification.
		tightly packed block of **five 32-bit unsigned integer values (20 bytes total)**, given in
		the same order as the arguments for {@link GPURenderEncoderBase#drawIndexed}. For example:
	**/
	function drawIndexedIndirect(indirectBuffer: GPUBuffer, indirectOffset: Int): Void;
}
