package com.example.navistart;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import androidx.profileinstaller.c;
import e0.m;
import e0.p2;
import e0.w;
import h0.b;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Si extends Service {
    public static boolean d = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f810b = w.c(-1, m.h(new byte[]{49, 45}, new byte[]{98, 68, 89, -19, -10, 74, -93, -104}));
    public p2 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(Context context) {
        boolean zLoadBoolean = b.o().loadBoolean(m.h(new byte[]{-65, -10, 92, -123, 48, 1, 81, -43, -93, -32, 83, -123, 33, 2, 81, -28}, new byte[]{-52, -122, 53, -38, 81, 109, Base64.padSymbol, -118}), false);
        boolean zLoadBoolean2 = b.o().loadBoolean(m.h(new byte[]{34, -101, -45, 10, 115, 82, 45, 97, 8, -97, -64, 17, 124, 86, 7, 70, 12, -97, -62}, new byte[]{109, -19, -74, 120, 31, 51, 84, 50}), false);
        if ((zLoadBoolean || zLoadBoolean2) && d) {
            context.startService(new Intent(context.getApplicationContext(), (Class<?>) Si.class));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(m.h(new byte[]{120, -97, ByteCompanionObject.MIN_VALUE, 1, -97, 108, 7, 65, 112, -97, -112, 22, -98, 113, 77, 14, 122, -123, -115, 28, -98, 43, 51, 39, 86, -65, -95, 44, -93, 81, 34, 59, 92}, new byte[]{25, -15, -28, 115, -16, 5, 99, 111}));
        p2 p2Var = new p2();
        this.c = p2Var;
        registerReceiver(p2Var, intentFilter);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.f810b.execute(new c(getApplicationContext(), 5));
        unregisterReceiver(this.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i9, int i10) {
        this.f810b.execute(new c(getApplicationContext(), 4));
        return 1;
    }
}
