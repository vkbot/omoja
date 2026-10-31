package com.example.navistart.home;

import android.R$drawable;
import android.app.Notification$Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.hardware.display.DisplayManager;
import android.hardware.display.VirtualDisplay;
import android.os.Build$VERSION;
import android.os.IBinder;
import android.view.Surface;
import com.google.protobuf.q;
import e0.m;
import j1.i;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import org.apache.commons.net.util.a;
import s1.y;
import w0.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class LauncherWindowService extends Service {
    public static LauncherWindowService e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f909b = new HashMap();
    public final HashSet c = new HashSet();
    public final HashSet d = new HashSet();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final VirtualDisplay a(String str, int i9, int i10, Surface surface) {
        this.d.add(str);
        this.c.remove(str);
        HashMap map = this.f909b;
        VirtualDisplay virtualDisplay = (VirtualDisplay) map.get(str);
        if (virtualDisplay != null) {
            virtualDisplay.resize(i9, i10, 160);
            virtualDisplay.setSurface(surface);
            return virtualDisplay;
        }
        VirtualDisplay virtualDisplayCreateVirtualDisplay = ((DisplayManager) getSystemService(DisplayManager.class)).createVirtualDisplay(q.l(new byte[]{113, -120, 73, -12, -4, -65, -34, 29, 84, -68, 48}, new byte[]{59, -53, 29, -39, -117, -42, -80, 121}, new StringBuilder(), str), i9, i10, 160, surface, 11);
        if (virtualDisplayCreateVirtualDisplay != null) {
            map.put(str, virtualDisplayCreateVirtualDisplay);
            return virtualDisplayCreateVirtualDisplay;
        }
        i.l(m.h(new byte[]{-87, -84, -126, 65, -84, 114, 81, -18, -104, -88, -115, 91, -90, 38, 21, -28, -103, -67, ByteCompanionObject.MIN_VALUE, 78, -70}, new byte[]{-22, -51, -20, 47, -61, 6, 113, -115}));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return new y(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        e = this;
        NotificationManager notificationManager = (NotificationManager) getSystemService(NotificationManager.class);
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 26) {
            d.g();
            d.h(notificationManager, d.c(m.h(new byte[]{67, -122, -118, 75, -70, -109, 107, 58, 112, -112, -106, 75, -67, -108, 121, 59}, new byte[]{47, -25, -1, 37, -39, -5, 14, 72}), m.h(new byte[]{-34, -38, 98, 125, 72, -122, 52, 36, -78, -38, 103, 99, 11, -103, 56, 56, -10, -44, 96, 96}, new byte[]{-110, -69, 23, 19, 43, -18, 81, 86})));
        }
        startForeground(38766, (i9 >= 26 ? a.g(this, m.h(new byte[]{21, -70, -70, -77, -79, 81, -62, 65, 38, -84, -90, -77, -74, 86, -48, 64}, new byte[]{121, -37, -49, -35, -46, 57, -89, 51})) : new Notification$Builder(this)).setSmallIcon(R$drawable.ic_menu_view).setContentTitle(m.h(new byte[]{-17, 48, 102, 111, -62, -40, 15, 122, -58, 27, 87, Base64.padSymbol, -114, -50, 19, 122, -63, 28, 69, 60}, new byte[]{-91, 115, 50, 79, -82, -71, 122, 20})).setContentText(m.h(new byte[]{8, -14, -83, 92, -62, 57, -79, 104, 38, -11, -82, 92, -44, 34, -70, 44, 59, -25, -87, 29, -36, 62, -70, 104}, new byte[]{73, -126, -35, 124, -75, 80, -33, 12})).setContentIntent(PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) WebLauncherActivity.class), 201326592)).setOngoing(true).build());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onDestroy() {
        if (e == this) {
            e = null;
        }
        HashMap map = this.f909b;
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((VirtualDisplay) it.next()).release();
        }
        map.clear();
        super.onDestroy();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i9, int i10) {
        return 2;
    }
}
