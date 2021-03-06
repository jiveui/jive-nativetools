package jive.nativetools;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end

#if (android && openfl)
import openfl.utils.JNI;
#end


class NativeTools {
	
	public static var dpi(get, never): Int;
	private static var _dpi: Int = -1;
	private static function get_dpi() : Int {
		if (_dpi < 0)
			_dpi = getDPI();
		return _dpi;
	}


	public static var scale(get, never): Float;
	private static var _scale: Float = -1;
	private static function get_scale() : Float {
		if (_scale < 0)
			_scale = getScale();
		return _scale;
	}

	
	public static function setStatusBarColor(color:Int) {
		
		#if (android && openfl)
		
			set_status_bar_jni(color);
		
		#else
		
			trace("Your OS does not support this operation.");
		
		#end
		
	}


	public static function showStatusBar() {
		
		#if (android && openfl)
		
			show_status_bar_jni();
		
		#else
		
			trace("Your OS does not support this operation.");
		
		#end
		
	}


	public static function getDPI() : Int {
		
		#if (android && openfl)
		
			return get_dpi_jni();
		
		#elseif (ios)
		
			trace("Operation does not implemented for ios. Return default value = 160");
			return 160;

		#else

			return 160;
		
		#end
		
	}


	public static function getScale() : Float {
		
		#if (android && openfl)
		
			return get_density_jni();
		
		#elseif (ios)
		
			return get_density();

		#else

			return 1.0;
		
		#end
		
	}
	
	
	
	#if (android && openfl)
		private static var set_status_bar_jni = JNI.createStaticMethod("org.haxe.extension.JiveNativeTools", "setStatusBarColor", "(I)V");
		private static var show_status_bar_jni = JNI.createStaticMethod("org.haxe.extension.JiveNativeTools", "showStatusBar", "()V");
		private static var get_dpi_jni = JNI.createStaticMethod("org.haxe.extension.JiveNativeTools", "getDensityDPI", "()I");
		private static var get_density_jni = JNI.createStaticMethod("org.haxe.extension.JiveNativeTools", "getDensity", "()F");
	#else
		// private static var get_dpi = Lib.load ("nativetools", "get_dpi", 0);
		private static var get_density = Lib.load ("nativetools", "get_density", 0);
	#end
	
	
}