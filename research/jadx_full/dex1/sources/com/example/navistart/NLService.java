package com.example.navistart;

import a4.g;
import android.content.Context;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.util.Log;
import com.google.protobuf.q;
import e0.m;
import e0.p3;
import e0.x1;
import h0.b;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import u0.a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NLService extends NotificationListenerService {
    public static final ScheduledExecutorService e = Executors.newSingleThreadScheduledExecutor();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f792b;
    public String c;
    public final String d = m.h(new byte[]{68, -90, -27, -67, -18, 106, -125, -33, 111}, new byte[]{10, -22, -74, -40, -100, 28, -22, -68});

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean a() {
        StringBuilder sb = new StringBuilder();
        a aVarO = b.o();
        byte[] bArr = m.f1896j;
        String[] strArr = p3.f1924a;
        q.s(bArr, aVarO, "", sb);
        q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = q.g(sb, x1.f1989q);
        a aVarO2 = b.o();
        byte[] bArr2 = m.f1892f;
        if (!q.w(bArr2, aVarO2, "", strG)) {
            return Boolean.FALSE;
        }
        b.a();
        return Boolean.valueOf(q.d(Long.MAX_VALUE, b.a().j()) < Long.parseLong(new String(q.x(new byte[]{-20}, new byte[]{-36, -57, -120, -8, 58, 13, 7, -23}, b.o(), q.h(m.f1893g, b.o(), new String(bArr2)), 0))));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        Log.e(this.d, m.h(new byte[]{-92, -65, 111, -10, -68, -51, 52, 74}, new byte[]{-53, -47, 44, -124, -39, -84, 64, 47}));
        this.f792b = getApplicationContext();
        e.schedule(new g(16, this), 3000L, TimeUnit.MILLISECONDS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.service.notification.NotificationListenerService
    public final void onNotificationPosted(StatusBarNotification statusBarNotification) {
        e.execute(new a1.a(26, this, statusBarNotification));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.service.notification.NotificationListenerService
    public final void onNotificationRemoved(StatusBarNotification statusBarNotification) {
        Log.e(m.h(new byte[]{-72, -89, -17}, new byte[]{-11, -44, -120, -40, 76, -54, 117, 58}), m.h(new byte[]{-47, -114, 86, -47, -56, 106, -42, 11, -21, -120, 77, -42, -114, 81, -48, 7, -16, -105, 71, -36, -108, 35}, new byte[]{-97, -31, 34, -72, -82, 3, -75, 106}) + statusBarNotification.getPackageName());
        e.execute(new a1.a(27, this, statusBarNotification.getPackageName()));
    }

    @Override // android.service.notification.NotificationListenerService
    public final void onListenerDisconnected() {
    }
}
