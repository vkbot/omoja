package org.libpag;

import android.graphics.Bitmap;
import android.hardware.HardwareBuffer;
import android.util.Pair;

/* JADX INFO: loaded from: classes2.dex */
public class PAGDecoder {
    private long nativeContext;

    static {
        org.extra.tools.a.b("pag");
        nativeInit();
    }

    private PAGDecoder(long j) {
        this.nativeContext = j;
    }

    public static PAGDecoder Make(PAGComposition pAGComposition) {
        return Make(pAGComposition, pAGComposition.frameRate(), 1.0f);
    }

    private static native long MakeFrom(PAGComposition pAGComposition, float f, float f2);

    private native void nativeFinalize();

    private static native void nativeInit();

    private native void nativeRelease();

    public native boolean checkFrameChanged(int i);

    public native boolean copyFrameTo(Bitmap bitmap, int i);

    protected void finalize() {
        nativeFinalize();
    }

    public Bitmap frameAtIndex(int i) {
        boolean zCopyFrameTo;
        Pair pairA = a.a(width(), height(), false);
        Object obj = pairA.first;
        if (obj == null) {
            return null;
        }
        Object obj2 = pairA.second;
        if (obj2 != null) {
            zCopyFrameTo = readFrame(i, (HardwareBuffer) obj2);
            ((HardwareBuffer) pairA.second).close();
        } else {
            zCopyFrameTo = copyFrameTo((Bitmap) obj, i);
        }
        if (zCopyFrameTo) {
            return (Bitmap) pairA.first;
        }
        return null;
    }

    public native float frameRate();

    public native int height();

    public native int numFrames();

    public native boolean readFrame(int i, HardwareBuffer hardwareBuffer);

    public void release() {
        nativeRelease();
    }

    public native int width();

    public static PAGDecoder Make(PAGComposition pAGComposition, float f, float f2) {
        long jMakeFrom = MakeFrom(pAGComposition, f, f2);
        if (jMakeFrom == 0) {
            return null;
        }
        return new PAGDecoder(jMakeFrom);
    }
}
