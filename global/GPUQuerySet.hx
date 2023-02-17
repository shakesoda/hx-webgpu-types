package global;

@:native("GPUQuerySet") extern class GPUQuerySet {
	function new();
	/**
		Destroys the {@link GPUQuerySet}.
	**/
	function destroy():Void;
	/**
		The type of the queries managed by this {@link GPUQuerySet}.
	**/
	final type : GPUQueryType;
	/**
		The number of queries managed by this {@link GPUQuerySet}.
	**/
	final count : Int;
	var label : String;
}
