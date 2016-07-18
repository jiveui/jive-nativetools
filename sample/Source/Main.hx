package;


import openfl.display.Sprite;
import openfl.Assets;
import nativetools.NativeTools;

class Main extends Sprite {
	
	
	public function new () {
		
		super ();
		
		// NativeTools.setStatusBarColor(0xFF90C3D4);
		NativeTools.showStatusBar();

		trace("DPI = " + NativeTools.getDPI());
		trace("Density = " + NativeTools.getDensity());

	}

}