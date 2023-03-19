package global;

typedef GPUBufferBindingLayout = {
	/**
		Indicates the type required for buffers bound to this bindings.
	**/
	@:optional
	var type: GPUBufferBindingType;
	/**
		Indicates whether this binding requires a dynamic offset.
	**/
	@:optional
	var hasDynamicOffset: Bool;
	/**
		Indicates the minimum buffer binding size.
		Bindings are always validated against this size in {@link GPUDevice#createBindGroup}.
		If this *is not* `0`, pipeline creation additionally [$validating shader binding|validates$]
		that this value is large enough for the bindings declared in the shader.
		If this *is* `0`, draw/dispatch commands additionally [$Validate encoder bind groups|validate$]
		that each binding in the {@link GPUBindGroup} is large enough for the bindings declared in the shader.
		Note:
		Similar execution-time validation is theoretically possible for other
		binding-related fields specified for early validation, like
		{@link GPUTextureBindingLayout#sampleType} and {@link GPUStorageTextureBindingLayout#format},
		which currently can only be validated in pipeline creation.
		However, such execution-time validation could be costly or unnecessarily complex, so it is
		available only for {@link GPUBufferBindingLayout#minBindingSize} which is expected to have the
		most ergonomic impact.
	**/
	@:optional
	var minBindingSize: Int;
}
