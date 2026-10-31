package com.bumptech.glide.manager;

import android.content.Context;
import android.net.ConnectivityManager;
import com.bumptech.glide.C1077o;
import java.util.HashSet;
import p025c0.C0939h;

/* JADX INFO: renamed from: com.bumptech.glide.manager.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1057c implements InterfaceC1056b {

    /* JADX INFO: renamed from: b */
    public final Context f1151b;

    /* JADX INFO: renamed from: c */
    public final C1077o f1152c;

    public C1057c(Context context, C1077o c1077o) {
        this.f1151b = context.getApplicationContext();
        this.f1152c = c1077o;
    }

    @Override // com.bumptech.glide.manager.InterfaceC1063i
    /* JADX INFO: renamed from: e */
    public final void mo1338e() {
        C1074t c1074tM1356c = C1074t.m1356c(this.f1151b);
        C1077o c1077o = this.f1152c;
        synchronized (c1074tM1356c) {
            ((HashSet) c1074tM1356c.f1185e).remove(c1077o);
            if (c1074tM1356c.f1183c && ((HashSet) c1074tM1356c.f1185e).isEmpty()) {
                C1073s c1073s = (C1073s) c1074tM1356c.f1184d;
                ((ConnectivityManager) ((C0939h) c1073s.f1179d).get()).unregisterNetworkCallback((C1072r) c1073s.f1180e);
                c1074tM1356c.f1183c = false;
            }
        }
    }

    @Override // com.bumptech.glide.manager.InterfaceC1063i
    public final void onStart() {
        C1074t c1074tM1356c = C1074t.m1356c(this.f1151b);
        C1077o c1077o = this.f1152c;
        synchronized (c1074tM1356c) {
            ((HashSet) c1074tM1356c.f1185e).add(c1077o);
            c1074tM1356c.m1362g();
        }
    }

    @Override // com.bumptech.glide.manager.InterfaceC1063i
    /* JADX INFO: renamed from: c */
    public final void mo1337c() {
    }
}
