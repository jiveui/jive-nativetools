package;


import openfl.display.Sprite;
import nativetools.NativeTools;


class Main extends Sprite {
	
	
	public function new () {
		
		super ();
		
		NativeTools.setStatusBarColor(0xFFFFFFFF);

		trace("DPI = " + NativeTools.getDPI());
		trace("Density = " + NativeTools.getDensity());
		
	}

}