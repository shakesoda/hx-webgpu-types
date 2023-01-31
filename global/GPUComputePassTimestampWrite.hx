package global;

typedef GPUComputePassTimestampWrite = {
	var querySet : GPUQuerySet;
	var queryIndex : Float;
	var location : GPUComputePassTimestampLocation;
};