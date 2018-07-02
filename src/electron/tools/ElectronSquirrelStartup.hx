package electron.tools;

@:jsRequire('electron-squirrel-startup')
extern class ElectronSquirrelStartup {
	@:selfCall
	public static var isInit:Bool;
}

