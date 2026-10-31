package com.bumptech.glide.load.data;

import java.io.InputStream;
import p108k.C2019g;

/* JADX INFO: renamed from: com.bumptech.glide.load.data.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1052m implements InterfaceC1045f {

    /* JADX INFO: renamed from: a */
    public final C2019g f1145a;

    public C1052m(C2019g c2019g) {
        this.f1145a = c2019g;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1045f
    /* JADX INFO: renamed from: a */
    public final Class mo1325a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1045f
    /* JADX INFO: renamed from: b */
    public final InterfaceC1046g mo1326b(Object obj) {
        return new C1048i((InputStream) obj, this.f1145a);
    }
}
