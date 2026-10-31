package com.bumptech.glide.manager;

import java.util.ArrayList;
import java.util.HashSet;
import p025c0.AbstractC0947p;

/* JADX INFO: renamed from: com.bumptech.glide.manager.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1070p implements InterfaceC1055a {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C1074t f1170a;

    public C1070p(C1074t c1074t) {
        this.f1170a = c1074t;
    }

    @Override // com.bumptech.glide.manager.InterfaceC1055a
    /* JADX INFO: renamed from: a */
    public final void mo1336a(boolean z9) {
        ArrayList arrayList;
        AbstractC0947p.m1084a();
        synchronized (this.f1170a) {
            arrayList = new ArrayList((HashSet) this.f1170a.f1185e);
        }
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            ((InterfaceC1055a) obj).mo1336a(z9);
        }
    }
}
