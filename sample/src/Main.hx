package;

import openfl.display.Sprite;
import jive.*;
import jive.nativetools.NativeTools;

class Main extends Sprite {
	
	
	public function new () {
		
		super ();

	}

	public static function main() {
		Jive.start();

		// NativeTools.setStatusBarColor(0xFF90C3D4);
		NativeTools.showStatusBar();

		trace("DPI = " + NativeTools.getDPI());
		trace("Scale = " + NativeTools.getScale());
	}

}