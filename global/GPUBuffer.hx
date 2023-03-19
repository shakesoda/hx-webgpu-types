package global;

@:native("GPUBuffer") extern class GPUBuffer {
	final size: Int;
	final usage: Int;
	final mapState: GPUBufferMapState;
	/**
		Maps the given range of the {@link GPUBuffer} and resolves the returned {@link Promise} when the
		{@link GPUBuffer}'s content is ready to be accessed with {@link GPUBuffer#getMappedRange}.
		The resolution of the returned {@link Promise} **only** indicates that the buffer has been mapped.
		It does not guarantee the completion of any other operations visible to the content timeline,
		and in particular does not imply that any other {@link Promise} returned from
		{@link GPUQueue#onSubmittedWorkDone()} or {@link GPUBuffer#mapAsync} on other {@link GPUBuffer}s
		have resolved.
		The resolution of the {@link Promise} returned from {@link GPUQueue#onSubmittedWorkDone}
		**does** imply the completion of
		{@link GPUBuffer#mapAsync} calls made prior to that call,
		on {@link GPUBuffer}s last used exclusively on that queue.
	**/
	function mapAsync(mode:Int, ?offset:Int, ?size:Int): js.lib.Promise<Null<Any>>;
	/**
		Returns an {@link ArrayBuffer} with the contents of the {@link GPUBuffer} in the given mapped range.
	**/
	function getMappedRange(?offset:Int, ?size:Int): js.lib.ArrayBuffer;
	/**
		Unmaps the mapped range of the {@link GPUBuffer} and makes it's contents available for use by the
		GPU again.
	**/
	function unmap(): Void;
	/**
		Destroys the {@link GPUBuffer}.
		Note: It is valid to destroy a buffer multiple times.
		Note: Since no further operations can be enqueued using this buffer, implementations can
		free resource allocations, including mapped memory that was just unmapped.
	**/
	function destroy(): Void;
	var label: String;
}
