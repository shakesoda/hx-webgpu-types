package global;

typedef IGPUBufferUsage = {
	/**
		Nominal type branding.
		https://github.com/microsoft/TypeScript/pull/33038
	**/
	final __brand : String;
	final MAP_READ : Float;
	final MAP_WRITE : Float;
	final COPY_SRC : Float;
	final COPY_DST : Float;
	final INDEX : Float;
	final VERTEX : Float;
	final UNIFORM : Float;
	final STORAGE : Float;
	final INDIRECT : Float;
	final QUERY_RESOLVE : Float;
};