package global;

typedef GPURenderPassDescriptor = {
	/**
		The set of {@link GPURenderPassColorAttachment} values in this sequence defines which
		color attachments will be output to when executing this render pass.
		Due to compatible usage list|usage compatibility, no color attachment
		may alias another attachment or any resource used inside the render pass.
	**/
	var colorAttachments : Iterable<Null<GPURenderPassColorAttachment>>;
	/**
		The {@link GPURenderPassDepthStencilAttachment} value that defines the depth/stencil
		attachment that will be output to and tested against when executing this render pass.
		Due to compatible usage list|usage compatibility, no writable depth/stencil attachment
		may alias another attachment or any resource used inside the render pass.
	**/
	@:optional
	var depthStencilAttachment : GPURenderPassDepthStencilAttachment;
	/**
		The {@link GPUQuerySet} value defines where the occlusion query results will be stored for this pass.
	**/
	@:optional
	var occlusionQuerySet : GPUQuerySet;
	/**
		A sequence of {@link GPURenderPassTimestampWrite} values defines where and when timestamp values will be written for this pass.
	**/
	@:optional
	var timestampWrites : GPURenderPassTimestampWrites;
	/**
		The maximum number of draw calls that will be done in the render pass. Used by some
		implementations to size work injected before the render pass. Keeping the default value
		is a good default, unless it is known that more draw calls will be done.
	**/
	@:optional
	var maxDrawCount : Int;
	/**
		The initial value of {@link GPUObjectBase#label|GPUObjectBase.label}.
	**/
	@:optional
	var label : String;
};
