package com.mega.nexus.os;

import android.content.Context;
import android.hardware.display.VirtualDisplay;
import android.media.projection.IMediaProjection;
import android.media.projection.IMediaProjectionManager;
import android.media.projection.MediaProjection;
import android.os.Handler;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.view.Surface;

/* JADX INFO: loaded from: classes2.dex */
public class MegaMediaProjectionManager {
    public static MediaProjection getMediaProjection(Context context) {
        try {
            String packageName = context.getPackageName();
            IMediaProjection iMediaProjectionCreateProjection = IMediaProjectionManager.Stub.asInterface(ServiceManager.getService("media_projection")).createProjection(context.getApplicationInfo().uid, packageName, 0, false);
            if (iMediaProjectionCreateProjection == null) {
                return null;
            }
            iMediaProjectionCreateProjection.setSkipFgServiceCheck(true);
            return new MediaProjection(context, IMediaProjection.Stub.asInterface(iMediaProjectionCreateProjection.asBinder()));
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static VirtualDisplay createVirtualDisplay(Context context, MediaProjection mediaProjection, int i, String str, int i2, int i3, int i4, int i5, Surface surface, VirtualDisplay.Callback callback, Handler handler) {
        return MegaMediaProjectionAdapter.createVirtualDisplay(context, mediaProjection, i, str, i2, i3, i4, i5, surface, callback, handler);
    }
}
