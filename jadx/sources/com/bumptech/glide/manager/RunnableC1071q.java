package com.bumptech.glide.manager;

import p025c0.AbstractC0947p;
import p091i4.C1748f;
import p157o7.C2690p0;
import p157o7.RunnableC2624e0;

/* JADX INFO: renamed from: com.bumptech.glide.manager.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC1071q implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f1171b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ boolean f1172c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f1173d;

    public /* synthetic */ RunnableC1071q(Object obj, boolean z9, int i10) {
        this.f1171b = i10;
        this.f1173d = obj;
        this.f1172c = z9;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1171b) {
            case 0:
                C1072r c1072r = (C1072r) this.f1173d;
                AbstractC0947p.m1084a();
                C1073s c1073s = (C1073s) c1072r.f1175b;
                boolean z9 = c1073s.f1177b;
                boolean z10 = this.f1172c;
                c1073s.f1177b = z10;
                if (z9 != z10) {
                    ((C1070p) c1073s.f1178c).mo1336a(z10);
                }
                break;
            default:
                C2690p0 c2690p0 = (C2690p0) ((RunnableC2624e0) this.f1173d).f7362c;
                if (this.f1172c) {
                    c2690p0.f7675l = true;
                    if (c2690p0.f7672i > 0) {
                        C1748f c1748f = c2690p0.f7674k;
                        c1748f.f4562a = false;
                        c1748f.m2873b();
                    }
                }
                c2690p0.f7680q = false;
                break;
        }
    }
}
