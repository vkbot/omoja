package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import p003a2.EnumC0005b;
import p039d2.C1254j;
import p039d2.C1263s;
import p047e0.RunnableC1431v0;
import p100j2.C1953i;
import p100j2.RunnableC1948d;
import p142n0.C2467b;
import p143n2.AbstractC2473a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int f1997a = 0;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int iIntValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i10 = intent.getExtras().getInt("attemptNumber");
        C1263s.m2260b(context);
        if (queryParameter == null) {
            C2467b.m3828n("Null backendName");
            return;
        }
        EnumC0005b enumC0005bM3840b = AbstractC2473a.m3840b(iIntValue);
        byte[] bArrDecode = queryParameter2 != null ? Base64.decode(queryParameter2, 0) : null;
        C1953i c1953i = C1263s.m2259a().f2982a;
        c1953i.f5331e.execute(new RunnableC1948d(c1953i, new C1254j(queryParameter, bArrDecode, enumC0005bM3840b), i10, new RunnableC1431v0(17), 0));
    }
}
