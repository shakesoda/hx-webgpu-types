package global;

typedef GPUDebugCommandsMixin = {
	/**
		Begins a labeled debug group containing subsequent commands.
	**/
	function pushDebugGroup(groupLabel:String):Null<Any>;
	/**
		Ends the labeled debug group most recently started by {@link GPUDebugCommandsMixin#pushDebugGroup}.
	**/
	function popDebugGroup():Null<Any>;
	/**
		Marks a point in a stream of commands with a label.
	**/
	function insertDebugMarker(markerLabel:String):Null<Any>;
};