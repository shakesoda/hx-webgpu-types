package global;

typedef GPUPrimitiveState = {
	/**
		The type of primitive to be constructed from the vertex inputs.
	**/
	@:optional
	var topology : GPUPrimitiveTopology;
	/**
		For pipelines with strip topologies
		({@link GPUPrimitiveTopology#"line-strip"} or {@link GPUPrimitiveTopology#"triangle-strip"}),
		this determines the index buffer format and primitive restart value
		({@link GPUIndexFormat#"uint16"}/`0xFFFF` or {@link GPUIndexFormat#"uint32"}/`0xFFFFFFFF`).
		It is not allowed on pipelines with non-strip topologies.
		Note: Some implementations require knowledge of the primitive restart value to compile
		pipeline state objects.
		To use a strip-topology pipeline with an indexed draw call
		({@link GPURenderCommandsMixin#drawIndexed()} or {@link GPURenderCommandsMixin#drawIndexedIndirect}),
		this must be set, and it must match the index buffer format used with the draw call
		(set in {@link GPURenderCommandsMixin#setIndexBuffer}).
		See [[#primitive-assembly]] for additional details.
	**/
	@:optional
	var stripIndexFormat : GPUIndexFormat;
	/**
		Defines which polygons are considered front-facing.
	**/
	@:optional
	var frontFace : GPUFrontFace;
	/**
		Defines which polygon orientation will be culled, if any.
	**/
	@:optional
	var cullMode : GPUCullMode;
	/**
		If true, indicates that depth clipping is disabled. See [[#depth-clip-control]] for additional details.
		Requires the {@link GPUFeatureName#"depth-clip-control"} feature to be enabled.
	**/
	@:optional
	var unclippedDepth : Bool;
}