package com.example.navistart;

import android.content.Context;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.util.Log;
import com.google.protobuf.AbstractC1178q;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p002a1.RunnableC0003a;
import p005a4.RunnableC0014g;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.C1440x1;
import p078h0.C1652b;
import p206u0.C3277a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class NLService extends NotificationListenerService {

    /* JADX INFO: renamed from: e */
    public static final ScheduledExecutorService f1482e = Executors.newSingleThreadScheduledExecutor();

    /* JADX INFO: renamed from: b */
    public Context f1483b;

    /* JADX INFO: renamed from: c */
    public String f1484c;

    /* JADX INFO: renamed from: d */
    public final String f1485d = AbstractC1387m.m2421h(new byte[]{68, -90, -27, -67, -18, 106, -125, -33, 111}, new byte[]{10, -22, -74, -40, -100, 28, -22, -68});

    /* JADX INFO: renamed from: a */
    public static Boolean m1504a() {
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        if (!AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
            return Boolean.FALSE;
        }
        C1652b.m2734a();
        return Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{-20}, new byte[]{-36, -57, -120, -8, 58, 13, 7, -23}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        Log.e(this.f1485d, AbstractC1387m.m2421h(new byte[]{-92, -65, 111, -10, -68, -51, 52, 74}, new byte[]{-53, -47, 44, -124, -39, -84, 64, 47}));
        this.f1483b = getApplicationContext();
        f1482e.schedule(new RunnableC0014g(16, this), 3000L, TimeUnit.MILLISECONDS);
    }

    @Override // android.service.notification.NotificationListenerService
    public final void onNotificationPosted(StatusBarNotification statusBarNotification) {
        f1482e.execute(new RunnableC0003a(26, this, statusBarNotification));
    }

    @Override // android.service.notification.NotificationListenerService
    public final void onNotificationRemoved(StatusBarNotification statusBarNotification) {
        Log.e(AbstractC1387m.m2421h(new byte[]{-72, -89, -17}, new byte[]{-11, -44, -120, -40, 76, -54, 117, 58}), AbstractC1387m.m2421h(new byte[]{-47, -114, 86, -47, -56, 106, -42, 11, -21, -120, 77, -42, -114, 81, -48, 7, -16, -105, 71, -36, -108, 35}, new byte[]{-97, -31, 34, -72, -82, 3, -75, 106}) + statusBarNotification.getPackageName());
        f1482e.execute(new RunnableC0003a(27, this, statusBarNotification.getPackageName()));
    }

    @Override // android.service.notification.NotificationListenerService
    public final void onListenerDisconnected() {
    }
}
