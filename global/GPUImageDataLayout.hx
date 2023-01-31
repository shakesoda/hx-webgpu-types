package global;

typedef GPUImageDataLayout = {
	/**
		The offset, in bytes, from the beginning of the image data source (such as a
		{@link GPUImageCopyBuffer#buffer|GPUImageCopyBuffer.buffer}) to the start of the image data
		within that source.
	**/
	@:optional
	var offset : Float;
	/**
		The stride, in bytes, between the beginning of each block row and the subsequent block row.
		Required if there are multiple block rows (i.e. the copy height or depth is more than one block).
	**/
	@:optional
	var bytesPerRow : Float;
	/**
		Number of block rows per single image of the texture.
		{@link GPUImageDataLayout#rowsPerImage} &times;
		{@link GPUImageDataLayout#bytesPerRow} is the stride, in bytes, between the beginning of each image of data and the subsequent image.
		Required if there are multiple images (i.e. the copy depth is more than one).
	**/
	@:optional
	var rowsPerImage : Float;
};