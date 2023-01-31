package global;

typedef GPURenderPassTimestampWrite = {
	var querySet : GPUQuerySet;
	var queryIndex : Float;
	var location : GPUComputePassTimestampLocation;
};