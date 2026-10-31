package com.bumptech.glide.manager;

import androidx.lifecycle.Lifecycle;

/* JADX INFO: renamed from: com.bumptech.glide.manager.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1064j implements InterfaceC1063i {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Lifecycle f1159b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1065k f1160c;

    public C1064j(C1065k c1065k, Lifecycle lifecycle) {
        this.f1160c = c1065k;
        this.f1159b = lifecycle;
    }

    @Override // com.bumptech.glide.manager.InterfaceC1063i
    /* JADX INFO: renamed from: c */
    public final void mo1337c() {
        this.f1160c.f1161a.remove(this.f1159b);
    }

    @Override // com.bumptech.glide.manager.InterfaceC1063i
    /* JADX INFO: renamed from: e */
    public final void mo1338e() {
    }

    @Override // com.bumptech.glide.manager.InterfaceC1063i
    public final void onStart() {
    }
}
