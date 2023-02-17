package js.html;

typedef NodeListOf<TNode> = {
	/**
		Returns the number of nodes in the collection.
	**/
	var length: Float;
	/**
		Returns the node with index index from the collection. The nodes are sorted in tree order.
	**/
	function item(index: Int): TNode;
	/**
		Performs the specified action for each node in an list.
	**/
	function forEach(callbackfn: (value: TNode, key: Int, parent: NodeListOf<TNode>)->Void, ?thisArg: Dynamic): Void;
	/**
		Returns an array of key, value pairs for every entry in the list.
	**/
	function entries(): js.lib.IterableIterator<ts.Tuple2<Int, TNode>>;
	/**
		Returns an list of keys in the list.
	**/
	function keys(): js.lib.IterableIterator<Int>;
	/**
		Returns an list of values in the list.
	**/
	function values(): js.lib.IterableIterator<TNode>;
}
