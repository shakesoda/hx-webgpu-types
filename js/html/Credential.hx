package js.html;

@:native("Credential") extern class Credential {
	function new();
	final id : String;
	final type : String;
	static var prototype : Credential;
}