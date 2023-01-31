package js.html;

/**
	The state and the identity of the user agent. It allows scripts to query it and to register themselves to carry on some activities.
**/
typedef INavigator = {
	final activeVRDisplays : haxe.ds.ReadOnlyArray<VRDisplay>;
	final clipboard : js.html.Clipboard;
	final credentials : CredentialsContainer;
	final doNotTrack : Null<String>;
	final geolocation : js.html.Geolocation;
	final maxTouchPoints : Float;
	final mediaDevices : js.html.MediaDevices;
	final msManipulationViewsEnabled : Bool;
	final msMaxTouchPoints : Float;
	final msPointerEnabled : Bool;
	final permissions : js.html.Permissions;
	final pointerEnabled : Bool;
	final serviceWorker : js.html.ServiceWorkerContainer;
	function getGamepads():Array<Null<js.html.Gamepad>>;
	function getUserMedia(constraints:js.html.MediaStreamConstraints, successCallback:NavigatorUserMediaSuccessCallback, errorCallback:NavigatorUserMediaErrorCallback):Void;
	function getVRDisplays():js.lib.Promise<Array<VRDisplay>>;
	function msLaunchUri(uri:String, ?successCallback:MSLaunchUriCallback, ?noHandlerCallback:MSLaunchUriCallback):Void;
	@:overload(function(keySystem:String, supportedConfigurations:Iterable<js.html.eme.MediaKeySystemConfiguration>):js.lib.Promise<js.html.eme.MediaKeySystemAccess> { })
	function requestMediaKeySystemAccess(keySystem:String, supportedConfigurations:Array<js.html.eme.MediaKeySystemConfiguration>):js.lib.Promise<js.html.eme.MediaKeySystemAccess>;
	function vibrate(pattern:ts.AnyOf2<Float, Array<Float>>):Bool;
	function msSaveBlob(blob:Dynamic, ?defaultName:String):Bool;
	function msSaveOrOpenBlob(blob:Dynamic, ?defaultName:String):Bool;
	function confirmSiteSpecificTrackingException(args:ConfirmSiteSpecificExceptionsInformation):Bool;
	function confirmWebWideTrackingException(args:ExceptionInformation):Bool;
	function removeSiteSpecificTrackingException(args:ExceptionInformation):Void;
	function removeWebWideTrackingException(args:ExceptionInformation):Void;
	function storeSiteSpecificTrackingException(args:StoreSiteSpecificExceptionsInformation):Void;
	function storeWebWideTrackingException(args:StoreExceptionsInformation):Void;
	final webdriver : Bool;
	function sendBeacon(url:String, ?data:ts.AnyOf14<String, js.html.Blob, js.lib.Uint32Array, js.lib.ArrayBuffer, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.Uint8Array, js.lib.Uint16Array, js.lib.Uint8ClampedArray, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView, js.html.FormData>):Bool;
	final hardwareConcurrency : Float;
	function registerProtocolHandler(scheme:String, url:String, title:String):Void;
	function unregisterProtocolHandler(scheme:String, url:String):Void;
	final cookieEnabled : Bool;
	final appCodeName : String;
	final appName : String;
	final appVersion : String;
	final oscpu : String;
	final platform : String;
	final product : String;
	final productSub : String;
	final userAgent : String;
	final vendor : String;
	final vendorSub : String;
	function taintEnabled():Bool;
	final language : String;
	final languages : haxe.ds.ReadOnlyArray<String>;
	final onLine : Bool;
	final mimeTypes : js.html.MimeTypeArray;
	final plugins : js.html.PluginArray;
	function javaEnabled():Bool;
	final storage : js.html.StorageManager;
	final gpu : global.GPU;
};