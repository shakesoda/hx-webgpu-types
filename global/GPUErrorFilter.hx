package global;

enum abstract GPUErrorFilter(String) {
	final Validation = "validation";
	final OutOfMemory = "out-of-memory";
	final Internal = "internal";
}
