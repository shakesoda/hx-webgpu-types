package global;

typedef GPURenderPassTimestampWrite = {
	var querySet : GPUQuerySet;
	var queryIndex : Int;
	var location : GPUComputePassTimestampLocation;
};
