package nativetools;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end

#if (android && openfl)
import openfl.utils.JNI;
#end


class NativeTools {
	
	
	public static function setStatusBarColor(color:Int) {
		
		#if (android && openfl)
		
			set_status_bar_jni(color);
		
		#else
		
			trace("Your OS does not support this operation.");
		
		#end
		
	}


	public static function getDPI() : Int {
		
		#if (android && openfl)
		
			return get_dpi_jni();
		
		#else if (ios)
		
			return 160; // TODO

		#else

			return 160;
		
		#end
		
	}


	public static function getDensity() : Float {
		
		#if (android && openfl)
		
			return get_density_jni();
		
		#else if (ios)
		
			return 1.0; // TODO

		#else

			return 1.0;
		
		#end
		
	}
	
	
	// private static var jive_nativetools_sample_method = Lib.load ("jive_nativetools", "jive_nativetools_sample_method", 1);
	
	#if (android && openfl)
		private static var set_status_bar_jni = JNI.createStaticMethod("org.haxe.extension.JiveNativeTools", "setStatusBarColor", "(I)V");
		private static var get_dpi_jni = JNI.createStaticMethod("org.haxe.extension.JiveNativeTools", "getDensityDPI", "()I");
		private static var get_density_jni = JNI.createStaticMethod("org.haxe.extension.JiveNativeTools", "getDensity", "()F");
	#end
	
	
}