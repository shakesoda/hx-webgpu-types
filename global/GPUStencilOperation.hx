package global;

enum abstract GPUStencilOperation(String) {
	final Keep = "keep";
	final Zero = "zero";
	final Replace = "replace";
	final Invert = "invert";
	final IncrementClamp = "increment-clamp";
	final DecrementClamp = "decrement-clamp";
	final IncrementWrap = "increment-wrap";
	final DecrementWrap = "decrement-wrap";
}
