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
	
	
	// private static var jive_nativetools_sample_method = Lib.load ("jive_nativetools", "jive_nativetools_sample_method", 1);
	
	#if (android && openfl)
		private static var set_status_bar_jni = JNI.createStaticMethod ("org.haxe.extension.JiveNativeTools", "setStatusBarColor", "(I)V");
	#end
	
	
}