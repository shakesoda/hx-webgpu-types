package global;

typedef GPUTextureDescriptor = {
	/**
		The width, height, and depth or layer count of the texture.
	**/
	var size : GPUExtent3DStrict;
	/**
		The number of mip levels the texture will contain.
	**/
	@:optional
	var mipLevelCount : Int;
	/**
		The sample count of the texture. A {@link GPUTextureDescriptor#sampleCount} &gt; `1` indicates
		a multisampled texture.
	**/
	@:optional
	var sampleCount : Int;
	/**
		Whether the texture is one-dimensional, an array of two-dimensional layers, or three-dimensional.
	**/
	@:optional
	var dimension : GPUTextureDimension;
	/**
		The format of the texture.
	**/
	var format : GPUTextureFormat;
	/**
		The allowed usages for the texture.
	**/
	var usage : Int;
	/**
		Specifies what view {@link GPUTextureViewDescriptor#format} values will be allowed when calling
		{@link GPUTexture#createView} on this texture (in addition to the texture's actual
		{@link GPUTextureDescriptor#format}).
		<div class=note>
		Note:
		Adding a format to this list may have a significant performance impact, so it is best
		to avoid adding formats unnecessarily.
		The actual performance impact is highly dependent on the target system; developers must
		test various systems to find out the impact on their particular application.
		For example, on some systems any texture with a {@link GPUTextureDescriptor#format} or
		{@link GPUTextureDescriptor#viewFormats} entry including
		{@link GPUTextureFormat#"rgba8unorm-srgb"} will perform less optimally than a
		{@link GPUTextureFormat#"rgba8unorm"} texture which does not.
		Similar caveats exist for other formats and pairs of formats on other systems.
		</div>
		Formats in this list must be texture view format compatible with the texture format.
		<div algorithm>
		Two {@link GPUTextureFormat}s `format` and `viewFormat` are <dfn dfn for=>texture view format compatible</dfn> if:
		- `format` equals `viewFormat`, or
		- `format` and `viewFormat` differ only in whether they are `srgb` formats (have the `-srgb` suffix).
		Issue(gpuweb/gpuweb#168): Define larger compatibility classes.
		</div>
	**/
	@:optional
	var viewFormats : Array<GPUTextureFormat>;
	/**
		The initial value of {@link GPUObjectBase#label|GPUObjectBase.label}.
	**/
	@:optional
	var label : String;
}