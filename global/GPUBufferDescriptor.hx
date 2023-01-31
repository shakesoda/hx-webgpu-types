package global;

typedef GPUBufferDescriptor = {
	/**
		The size of the buffer in bytes.
	**/
	var size : Int;
	/**
		The allowed usages for the buffer.
	**/
	var usage : Int;
	/**
		If `true` creates the buffer in an already mapped state, allowing
		{@link GPUBuffer#getMappedRange} to be called immediately. It is valid to set
		{@link GPUBufferDescriptor#mappedAtCreation} to `true` even if {@link GPUBufferDescriptor#usage}
		does not contain {@link GPUBufferUsage#MAP_READ} or {@link GPUBufferUsage#MAP_WRITE}. This can be
		used to set the buffer's initial data.
		Guarantees that even if the buffer creation eventually fails, it will still appear as if the
		mapped range can be written/read to until it is unmapped.
	**/
	@:optional
	var mappedAtCreation : Bool;
	/**
		The initial value of {@link GPUObjectBase#label|GPUObjectBase.label}.
	**/
	@:optional
	var label : String;
};
