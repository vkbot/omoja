package com.example.navistart;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.protobuf.q;
import e0.m;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import v1.d;
import y5.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class InstallResultReceiver extends BroadcastReceiver {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        int intExtra = intent.getIntExtra(m.h(new byte[]{91, 27, 94, 100, 18, -58, 91, 26, 89, 26, 84, 98, 24, -63, 75, 26, 74, 24, 20, 115, 5, -37, 77, 85, 20, 38, 110, 87, 41, -6, 108}, new byte[]{58, 117, 58, 22, 125, -81, 63, 52}), -1);
        boolean zEquals = m.h(new byte[]{-101, 20, -101, 110, 46, 42, -116, -122, -126}, new byte[]{-18, 122, -14, 0, 93, 94, -19, -22}).equals(intent.getStringExtra(m.h(new byte[]{-106, 84, -107, -60, 110, -1, -6, 15, -105}, new byte[]{-7, 36, -16, -74, 15, -117, -109, 96})));
        String stringExtra = intent.getStringExtra(m.h(new byte[]{-15, -23, -10, 4, -29, -68, ByteCompanionObject.MIN_VALUE, -90, -32, -27, -16}, new byte[]{-127, -120, -107, 111, -126, -37, -27, -24}));
        if (intExtra == -1) {
            Intent intent2 = (Intent) intent.getParcelableExtra(m.h(new byte[]{90, -43, -63, -18, -5, -33, -55, 9, 82, -43, -47, -7, -6, -62, -125, 66, 67, -49, -41, -3, -70, -1, -29, 115, 126, -11, -15}, new byte[]{59, -69, -91, -100, -108, -74, -83, 39}));
            if (intent2 != null) {
                intent2.addFlags(268435456);
                k.u(context, intent2, null);
            }
            if (!zEquals) {
                d.a().b().a(context.getResources().getString(2131952039));
                return;
            }
            Log.e(m.h(new byte[]{-62, -61, -114, 54, 74, -32, 15, -14, -37}, new byte[]{-105, -115, -57, 120, 25, -76, 78, -66}), m.h(new byte[]{69, -101, -2, 46, 82, -30, -29, 1, 96, -115, -11, 56, 27, -19, -25, 85, 124, -111, -2, 106, 93, -29, -10, 1}, new byte[]{21, -2, -112, 74, 59, -116, -124, 33}) + stringExtra);
            return;
        }
        if (intExtra == 0) {
            if (!zEquals) {
                d.a().b().a(context.getResources().getString(2131952035));
                d.a().b().f5508b.postValue(Boolean.TRUE);
                return;
            }
            Log.e(m.h(new byte[]{-10, 38, 12, 92, 65, 116, -123, 80, -17}, new byte[]{-93, 104, 69, 18, 18, 32, -60, 28}), m.h(new byte[]{56, -71, 39, 53, 47, 119, 37, -125, 13, -93, 54, 118}, new byte[]{107, -52, 68, 86, 74, 4, 86, -93}) + stringExtra);
            return;
        }
        String stringExtra2 = intent.getStringExtra(m.h(new byte[]{16, 0, -123, 114, -65, -56, -5, -98, 18, 1, -113, 116, -75, -49, -21, -98, 1, 3, -49, 101, -88, -43, -19, -47, 95, Base64.padSymbol, -75, 65, -124, -12, -52, -17, 60, 43, -78, 83, -111, -26, -38}, new byte[]{113, 110, -31, 0, -48, -95, -97, -80}));
        if (!zEquals) {
            d.a().b().a(context.getResources().getString(2131952036));
            d.a().b().f5508b.postValue(Boolean.TRUE);
            return;
        }
        String strH = m.h(new byte[]{121, -53, 112, 36, -7, 68, 52, 86, 96}, new byte[]{44, -123, 57, 106, -86, 16, 117, 26});
        StringBuilder sb = new StringBuilder();
        q.u(new byte[]{-53, 95, 32, -82, -98, 66, 121, Base64.padSymbol, -4, 13}, new byte[]{-114, 45, 82, -63, -20, 98, 31, 82}, sb, stringExtra);
        q.t(new byte[]{37, 80, 2, 34, -88, -90, 5, -58, 52}, new byte[]{9, 112, 113, 86, -55, -46, 112, -75}, sb, intExtra);
        sb.append(m.h(new byte[]{122, 13, 56, -16, -33, -61, -47, -104, 51, 16}, new byte[]{86, 45, 85, -107, -84, -80, -80, -1}));
        sb.append(stringExtra2);
        Log.e(strH, sb.toString());
    }
}
