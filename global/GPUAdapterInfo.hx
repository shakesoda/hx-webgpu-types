package global;

@:native("GPUAdapterInfo") extern class GPUAdapterInfo {
	/**
		The name of the vendor of the adapter, if available. Empty string otherwise.
	**/
	final vendor : String;
	/**
		The name of the family or class of GPUs the adapter belongs to, if available. Empty
		string otherwise.
	**/
	final architecture : String;
	/**
		A vendor-specific identifier for the adapter, if available. Empty string otherwise.
		Note: This is a value that represents the type of adapter. For example, it may be a
		[PCI device ID](https://pcisig.com/). It does not uniquely identify a given piece of
		hardware like a serial number.
	**/
	final device : String;
	/**
		A human readable string describing the adapter as reported by the driver, if available.
		Empty string otherwise.
		Note: Because no formatting is applied to {@link GPUAdapterInfo#description} attempting to parse
		this value is not recommended. Applications which change their behavior based on the
		{@link GPUAdapterInfo}, such as applying workarounds for known driver issues, should rely on the
		other fields when possible.
	**/
	final description : String;
}