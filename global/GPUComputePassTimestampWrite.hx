package global;

typedef GPUComputePassTimestampWrite = {
	var querySet : GPUQuerySet;
	var queryIndex : Int;
	var location : GPUComputePassTimestampLocation;
}
