package global;

typedef IGPUQuerySet = {
	/**
		Nominal type branding.
		https://github.com/microsoft/TypeScript/pull/33038
	**/
	final __brand : String;
	/**
		Destroys the {@link GPUQuerySet}.
	**/
	function destroy():Null<Any>;
	/**
		The type of the queries managed by this {@link GPUQuerySet}.
	**/
	final type : GPUQueryType;
	/**
		The number of queries managed by this {@link GPUQuerySet}.
	**/
	final count : Float;
	var label : String;
};