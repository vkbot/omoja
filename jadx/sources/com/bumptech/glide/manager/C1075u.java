package com.bumptech.glide.manager;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import p025c0.AbstractC0947p;
import p254z.InterfaceC3690d;

/* JADX INFO: renamed from: com.bumptech.glide.manager.u */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1075u implements InterfaceC1063i {

    /* JADX INFO: renamed from: b */
    public final Set f1186b = Collections.newSetFromMap(new WeakHashMap());

    @Override // com.bumptech.glide.manager.InterfaceC1063i
    /* JADX INFO: renamed from: c */
    public final void mo1337c() {
        ArrayList arrayListM1088e = AbstractC0947p.m1088e(this.f1186b);
        int size = arrayListM1088e.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayListM1088e.get(i10);
            i10++;
            ((InterfaceC3690d) obj).mo1337c();
        }
    }

    @Override // com.bumptech.glide.manager.InterfaceC1063i
    /* JADX INFO: renamed from: e */
    public final void mo1338e() {
        ArrayList arrayListM1088e = AbstractC0947p.m1088e(this.f1186b);
        int size = arrayListM1088e.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayListM1088e.get(i10);
            i10++;
            ((InterfaceC3690d) obj).mo1338e();
        }
    }

    @Override // com.bumptech.glide.manager.InterfaceC1063i
    public final void onStart() {
        ArrayList arrayListM1088e = AbstractC0947p.m1088e(this.f1186b);
        int size = arrayListM1088e.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayListM1088e.get(i10);
            i10++;
            ((InterfaceC3690d) obj).onStart();
        }
    }
}
