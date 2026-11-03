package org.libpag;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.hardware.HardwareBuffer;
import android.util.Pair;

/* JADX INFO: loaded from: classes2.dex */
abstract class a {
    static Pair a(int i, int i2, boolean z) {
        Bitmap bitmapWrapHardwareBuffer;
        if (i != 0 && i2 != 0) {
            HardwareBuffer hardwareBufferA = a(i, i2);
            if (hardwareBufferA != null) {
                try {
                    bitmapWrapHardwareBuffer = Bitmap.wrapHardwareBuffer(hardwareBufferA, ColorSpace.get(ColorSpace.Named.SRGB));
                } catch (Exception e) {
                    e.printStackTrace();
                    bitmapWrapHardwareBuffer = null;
                }
            } else {
                bitmapWrapHardwareBuffer = null;
            }
            if (bitmapWrapHardwareBuffer != null) {
                return Pair.create(bitmapWrapHardwareBuffer, hardwareBufferA);
            }
            return Pair.create(Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888), null);
        }
        return Pair.create(null, null);
    }

    private static HardwareBuffer a(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return null;
        }
        try {
            return HardwareBuffer.create(i, i2, 1, 1, 307L);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
