package global;

enum abstract GPUBufferMapState(String) {
	final Unmapped = "unmapped";
	final Pending = "pending";
	final Mapped = "mapped";
}
