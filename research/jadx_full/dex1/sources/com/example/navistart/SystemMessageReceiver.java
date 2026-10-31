package com.example.navistart;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build$VERSION;
import android.util.Log;
import c5.h;
import e0.d0;
import e0.j2;
import e0.m;
import e0.w;
import h0.b;
import java.util.HashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.io.encoding.Base64;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SystemMessageReceiver extends BroadcastReceiver {
    public static final /* synthetic */ int e = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f844b;
    public Boolean c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f843a = w.c(-1, m.h(new byte[]{103, 46, 42, 125, 18, -37, 19, -6, 71, 36, 56, 110, 18, -28, 59, -4, 81, 62, 47, 108, 5}, new byte[]{52, 87, 89, 9, 119, -74, 94, -97}));
    public final com.bumptech.glide.m d = new com.bumptech.glide.m(1, this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(Context context) {
        Intent intent = new Intent(context.getApplicationContext(), (Class<?>) boot.class);
        intent.putExtra(m.h(new byte[]{-121}, new byte[]{-29, -78, 38, -20, -67, 106, 112, 103}), -1);
        if (Build$VERSION.SDK_INT >= 26) {
            h.r(context.getApplicationContext(), intent);
        } else {
            context.getApplicationContext().startService(intent);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f844b = context;
        this.c = Boolean.TRUE;
        new HashMap();
        d0.d(context);
        b.v(m.h(new byte[]{97, -45, -99, -74, 94, 28, 52, -34, 65, -39, -113, -91, 94, 35, 28, -40, 87, -61, -104, -89, 73, 81, 84, -101, 97, -34, -113, -80, 79}, new byte[]{50, -86, -18, -62, 59, 113, 121, -69}));
        String action = intent.getAction();
        b.v(m.h(new byte[]{98, -81, 102, 1, 101, 21, 100, 111, 66, -91, 116, 18, 101, 42, 76, 105, 84, -65, 99, 16, 114, 88, 4, 42}, new byte[]{49, -42, 21, 117, 0, 120, 41, 10}) + action.toString());
        w.c(-1, m.h(new byte[]{43, 74, 97, -60, -84, 86, -75, -124, 11, 64, 115, -41, -84, 105, -99, -126, 29, 90, 100, -43, -69}, new byte[]{120, 51, 18, -80, -55, 59, -8, -31})).schedule(new j2(2, this, context), 10000L, TimeUnit.MILLISECONDS);
        Log.e(m.h(new byte[]{5, -79, 41}, new byte[]{86, -4, 123, 71, -47, -3, 82, 75}), action.toString());
        if (action.equals(m.h(new byte[]{67, -60, 66, -102, 49, 28, -105, -14, 75, -60, 82, -115, 48, 1, -35, -67, 65, -34, 79, -121, 48, 91, -79, -109, 109, -2, 121, -85, 17, 56, -93, -112, 103, -2, 99, -84}, new byte[]{34, -86, 38, -24, 94, 117, -13, -36}))) {
            Log.e(m.h(new byte[]{94, 115, -92, 6, -79, 60, -29, 71, 126, 121, -74, 21, -79, 3, -53, 65, 104, 99, -95, 23, -90}, new byte[]{13, 10, -41, 114, -44, 81, -82, 34}), m.h(new byte[]{121, 114, 41, 30, -114, 120, 118, 126, 74, 121, 46, 9, -120, 103, 119, 112, 66, 121, 62, 30, -119, 122, Base64.padSymbol, 63, 72, 99, 35, 20, -119, 32, 81, 17, 100, 67, 21, 56, -88, 67, 67, 18, 110, 67, 15, 63}, new byte[]{43, 23, 74, 123, -25, 14, 19, 94}));
            if (boot.b(this.f844b) && this.c.booleanValue()) {
                throw null;
            }
            a(this.f844b);
        }
        d0.d(context);
    }
}
