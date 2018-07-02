package electron.tools;

@:enum abstract DevToolsMode(String) to String {
	var Undocked = 'undocked';
	var Right = 'right';
	var Bottom = 'bottom';
	var Previous = 'previous';
}

typedef ElectronDebugOptions = {
	@:optional var enabled:Bool;
	@:optional var showDevTools:Bool; // default: true
	@:optional var devToolsMode:DevToolsMode;
}

@:jsRequire('electron-debug')
extern class ElectronDebug {
	@:selfCall
	public static function init(options:ElectronDebugOptions):Void;
}
