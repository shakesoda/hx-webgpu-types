package global;

typedef GPUQuerySetDescriptor = {
	/**
		The type of queries managed by {@link GPUQuerySet}.
	**/
	var type : GPUQueryType;
	/**
		The number of queries managed by {@link GPUQuerySet}.
	**/
	var count : Int;
	/**
		The initial value of {@link GPUObjectBase#label|GPUObjectBase.label}.
	**/
	@:optional
	var label : String;
};
