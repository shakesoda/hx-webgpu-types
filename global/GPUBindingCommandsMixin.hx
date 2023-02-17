package global;

typedef GPUBindingCommandsMixin = {
	/**
		Sets the current {@link GPUBindGroup} for the given index.
		
		Sets the current {@link GPUBindGroup} for the given index, specifying dynamic offsets as a subset
		of a {@link Uint32Array}.
	**/
	@:overload(function(index: Int, bindGroup: GPUBindGroup, dynamicOffsetsData: js.lib.Uint32Array, dynamicOffsetsDataStart: Int, dynamicOffsetsDataLength: Int): Void { })
	function setBindGroup(index: Int, bindGroup: GPUBindGroup, ?dynamicOffsets: Array<Int>): Void;
}
