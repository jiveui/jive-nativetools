#ifndef STATIC_LINK
#define IMPLEMENT_API
#endif

#if defined(HX_WINDOWS) || defined(HX_MACOS) || defined(HX_LINUX)
#define NEKO_COMPATIBLE
#endif


#include <hx/CFFI.h>
#include "NativeTools.h"


using namespace nativetools;



static value nativetools_get_dpi() {
	
	return alloc_int(GetDPI());
	
}
DEFINE_PRIM (nativetools_get_dpi, 0);


static value nativetools_get_density() {
	
	return alloc_float(GetDensity());
	
}
DEFINE_PRIM (nativetools_get_density, 0);



extern "C" void nativetools_main () {
	
	val_int(0); // Fix Neko init
	
}
DEFINE_ENTRY_POINT (nativetools_main);



extern "C" int nativetools_register_prims () { return 0; }