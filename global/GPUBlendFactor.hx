package global;

enum abstract GPUBlendFactor(String) {
	final Zero = "zero";
	final One = "one";
	final Src = "src";
	final OneMinusSrc = "one-minus-src";
	final SrcAlpha = "src-alpha";
	final OneMinusSrcAlpha = "one-minus-src-alpha";
	final Dst = "dst";
	final OneMinusDst = "one-minus-dst";
	final DstAlpha = "dst-alpha";
	final OneMinusDstAlpha = "one-minus-dst-alpha";
	final SrcAlphaSaturated = "src-alpha-saturated";
	final Constant = "constant";
	final OneMinusConstant = "one-minus-constant";
}
