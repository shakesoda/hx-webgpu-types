package global;

@:native("GPUBufferUsage") extern class GPUBufferUsage {
	static final MAP_READ: Int;
	static final MAP_WRITE: Int;
	static final COPY_SRC: Int;
	static final COPY_DST: Int;
	static final INDEX: Int;
	static final VERTEX: Int;
	static final UNIFORM: Int;
	static final STORAGE: Int;
	static final INDIRECT: Int;
	static final QUERY_RESOLVE: Int;
}
