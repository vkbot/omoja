package com.example.navistart.HideManager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.example.navistart.SystemMessageReceiver;
import e0.m;
import kotlin.jvm.internal.ByteCompanionObject;
import o7.i4;
import p0.e;
import p0.j;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class UserAppsHideCommandReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f672a = m.h(new byte[]{-29, 113, 2, -75, 97, 63, 125, -115, -16, 114, 10, -75, 106, 38, 106, -119, -13, 106, 14, -23, 112, 105, 125, -125, -12, 119, 0, -11, 42, 18, 79, -91, -46, 65, 46, -53, 84, 20, 67, -88, -55, 90, 42, -60, 75, 23, 89, -82}, new byte[]{ByteCompanionObject.MIN_VALUE, 30, 111, -101, 4, 71, 28, -32});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f673b = m.h(new byte[]{-39, 32, 24, -92, 35, 120, 10, 37, -60, 58, 25, -77, 35, 108, 24}, new byte[]{-116, 83, 125, -42, 98, 8, 122, 86});

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null || !f672a.equals(intent.getAction())) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        i4 i4VarF = new e(applicationContext).f(null);
        j.b();
        Log.i(f673b, m.h(new byte[]{-14, 60, -94, 106, ByteCompanionObject.MIN_VALUE, 79, 109, -59, -8, 108, -75, 97, -47, 87, 103, -46, -23, 41, -93, 36, -45, 87, 97, -62, -8, 63, -76, 57}, new byte[]{-99, 76, -57, 4, -96, 34, 2, -95}) + i4VarF.f4283b + m.h(new byte[]{-106, 85, 14, -28, 101, 10}, new byte[]{-74, 51, 111, -115, 9, 55, -21, -103}) + i4VarF.c);
        SystemMessageReceiver.a(applicationContext);
    }
}
