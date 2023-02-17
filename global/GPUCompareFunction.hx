package global;

enum abstract GPUCompareFunction(String) {
	final Never = "never";
	final Less = "less";
	final Equal = "equal";
	final LessEqual = "less-equal";
	final Greater = "greater";
	final NotEqual = "not-equal";
	final GreaterEqual = "greater-equal";
	final Always = "always";
}
