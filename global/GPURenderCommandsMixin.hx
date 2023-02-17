package global;

typedef GPURenderCommandsMixin = {
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
