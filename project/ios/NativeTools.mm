#include <NativeTools.h>
#import <UIKit/UIScreen.h>

namespace nativetools
{
	int GetDPI() {
		return 1555;
	}

	float GetDensity() {
		float scale = 1;
		if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)]) {
			scale = [[UIScreen mainScreen] scale];
		}

		return scale;
	}
}