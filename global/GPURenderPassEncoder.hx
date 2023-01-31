package global;

@:native("GPURenderPassEncoder") extern class GPURenderPassEncoder {
	function new();
	/**
		Sets the viewport used during the rasterization stage to linearly map from normalized device
		coordinates to viewport coordinates.
	**/
	function setViewport(x:Float, y:Float, width:Float, height:Float, minDepth:Float, maxDepth:Float):Null<Any>;
	/**
		Sets the scissor rectangle used during the rasterization stage.
		After transformation into viewport coordinates any fragments which fall outside the scissor
		rectangle will be discarded.
	**/
	function setScissorRect(x:Float, y:Float, width:Float, height:Float):Null<Any>;
	/**
		Sets the constant blend color and alpha values used with {@link GPUBlendFactor#"constant"}
		and {@link GPUBlendFactor#"one-minus-constant"} {@link GPUBlendFactor}s.
	**/
	function setBlendConstant(color:GPUColor):Null<Any>;
	/**
		Sets the {@link GPURenderPassEncoder#[[stencil_reference]]} value used during stencil tests with
		the {@link GPUStencilOperation#"replace"} {@link GPUStencilOperation}.
	**/
	function setStencilReference(reference:Float):Null<Any>;
	function beginOcclusionQuery(queryIndex:Float):Null<Any>;
	function endOcclusionQuery():Null<Any>;
	/**
		Executes the commands previously recorded into the given {@link GPURenderBundle}s as part of
		this render pass.
		When a {@link GPURenderBundle} is executed, it does not inherit the render pass's pipeline, bind
		groups, or vertex and index buffers. After a {@link GPURenderBundle} has executed, the render
		pass's pipeline, bind group, and vertex/index buffer state is cleared
		(to the initial, empty values).
		Note: The state is cleared, not restored to the previous state.
		This occurs even if zero {@link GPURenderBundle|GPURenderBundles} are executed.
	**/
	function executeBundles(bundles:Iterable<GPURenderBundle>):Null<Any>;
	/**
		Completes recording of the render pass commands sequence.
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
}
