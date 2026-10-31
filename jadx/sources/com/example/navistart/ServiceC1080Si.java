package com.example.navistart;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import androidx.profileinstaller.RunnableC0707c;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;
import p047e0.C1405p2;
import p078h0.C1652b;

/* JADX INFO: renamed from: com.example.navistart.Si */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class ServiceC1080Si extends Service {

    /* JADX INFO: renamed from: d */
    public static boolean f1588d = true;

    /* JADX INFO: renamed from: b */
    public final ScheduledThreadPoolExecutor f1589b = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{49, 45}, new byte[]{98, 68, 89, -19, -10, 74, -93, -104}));

    /* JADX INFO: renamed from: c */
    public C1405p2 f1590c;

    /* JADX INFO: renamed from: a */
    public static void m1527a(Context context) {
        boolean zLoadBoolean = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-65, -10, 92, -123, 48, 1, 81, -43, -93, -32, 83, -123, 33, 2, 81, -28}, new byte[]{-52, -122, 53, -38, 81, 109, Base64.padSymbol, -118}), false);
        boolean zLoadBoolean2 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{34, -101, -45, 10, 115, 82, 45, 97, 8, -97, -64, 17, 124, 86, 7, 70, 12, -97, -62}, new byte[]{109, -19, -74, 120, 31, 51, 84, 50}), false);
        if ((zLoadBoolean || zLoadBoolean2) && f1588d) {
            context.startService(new Intent(context.getApplicationContext(), (Class<?>) ServiceC1080Si.class));
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(AbstractC1387m.m2421h(new byte[]{120, -97, ByteCompanionObject.MIN_VALUE, 1, -97, 108, 7, 65, 112, -97, -112, 22, -98, 113, 77, 14, 122, -123, -115, 28, -98, 43, 51, 39, 86, -65, -95, 44, -93, 81, 34, 59, 92}, new byte[]{25, -15, -28, 115, -16, 5, 99, 111}));
        C1405p2 c1405p2 = new C1405p2();
        this.f1590c = c1405p2;
        registerReceiver(c1405p2, intentFilter);
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.f1589b.execute(new RunnableC0707c(getApplicationContext(), 5));
        unregisterReceiver(this.f1590c);
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i10, int i11) {
        this.f1589b.execute(new RunnableC0707c(getApplicationContext(), 4));
        return 1;
    }
}
