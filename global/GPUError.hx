package global;

@:native("GPUError") extern class GPUError {
	function new();
	/**
		A human-readable message providing information about the error that occurred.
		Note: This message is generally intended for application developers to debug their
		applications and capture information for debug reports, not to be surfaced to end-users.
		Note: User agents should not include potentially machine-parsable details in this message,
		such as free system memory on {@link GPUErrorFilter#"out-of-memory"} or other details about the
		conditions under which memory was exhausted.
	**/
	final message : String;
}