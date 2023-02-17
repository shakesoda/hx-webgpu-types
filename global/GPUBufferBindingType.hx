package global;

enum abstract GPUBufferBindingType(String) {
	final Uniform = "uniform";
	final Storage = "storage";
	final ReadOnlyStorage = "read-only-storage";
}
