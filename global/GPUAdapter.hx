package global;

@:native("GPUAdapter") extern class GPUAdapter {
	function new();
	final name : String;
	/**
		The set of values in `this`.{@link GPUAdapter#[[adapter]]}.{@link adapter#[[features]]}.
	**/
	final features : GPUSupportedFeatures;
	/**
		The limits in `this`.{@link GPUAdapter#[[adapter]]}.{@link adapter#[[limits]]}.
	**/
	final limits : GPUSupportedLimits;
	/**
		Returns the value of {@link GPUAdapter#[[adapter]]}.{@link adapter#[[fallback]]}.
	**/
	final isFallbackAdapter : Bool;
	/**
		Requests a device from the adapter.
	**/
	function requestDevice(?descriptor:GPUDeviceDescriptor):js.lib.Promise<GPUDevice>;
	/**
		Requests the {@link GPUAdapterInfo} for this {@link GPUAdapter}.
		Note: Adapter info values are returned with a Promise to give user agents an
		opportunity to perform potentially long-running checks when requesting unmasked values,
		such as asking for user consent before returning. If no `unmaskHints` are specified,
		however, no dialogs should be displayed to the user.
	**/
	function requestAdapterInfo(?unmaskHints:Array<String>):js.lib.Promise<GPUAdapterInfo>;
}
