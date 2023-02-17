package global;

enum abstract GPUStorageTextureAccess(String) {
	// the spec suggests there should also be a "read-only", but it's not in the enum, default only?
	final WriteOnly = "write-only";
}
