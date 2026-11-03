package org.libpag;

import android.graphics.SurfaceTexture;
import android.view.Surface;

/* JADX INFO: loaded from: classes2.dex */
class VideoSurface implements SurfaceTexture.OnFrameAvailableListener {
    long nativeContext = 0;

    static {
        org.extra.tools.a.b("pag");
        nativeInit();
    }

    private VideoSurface(int i, int i2) {
        nativeSetup(i, i2);
    }

    static VideoSurface a(int i, int i2) {
        VideoSurface videoSurface = new VideoSurface(i, i2);
        if (videoSurface.nativeContext == 0) {
            return null;
        }
        return videoSurface;
    }

    private native void nativeFinalize();

    private static native void nativeInit();

    private native void nativeRelease();

    private native void nativeSetup(int i, int i2);

    private native void notifyFrameAvailable();

    protected void finalize() {
        nativeFinalize();
    }

    native Surface getInputSurface();

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        notifyFrameAvailable();
    }

    void a() {
        nativeRelease();
    }
}
