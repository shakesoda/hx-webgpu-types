package global;

@:native("GPURenderPassEncoder") extern class GPURenderPassEncoder {
	function new();
	/**
		Sets the viewport used during the rasterization stage to linearly map from normalized device
		coordinates to viewport coordinates.
	**/
	function setViewport(x:Int, y:Int, width:Int, height:Int, minDepth:Float, maxDepth:Float):Void;
	/**
		Sets the scissor rectangle used during the rasterization stage.
		After transformation into viewport coordinates any fragments which fall outside the scissor
		rectangle will be discarded.
	**/
	function setScissorRect(x:Int, y:Int, width:Int, height:Int):Void;
	/**
		Sets the constant blend color and alpha values used with {@link GPUBlendFactor#"constant"}
		and {@link GPUBlendFactor#"one-minus-constant"} {@link GPUBlendFactor}s.
	**/
	function setBlendConstant(color:GPUColor):Void;
	/**
		Sets the {@link GPURenderPassEncoder#[[stencil_reference]]} value used during stencil tests with
		the {@link GPUStencilOperation#"replace"} {@link GPUStencilOperation}.
	**/
	function setStencilReference(reference:Int):Void;
	function beginOcclusionQuery(queryIndex:Int):Void;
	function endOcclusionQuery():Void;
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
	function executeBundles(bundles:Array<GPURenderBundle>):Void;
	/**
		Completes recording of the render pass commands sequence.
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
	/**
		Sets the current {@link GPURenderPipeline}.
	**/
	function setPipeline(pipeline:GPURenderPipeline):Void;
	/**
		Sets the current index buffer.
	**/
	function setIndexBuffer(buffer:GPUBuffer, indexFormat:GPUIndexFormat, ?offset:Int, ?size:Int):Void;
	/**
		Sets the current vertex buffer for the given slot.
	**/
	function setVertexBuffer(slot:Int, buffer:GPUBuffer, ?offset:Int, ?size:Int):Void;
	/**
		Draws primitives.
		See [[#rendering-operations]] for the detailed specification.
	**/
	function draw(vertexCount:Int, ?instanceCount:Int, ?firstVertex:Int, ?firstInstance:Int):Void;
	/**
		Draws indexed primitives.
		See [[#rendering-operations]] for the detailed specification.
	**/
	function drawIndexed(indexCount:Int, ?instanceCount:Int, ?firstIndex:Int, ?baseVertex:Int, ?firstInstance:Int):Void;
	/**
		Draws primitives using parameters read from a {@link GPUBuffer}.
		See [[#rendering-operations]] for the detailed specification.
		packed block of **four 32-bit unsigned integer values (16 bytes total)**, given in the same
		order as the arguments for {@link GPURenderEncoderBase#draw}. For example:
	**/
	function drawIndirect(indirectBuffer:GPUBuffer, indirectOffset:Int):Void;
	/**
		Draws indexed primitives using parameters read from a {@link GPUBuffer}.
		See [[#rendering-operations]] for the detailed specification.
		tightly packed block of **five 32-bit unsigned integer values (20 bytes total)**, given in
		the same order as the arguments for {@link GPURenderEncoderBase#drawIndexed}. For example:
	**/
	function drawIndexedIndirect(indirectBuffer:GPUBuffer, indirectOffset:Int):Void;
}
