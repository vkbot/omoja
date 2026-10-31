package com.example.navistart.home;

import android.R;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.hardware.display.DisplayManager;
import android.hardware.display.VirtualDisplay;
import android.os.Build;
import android.os.IBinder;
import android.view.Surface;
import com.google.protobuf.AbstractC1178q;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.apache.commons.net.util.AbstractC2937a;
import p047e0.AbstractC1387m;
import p099j1.C1929i;
import p190s1.BinderC3181y;
import p225w0.AbstractC3449d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class LauncherWindowService extends Service {

    /* JADX INFO: renamed from: e */
    public static LauncherWindowService f1735e;

    /* JADX INFO: renamed from: b */
    public final HashMap f1736b = new HashMap();

    /* JADX INFO: renamed from: c */
    public final HashSet f1737c = new HashSet();

    /* JADX INFO: renamed from: d */
    public final HashSet f1738d = new HashSet();

    /* JADX INFO: renamed from: a */
    public final VirtualDisplay m1642a(String str, int i10, int i11, Surface surface) {
        this.f1738d.add(str);
        this.f1737c.remove(str);
        HashMap map = this.f1736b;
        VirtualDisplay virtualDisplay = (VirtualDisplay) map.get(str);
        if (virtualDisplay != null) {
            virtualDisplay.resize(i10, i11, 160);
            virtualDisplay.setSurface(surface);
            return virtualDisplay;
        }
        VirtualDisplay virtualDisplayCreateVirtualDisplay = ((DisplayManager) getSystemService(DisplayManager.class)).createVirtualDisplay(AbstractC1178q.m2078l(new byte[]{113, -120, 73, -12, -4, -65, -34, 29, 84, -68, 48}, new byte[]{59, -53, 29, -39, -117, -42, -80, 121}, new StringBuilder(), str), i10, i11, 160, surface, 11);
        if (virtualDisplayCreateVirtualDisplay != null) {
            map.put(str, virtualDisplayCreateVirtualDisplay);
            return virtualDisplayCreateVirtualDisplay;
        }
        C1929i.m3030l(AbstractC1387m.m2421h(new byte[]{-87, -84, -126, 65, -84, 114, 81, -18, -104, -88, -115, 91, -90, 38, 21, -28, -103, -67, ByteCompanionObject.MIN_VALUE, 78, -70}, new byte[]{-22, -51, -20, 47, -61, 6, 113, -115}));
        return null;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return new BinderC3181y(this);
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        f1735e = this;
        NotificationManager notificationManager = (NotificationManager) getSystemService(NotificationManager.class);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            AbstractC3449d.m5381g();
            notificationManager.createNotificationChannel(AbstractC3449d.m5377c(AbstractC1387m.m2421h(new byte[]{67, -122, -118, 75, -70, -109, 107, 58, 112, -112, -106, 75, -67, -108, 121, 59}, new byte[]{47, -25, -1, 37, -39, -5, 14, 72}), AbstractC1387m.m2421h(new byte[]{-34, -38, 98, 125, 72, -122, 52, 36, -78, -38, 103, 99, 11, -103, 56, 56, -10, -44, 96, 96}, new byte[]{-110, -69, 23, 19, 43, -18, 81, 86})));
        }
        startForeground(38766, (i10 >= 26 ? AbstractC2937a.m4683g(this, AbstractC1387m.m2421h(new byte[]{21, -70, -70, -77, -79, 81, -62, 65, 38, -84, -90, -77, -74, 86, -48, 64}, new byte[]{121, -37, -49, -35, -46, 57, -89, 51})) : new Notification.Builder(this)).setSmallIcon(R.drawable.ic_menu_view).setContentTitle(AbstractC1387m.m2421h(new byte[]{-17, 48, 102, 111, -62, -40, 15, 122, -58, 27, 87, Base64.padSymbol, -114, -50, 19, 122, -63, 28, 69, 60}, new byte[]{-91, 115, 50, 79, -82, -71, 122, 20})).setContentText(AbstractC1387m.m2421h(new byte[]{8, -14, -83, 92, -62, 57, -79, 104, 38, -11, -82, 92, -44, 34, -70, 44, 59, -25, -87, 29, -36, 62, -70, 104}, new byte[]{73, -126, -35, 124, -75, 80, -33, 12})).setContentIntent(PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) WebLauncherActivity.class), 201326592)).setOngoing(true).build());
    }

    @Override // android.app.Service
    public final void onDestroy() {
        if (f1735e == this) {
            f1735e = null;
        }
        HashMap map = this.f1736b;
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((VirtualDisplay) it.next()).release();
        }
        map.clear();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i10, int i11) {
        return 2;
    }
}
