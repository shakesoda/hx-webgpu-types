package global;

@:native("GPUCompilationMessage") extern class GPUCompilationMessage {
	function new();
	/**
		A human-readable string containing the message generated during the shader compilation.
	**/
	final message : String;
	/**
		The severity level of the message.
		If the {@link GPUCompilationMessage#type} is "error", it corresponds to a
		shader-creation error.
	**/
	final type : GPUCompilationMessageType;
	/**
		The line number in the shader {@link GPUShaderModuleDescriptor#code} the
		{@link GPUCompilationMessage#message} corresponds to. Value is one-based, such that a lineNum of
		`1` indicates the first line of the shader {@link GPUShaderModuleDescriptor#code}.
		If the {@link GPUCompilationMessage#message} corresponds to a substring this points to
		the line on which the substring begins. Must be `0` if the {@link GPUCompilationMessage#message}
		does not correspond to any specific point in the shader {@link GPUShaderModuleDescriptor#code}.
		Issue(gpuweb/gpuweb#2435): Reference WGSL spec when it [defines what a line is](https://gpuweb.github.io/gpuweb/wgsl/#comments).
	**/
	final lineNum : Int;
	/**
		The offset, in UTF-16 code units, from the beginning of line {@link GPUCompilationMessage#lineNum}
		of the shader {@link GPUShaderModuleDescriptor#code} to the point or beginning of the substring
		that the {@link GPUCompilationMessage#message} corresponds to. Value is one-based, such that a
		{@link GPUCompilationMessage#linePos} of `1` indicates the first code unit of the line.
		If {@link GPUCompilationMessage#message} corresponds to a substring this points to the
		first UTF-16 code unit of the substring. Must be `0` if the {@link GPUCompilationMessage#message}
		does not correspond to any specific point in the shader {@link GPUShaderModuleDescriptor#code}.
	**/
	final linePos : Int;
	/**
		The offset from the beginning of the shader {@link GPUShaderModuleDescriptor#code} in UTF-16
		code units to the point or beginning of the substring that {@link GPUCompilationMessage#message}
		corresponds to. Must reference the same position as {@link GPUCompilationMessage#lineNum} and
		{@link GPUCompilationMessage#linePos}. Must be `0` if the {@link GPUCompilationMessage#message}
		does not correspond to any specific point in the shader {@link GPUShaderModuleDescriptor#code}.
	**/
	final offset : Int;
	/**
		The number of UTF-16 code units in the substring that {@link GPUCompilationMessage#message}
		corresponds to. If the message does not correspond with a substring then
		{@link GPUCompilationMessage#length} must be 0.
	**/
	final length : Int;
}
